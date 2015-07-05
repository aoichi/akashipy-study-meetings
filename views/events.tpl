<!DOCTYPE html>
<html>
<head>
    <title>勉強会の一覧を表示</title>
    <meta charset="UTF-8">
</head>
<body>
    <h1>勉強会の一覧を表示</h1>
    <form action="/events" method="GET">
      <input type="text" name="keyword"></input>
      <input type="submit"></input>
    </form>
    
    <ul>
    % for event in events:
      <li><a href="http://connpass.com/event/{{event['event_id']}}">{{event['title']}}</a></li>
    % end
    </ul>
</body>
</html>
