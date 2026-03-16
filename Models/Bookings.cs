using System.ComponentModel.DataAnnotations;

namespace EventEase_booking_system.Models
{
    public class Booking
    {
        public int BookingId { get; set; }

        [Required]
        public int EventId { get; set; }
        public Event? Event { get; set; }

        [Required]
        public int VenueId { get; set; }
        public Venue? Venue { get; set; }

        [DataType(DataType.Date)]
        public DateTime BookingDate { get; set; }
    }
}