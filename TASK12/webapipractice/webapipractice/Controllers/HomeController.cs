using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using webapipractice.Models;
using System;
namespace webapipractice.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class HomeController : ControllerBase
    {
        private readonly TodoContext _Context;
        public HomeController(TodoContext context)
        {
            _Context = context;
        }


        [HttpGet]
        public async Task<ActionResult<IEnumerable<TodoItems>>> GetItem()
        {
            if (_Context.TodoItems == null)
            {
                return NotFound();
            }
            return await _Context.TodoItems.ToListAsync();
           
        }

        [HttpGet("{id}")]
        public async Task<ActionResult<TodoItems>> GetItemById(Guid id)
        {
            var todo = await _Context.TodoItems.Where(item => item.Id == id).SingleOrDefaultAsync();
            if (todo == null)
            {
                return NotFound();
            }
            return Ok(todo);
        }

        [HttpPost]
        public async Task<ActionResult<TodoItems>> CreateItem(TodoItems item)
        {
            if (_Context.TodoItems == null)
            {
                return NotFound();
            }
            item.Id = Guid.NewGuid();
            _Context.TodoItems.Add(item);
            await _Context.SaveChangesAsync();
            return CreatedAtAction(nameof(GetItem), new { id = item.Id }, item);

        }

        [HttpPut("{id}")]
        public async Task<ActionResult<TodoItems>> UpdateById(Guid id, TodoItems item)
        {
            if (id != item.Id)
            {
                return BadRequest();
            }

            var existingItem = await _Context.TodoItems.FindAsync(id);
            if (existingItem == null)
            {
                return BadRequest();
            }
            existingItem.Name=item.Name;
            existingItem.IsComplete=item.IsComplete;
            _Context.TodoItems.Update(existingItem);
            await _Context.SaveChangesAsync();

            return Ok(existingItem);


        }

        [HttpDelete("{id}")]
        public async Task<ActionResult<TodoItems>> DeleteById(Guid id)
        {
            var item=await _Context.TodoItems.FindAsync(id);
            if (item == null)
            {
                return NotFound();
            }

            _Context.TodoItems.Remove(item);
           await _Context.SaveChangesAsync();
            return Ok(item);
        }


    }
}
