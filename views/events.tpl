<!DOCTYPE html>
<html>
  <head>
    <title>勉強会の一覧を表示</title>
    <meta charset="UTF-8">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <style>
    .button, .input {
      border: solid 1px #aaa;
      background-color: white;
    }
    .button:hover {
      background-color: #eee; 
    }

    .form {
      margin: 4px 8px;
    }

    .events {
      margin: 32px 0;  
    }

    .header {
      background-color: #eee;    
      margin: 0;
      padding: 12px;
      box-shadow: 0 2px 1px 0 #bbb;
    }
    .header__title {
      margin: 0;
      font-size: 18px;  
      color: #555;
    }
    .container {
      margin-top: 12px;
    }

    .events ul {
      padding: 0;
      list-style-type: none;
    }

    .event {
      line-height: 24px;  
    }

    .content-head .title {
      display: inline;
      font-size: 24px;
      float: left;
      margin: 0;
      margin-right: 12px;
    }
    
    .content-head {
      margin: 24px 0;
      padding-bottom: 12px;
      border-bottom: solid 1px #eee;
    }
    </style>
  </head>
  <body>
    <header class="header">
      <h1 class="header__title">akashi.py</h1>
    </header>

    <div class="container">
      <div class="content-head">
        <h1 class="title">勉強会の一覧を表示</h1>
        <form class="form" action="/events" method="GET">
          <input class="input" type="text" name="keyword" value="{{keyword}}" placeholder="検索キーワード"></input>
          <input class="button" type="submit"></input>
        </form>
      </div>
      <div class="events">
      <ul>
        % for event in events:
        <li class="event"><a href="http://connpass.com/event/{{event['event_id']}}">{{event['title']}}</a></li>
        % end
      </ul>
      </div>
    </div>
  </body>
</html>
