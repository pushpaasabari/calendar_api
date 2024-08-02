<script src='https://fullcalendar.io/js/fullcalendar-3.1.0/lib/moment.min.js'></script>
<script src='https://fullcalendar.io/js/fullcalendar-3.1.0/lib/jquery.min.js'></script>
<script src='https://fullcalendar.io/js/fullcalendar-3.1.0/lib/jquery-ui.min.js'></script>
<script src='https://fullcalendar.io/js/fullcalendar-3.1.0/fullcalendar.min.js'></script>

{{-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
{{-- <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.js'></script> --}}
{{-- <script>
    $(document).ready(function() {
        $('#example').DataTable();
        paging: true,   // Allow changing the number of records per page
                pageLength: 10,      // Set default number of records per page
                language: {
                    paginate: {
                        previous: "<", // or '←'
                        next: ">"      // or '→'
                    }
                }
    });
</script> --}}

{{-- <script>
    $(document).ready(function() {
            $('#calendar').fullCalendar({
                events: function(start, end, timezone, callback) {
                    $.ajax({
                        url: '/ajax_calendar',
                        dataType: 'json',
                        success: function(data) {
                            console.log(data);
                            // Convert the data to the format FullCalendar expects
                            var events = data.map(function(event) {
                                return {
                                    id: event.id,
                                    title: event.title,
                                    start: event.start,
                                    // end: event.end // Uncomment if you have an end date
                                };
                            });
                            callback(events);
                        }
                    });
                }
            });
        });
</script> --}}

{{-- <script>
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth',
            editable: true,
            events: '/events', // Fetch events from the Laravel route
            dateClick: function(info) {
                var title = prompt('Enter Event Title:');
                var description = prompt('Enter Event Description:');
                if (title) {
                    var eventData = {
                        title: title,
                        start: info.dateStr + "T00:00:00",
                        description: description
                    };

                    $.ajax({
                        url: '/events',
                        method: 'POST',
                        data: eventData,
                        success: function(data) {
                            calendar.addEvent(data);
                            alert('Event added successfully');
                        },
                        error: function(data) {
                            alert('There was an error while adding the event');
                        }
                    });
                }
            },
            eventClick: function(info) {
                alert('Event: ' + info.event.title);
            }
        });

        calendar.render();
    });
</script> --}}

<script>
    $(document).ready(function() {
    // page is now ready, initialize the calendar...
    $('#calendar').fullCalendar({
        // put your options and callbacks here
                events: function(start, end, timezone, callback) {
                $.ajax({
                    url: '/ajax_calendar',
                    dataType: 'json',
                    success: function(data) {
                        // console.log(data);
                        var events = data.map(function(holiday) {
                            return {
                                title: holiday.name + '\n' +holiday.type,
                                start: holiday.date,
                                // end: holiday.date,
                                // description: holiday.description
                                // description: holiday.description,
                                // url: holiday.canonical_url
                            };
                        });
                        callback(events);
                    }
                });
            },
        left:   'Calendar',
        center: '',
        right:  'today prev,next'
    })
});
</script>