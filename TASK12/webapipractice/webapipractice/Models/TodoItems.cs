namespace webapipractice.Models
{
    public class TodoItems
    {
        public Guid Id { get; set; }
        public string? Name { get; set; }
        public bool IsComplete { get; set; }
    }
}