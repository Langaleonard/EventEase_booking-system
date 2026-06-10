using System.ComponentModel.DataAnnotations;

namespace EventEase_booking_system.Models
{
    public class EventType
    {
        public int EventTypeId { get; set; }

        [Required]
        public string Name { get; set; } = string.Empty;

        public ICollection<Event>? Events { get; set; }
    }
}