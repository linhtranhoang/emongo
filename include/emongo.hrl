-record(pool, {id, host, port, database, size=1, conn_pids=[], req_id=1}).
-record(header, {message_length, request_id, response_to, op_code}).
-record(response, {header, response_flag, cursor_id, starting_from, number_returned, documents}).
-record(emo_query, {opts=[], num_to_skip=0, num_to_return=0, q={obj, []}, field_selector=[]}).

-define(TIMEOUT, 5000).

-define(OP_REPLY, 1).
-define(OP_MSG, 1000).
-define(OP_UPDATE, 2001).
-define(OP_INSERT, 2002).
-define(OP_QUERY, 2004).
-define(OP_GET_MORE, 2005).
-define(OP_DELETE, 2006).
-define(OP_KILL_CURSORS, 2007).

-define(TAILABLE_CURSOR, 2).
-define(SLAVE_OK, 4).
-define(OPLOG, 8).
-define(NO_CURSOR_TIMEOUT, 16).
