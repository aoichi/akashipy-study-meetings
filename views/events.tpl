<!DOCTYPE html>
<html>
<head>
    <title>勉強会の一覧を表示</title>
    <meta charset="UTF-8">
</head>
<body>
    <h1>勉強会の一覧を表示</h1>
    <ul>
    % for event in events:
      <li>{{event['title']}}</li>
    % end
    </ul>
</body>
</html>
