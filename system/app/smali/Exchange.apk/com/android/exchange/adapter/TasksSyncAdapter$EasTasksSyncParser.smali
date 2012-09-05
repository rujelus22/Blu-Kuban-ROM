.class Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "TasksSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/TasksSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EasTasksSyncParser"
.end annotation


# instance fields
.field mAccountUri:Landroid/net/Uri;

.field mBindArgument:[Ljava/lang/String;

.field ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

.field final synthetic this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/TasksSyncAdapter;Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/TasksSyncAdapter;Z)V
    .registers 9
    .parameter
    .parameter "parse"
    .parameter "adapter"
    .parameter "resumeParser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 945
    iput-object p1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    .line 946
    invoke-direct {p0, p2, p3, p4}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Lcom/android/exchange/adapter/Parser;Lcom/android/exchange/adapter/AbstractSyncAdapter;Z)V

    .line 926
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mBindArgument:[Ljava/lang/String;

    .line 932
    new-instance v0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;-><init>(Lcom/android/exchange/adapter/TasksSyncAdapter;Lcom/android/exchange/adapter/TasksSyncAdapter$1;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    .line 947
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v3, :cond_2b

    .line 948
    sget-object v0, Lcom/android/emailcommon/provider/Tasks;->Q1_TASK_CONTENT_URI:Landroid/net/Uri;

    #calls: Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mAccountUri:Landroid/net/Uri;

    .line 953
    :goto_2a
    return-void

    .line 951
    :cond_2b
    sget-object v0, Lcom/android/emailcommon/provider/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    #calls: Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mAccountUri:Landroid/net/Uri;

    goto :goto_2a
.end method

.method public constructor <init>(Lcom/android/exchange/adapter/TasksSyncAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/TasksSyncAdapter;)V
    .registers 8
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 934
    iput-object p1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    .line 935
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 926
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mBindArgument:[Ljava/lang/String;

    .line 932
    new-instance v0, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;-><init>(Lcom/android/exchange/adapter/TasksSyncAdapter;Lcom/android/exchange/adapter/TasksSyncAdapter$1;)V

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    .line 936
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-ne v0, v3, :cond_2b

    .line 937
    sget-object v0, Lcom/android/emailcommon/provider/Tasks;->Q1_TASK_CONTENT_URI:Landroid/net/Uri;

    #calls: Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mAccountUri:Landroid/net/Uri;

    .line 943
    :goto_2a
    return-void

    .line 940
    :cond_2b
    sget-object v0, Lcom/android/emailcommon/provider/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    #calls: Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {p1, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mAccountUri:Landroid/net/Uri;

    goto :goto_2a
.end method

.method private bodyParser(Landroid/content/ContentValues;Landroid/content/Entity;)V
    .registers 6
    .parameter "cv"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1160
    const/4 v0, 0x0

    .line 1161
    .local v0, value:Ljava/lang/String;
    :goto_1
    const/16 v1, 0x44a

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_53

    .line 1162
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_54

    .line 1193
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_1

    .line 1169
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1171
    const-string v1, "bodyType"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1175
    :pswitch_25
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1177
    const-string v1, "body_size"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1181
    :pswitch_37
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1183
    const-string v1, "body_truncated"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1187
    :pswitch_49
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1189
    const-string v1, "body"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1196
    :cond_53
    return-void

    .line 1162
    :pswitch_data_54
    .packed-switch 0x446
        :pswitch_13
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_49
        :pswitch_25
        :pswitch_37
    .end packed-switch
.end method

.method private getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "clientId"

    .prologue
    const/4 v5, 0x0

    .line 1076
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1077
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 1078
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Tasks;->Q1_TASK_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$200()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "clientId=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mBindArgument:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1083
    :goto_25
    return-object v0

    :cond_26
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/emailcommon/provider/Tasks;->TASK_CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$200()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "clientId=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mBindArgument:[Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_25
.end method

.method private getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "serverId"

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1071
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mAccountUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$200()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "sourceid=?"

    iget-object v4, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->mBindArgument:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getTimeInMillis(Ljava/lang/String;)J
    .registers 9
    .parameter "dateTime"

    .prologue
    .line 1144
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1145
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    const-wide/16 v2, 0x0

    .line 1147
    .local v2, time_in_ms:J
    :try_start_9
    const-string v4, "GMT"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1148
    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 1149
    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1151
    const-string v4, "EasTasksSyncParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time_is_ms "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_35} :catch_37

    move-wide v4, v2

    .line 1156
    :goto_36
    return-wide v4

    .line 1153
    :catch_37
    move-exception v0

    .line 1154
    .local v0, pe:Ljava/text/ParseException;
    const-string v4, "EasTasksSyncParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cant parse dateTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const-wide/16 v4, 0x0

    goto :goto_36
.end method

.method private moveParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V
    .registers 10
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1005
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "inside move parser because of soft delete "

    aput-object v4, v3, v5

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 1006
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1007
    .local v1, cv:Landroid/content/ContentValues;
    :goto_10
    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_af

    .line 1008
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v3, :pswitch_data_b0

    goto :goto_10

    .line 1010
    :pswitch_1f
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1012
    .local v2, serverId:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1014
    .local v0, c:Landroid/database/Cursor;
    :try_start_27
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_87

    .line 1015
    const-string v3, "complete"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1022
    iget-object v3, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v3, v7, :cond_8b

    .line 1023
    iget-object v3, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    sget-object v4, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->Q1_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    #calls: Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v3, v4}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1041
    :goto_65
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "taskComplete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " completed value is : 1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_87
    .catchall {:try_start_27 .. :try_end_87} :catchall_aa

    .line 1044
    :cond_87
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_10

    .line 1030
    :cond_8b
    :try_start_8b
    sget-object v3, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/exchange/adapter/TasksSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z
    :try_end_a9
    .catchall {:try_start_8b .. :try_end_a9} :catchall_aa

    goto :goto_65

    .line 1044
    :catchall_aa
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    .line 1048
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #serverId:Ljava/lang/String;
    :cond_af
    return-void

    .line 1008
    :pswitch_data_b0
    .packed-switch 0xd
        :pswitch_1f
    .end packed-switch
.end method

.method private recurrenceParser(Landroid/content/ContentValues;Landroid/content/Entity;)V
    .registers 6
    .parameter "cv"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1199
    :goto_0
    const/16 v0, 0x24f

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_dd

    .line 1200
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v0, :pswitch_data_de

    .line 1245
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_0

    .line 1202
    :pswitch_12
    const-string v0, "recurrence_type"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1206
    :pswitch_24
    const-string v0, "recurrence_start"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1210
    :pswitch_36
    const-string v0, "recurrence_until"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1214
    :pswitch_48
    const-string v0, "recurrence_occurrences"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1218
    :pswitch_5a
    const-string v0, "recurrence_interval"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1222
    :pswitch_6c
    const-string v0, "recurrence_day_of_month"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1226
    :pswitch_7e
    const-string v0, "recurrence_day_of_week"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1230
    :pswitch_91
    const-string v0, "recurrence_week_of_month"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1234
    :pswitch_a4
    const-string v0, "recurrence_month_of_year"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1238
    :pswitch_b7
    const-string v0, "recurrence_regenerate"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1242
    :pswitch_ca
    const-string v0, "recurrence_dead_occur"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1248
    :cond_dd
    return-void

    .line 1200
    :pswitch_data_de
    .packed-switch 0x250
        :pswitch_12
        :pswitch_24
        :pswitch_36
        :pswitch_48
        :pswitch_5a
        :pswitch_6c
        :pswitch_7e
        :pswitch_91
        :pswitch_a4
        :pswitch_b7
        :pswitch_ca
    .end packed-switch
.end method


# virtual methods
.method public addData(Ljava/lang/String;Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;Landroid/content/Entity;Z)V
    .registers 19
    .parameter "serverId"
    .parameter "ops"
    .parameter "entity"
    .parameter "is_update"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1304
    const-string v11, "EasTasksSyncParser"

    const-string v12, "addData.."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const/4 v4, 0x0

    .line 1309
    .local v4, eventOffset:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1310
    .local v3, cv:Landroid/content/ContentValues;
    const-string v11, "sourceid"

    invoke-virtual {v3, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const-string v11, "accountKey"

    iget-object v12, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-wide v12, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1312
    const-string v11, "mailboxKey"

    iget-object v12, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-wide v12, v12, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1313
    const-string v11, "accountName"

    iget-object v12, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    iget-object v12, v12, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    if-nez p4, :cond_7c

    .line 1315
    iget-object v11, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f07

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6f

    .line 1316
    iget-object v11, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    sget-object v12, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->Q1_CONTENT_URI:Landroid/net/Uri;

    #calls: Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v11, v12}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 1323
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    :goto_52
    invoke-static {}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$300()Landroid/content/ContentProviderOperation;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->newTask(Landroid/content/ContentProviderOperation;)I

    move-result v4

    .line 1347
    :cond_5c
    :goto_5c
    const/16 v11, 0x1d

    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_25d

    .line 1351
    const/4 v10, 0x0

    .line 1353
    .local v10, task_value:Ljava/lang/String;
    iget v11, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v11, :sswitch_data_2c2

    .line 1466
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_5c

    .line 1320
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #task_value:Ljava/lang/String;
    :cond_6f
    iget-object v11, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    sget-object v12, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    #calls: Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v11, v12}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .restart local v1       #builder:Landroid/content/ContentProviderOperation$Builder;
    goto :goto_52

    .line 1325
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    :cond_7c
    const-wide/16 v5, 0x0

    .line 1326
    .local v5, id:J
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1328
    .local v2, c:Landroid/database/Cursor;
    :try_start_82
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_a0

    .line 1329
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "Updating "

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p1, v11, v12

    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 1331
    const-string v11, "_id"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J
    :try_end_9f
    .catchall {:try_start_82 .. :try_end_9f} :catchall_db

    move-result-wide v5

    .line 1334
    :cond_a0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1336
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "inside tasksyncapdater updating id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1337
    iget-object v11, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/high16 v12, 0x7f07

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e0

    .line 1338
    iget-object v11, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    sget-object v12, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->Q1_CONTENT_URI:Landroid/net/Uri;

    #calls: Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v11, v12}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .restart local v1       #builder:Landroid/content/ContentProviderOperation$Builder;
    goto :goto_5c

    .line 1334
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    :catchall_db
    move-exception v11

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v11

    .line 1342
    :cond_e0
    iget-object v11, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    sget-object v12, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    #calls: Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v11, v12}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    invoke-static {v11}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .restart local v1       #builder:Landroid/content/ContentProviderOperation$Builder;
    goto/16 :goto_5c

    .line 1363
    .end local v2           #c:Landroid/database/Cursor;
    .end local v5           #id:J
    .restart local v10       #task_value:Ljava/lang/String;
    :sswitch_f2
    const-string v11, "body"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 1367
    :sswitch_fd
    const-string v11, "body_size"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5c

    .line 1371
    :sswitch_110
    const-string v11, "body_truncated"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5c

    .line 1376
    :sswitch_123
    move-object/from16 v0, p3

    invoke-direct {p0, v3, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->bodyParser(Landroid/content/ContentValues;Landroid/content/Entity;)V

    goto/16 :goto_5c

    .line 1383
    :pswitch_12a
    const-string v11, "category1"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    :goto_133
    :sswitch_133
    const/16 v11, 0x248

    invoke-virtual {p0, v11}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_5c

    .line 1381
    iget v11, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v11, :pswitch_data_308

    .line 1386
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_133

    .line 1391
    :sswitch_145
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 1392
    const-string v11, "EasTasksSyncParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Complete "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    const-string v11, "complete"

    invoke-virtual {v3, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 1398
    :sswitch_168
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 1399
    const-string v11, "EasTasksSyncParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Importance "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const-string v11, "importance"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_5c

    .line 1408
    :sswitch_193
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 1409
    const-string v11, "EasTasksSyncParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Reminder Set "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const-string v11, "reminder_set"

    invoke-virtual {v3, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 1415
    :sswitch_1b6
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 1416
    const-string v11, "EasTasksSyncParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Sensitivity "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    const-string v11, "sensitivity"

    invoke-virtual {v3, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 1422
    :sswitch_1d9
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v10

    .line 1424
    const-string v11, "subject"

    invoke-virtual {v3, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 1432
    :sswitch_1e4
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v8

    .line 1434
    .local v8, reminder_time:J
    const-string v11, "reminder_time"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_5c

    .line 1438
    .end local v8           #reminder_time:J
    :sswitch_1f7
    const-string v11, "date_completed"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_5c

    .line 1444
    :sswitch_20a
    const-string v11, "due_date"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_5c

    .line 1448
    :sswitch_21d
    const-string v11, "utc_due_date"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_5c

    .line 1454
    :sswitch_230
    const-string v11, "start_date"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_5c

    .line 1458
    :sswitch_243
    const-string v11, "utc_start_date"

    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getTimeInMillis(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_5c

    .line 1462
    :sswitch_256
    move-object/from16 v0, p3

    invoke-direct {p0, v3, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->recurrenceParser(Landroid/content/ContentValues;Landroid/content/Entity;)V

    goto/16 :goto_5c

    .line 1469
    .end local v10           #task_value:Ljava/lang/String;
    :cond_25d
    const-string v11, "reminder_set"

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_27b

    .line 1472
    const-string v11, "reminder_set"

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1473
    .local v7, reminder_set:I
    if-lez v7, :cond_27b

    .line 1475
    const-string v11, "reminder_type"

    const/4 v12, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1480
    .end local v7           #reminder_set:I
    :cond_27b
    if-nez p4, :cond_2a1

    const-string v11, "reminder_set"

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2a1

    .line 1482
    const-string v11, "reminder_set"

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1483
    .restart local v7       #reminder_set:I
    const/4 v11, 0x1

    if-ne v7, v11, :cond_2b2

    .line 1486
    const-string v11, "reminder_time"

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1487
    .restart local v8       #reminder_time:J
    move-object/from16 v0, p2

    invoke-virtual {v0, v8, v9}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->addReminder(J)V

    .line 1491
    .end local v7           #reminder_set:I
    .end local v8           #reminder_time:J
    :cond_2a1
    :goto_2a1
    invoke-virtual {v1, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 1492
    if-nez p4, :cond_2b8

    if-ltz v4, :cond_2b8

    .line 1495
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v11}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1586
    :goto_2b1
    return-void

    .line 1489
    .restart local v7       #reminder_set:I
    :cond_2b2
    const-string v11, "reminder_time"

    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2a1

    .line 1497
    .end local v7           #reminder_set:I
    :cond_2b8
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    goto :goto_2b1

    .line 1353
    :sswitch_data_2c2
    .sparse-switch
        0x245 -> :sswitch_f2
        0x246 -> :sswitch_fd
        0x247 -> :sswitch_110
        0x248 -> :sswitch_133
        0x24a -> :sswitch_145
        0x24b -> :sswitch_1f7
        0x24c -> :sswitch_20a
        0x24d -> :sswitch_21d
        0x24e -> :sswitch_168
        0x24f -> :sswitch_256
        0x25b -> :sswitch_193
        0x25c -> :sswitch_1e4
        0x25d -> :sswitch_1b6
        0x25e -> :sswitch_230
        0x25f -> :sswitch_243
        0x260 -> :sswitch_1d9
        0x44a -> :sswitch_123
    .end sparse-switch

    .line 1381
    :pswitch_data_308
    .packed-switch 0x249
        :pswitch_12a
    .end packed-switch
.end method

.method public addParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V
    .registers 5
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1051
    const/4 v0, 0x0

    .line 1052
    .local v0, serverId:Ljava/lang/String;
    const-string v1, "EasTasksSyncParser"

    const-string v2, "addParser.."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    :goto_8
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_24

    .line 1054
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v1, :sswitch_data_26

    .line 1064
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_8

    .line 1056
    :sswitch_19
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1059
    goto :goto_8

    .line 1061
    :sswitch_1e
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->addData(Ljava/lang/String;Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;Landroid/content/Entity;Z)V

    goto :goto_8

    .line 1067
    :cond_24
    return-void

    .line 1054
    nop

    :sswitch_data_26
    .sparse-switch
        0xd -> :sswitch_19
        0x1d -> :sswitch_1e
    .end sparse-switch
.end method

.method public addResponsesParser()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1589
    const/4 v4, 0x0

    .line 1590
    .local v4, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1591
    .local v1, clientId:Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1592
    .local v2, cv:Landroid/content/ContentValues;
    new-instance v3, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    iget-object v5, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;-><init>(Lcom/android/exchange/adapter/TasksSyncAdapter;Lcom/android/exchange/adapter/TasksSyncAdapter$1;)V

    .line 1593
    .local v3, ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;
    :goto_11
    const/4 v5, 0x7

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_30

    .line 1594
    iget v5, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v5, :pswitch_data_11a

    .line 1605
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_11

    .line 1596
    :pswitch_22
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 1597
    goto :goto_11

    .line 1599
    :pswitch_27
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1600
    goto :goto_11

    .line 1602
    :pswitch_2c
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    goto :goto_11

    .line 1608
    :cond_30
    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "server id and client ids are "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 1610
    if-eqz v1, :cond_58

    if-nez v4, :cond_59

    .line 1645
    :cond_58
    :goto_58
    return-void

    .line 1612
    :cond_59
    new-array v5, v9, [Ljava/lang/String;

    const-string v6, " not returned from task till now, going to write to db response vals "

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 1613
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getClientIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1614
    .local v0, c:Landroid/database/Cursor;
    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " The cursor size for updation is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 1616
    :try_start_84
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 1617
    const-string v5, "sourceid"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    const-string v5, "_sync_dirty"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1622
    iget-object v5, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f07

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-ne v5, v9, :cond_f5

    .line 1623
    iget-object v5, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    sget-object v6, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->Q1_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    #calls: Lcom/android/exchange/adapter/TasksSyncAdapter;->uriWithAccountAndIsSyncAdapter(Landroid/net/Uri;)Landroid/net/Uri;
    invoke-static {v5, v6}, Lcom/android/exchange/adapter/TasksSyncAdapter;->access$100(Lcom/android/exchange/adapter/TasksSyncAdapter;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z

    .line 1638
    :goto_c7
    invoke-virtual {v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->execute()V

    .line 1639
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New task "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was given serverId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v5}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V
    :try_end_f0
    .catchall {:try_start_84 .. :try_end_f0} :catchall_114

    .line 1642
    :cond_f0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_58

    .line 1630
    :cond_f5
    :try_start_f5
    sget-object v5, Lcom/android/emailcommon/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/exchange/adapter/TasksSyncAdapter;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->add(Landroid/content/ContentProviderOperation;)Z
    :try_end_113
    .catchall {:try_start_f5 .. :try_end_113} :catchall_114

    goto :goto_c7

    .line 1642
    :catchall_114
    move-exception v5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1594
    nop

    :pswitch_data_11a
    .packed-switch 0xc
        :pswitch_27
        :pswitch_22
        :pswitch_2c
    .end packed-switch
.end method

.method public changeParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V
    .registers 9
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 1111
    const/4 v2, 0x0

    .line 1112
    .local v2, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1113
    .local v1, entity:Landroid/content/Entity;
    :goto_3
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_32

    .line 1114
    iget v3, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v3, :sswitch_data_34

    .line 1138
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_3

    .line 1116
    :sswitch_15
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1117
    invoke-direct {p0, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1118
    .local v0, c:Landroid/database/Cursor;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Changing task "

    aput-object v5, v3, v4

    aput-object v2, v3, v6

    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 1119
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1135
    .end local v0           #c:Landroid/database/Cursor;
    :sswitch_2e
    invoke-virtual {p0, v2, p1, v1, v6}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->addData(Ljava/lang/String;Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;Landroid/content/Entity;Z)V

    goto :goto_3

    .line 1141
    :cond_32
    return-void

    .line 1114
    nop

    :sswitch_data_34
    .sparse-switch
        0xd -> :sswitch_15
        0x1d -> :sswitch_2e
    .end sparse-switch
.end method

.method public changeResponsesParser()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1648
    const/4 v0, 0x0

    .line 1649
    .local v0, serverId:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1650
    .local v1, status:Ljava/lang/String;
    :goto_2
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1e

    .line 1651
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v2, :pswitch_data_4a

    .line 1659
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_2

    .line 1653
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1654
    goto :goto_2

    .line 1656
    :pswitch_19
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1657
    goto :goto_2

    .line 1662
    :cond_1e
    if-eqz v0, :cond_48

    if-eqz v1, :cond_48

    .line 1663
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changed task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 1665
    :cond_48
    return-void

    .line 1651
    nop

    :pswitch_data_4a
    .packed-switch 0xd
        :pswitch_14
        :pswitch_19
    .end packed-switch
.end method

.method public commandsParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    const-string v0, "EasTasksSyncParser"

    const-string v1, "commandsParser.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    :goto_7
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_57

    .line 960
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_20

    .line 961
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->addParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V

    .line 962
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->incrementChangeCount()V

    goto :goto_7

    .line 963
    :cond_20
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_31

    .line 964
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->deleteParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V

    .line 965
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->incrementChangeCount()V

    goto :goto_7

    .line 966
    :cond_31
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_42

    .line 967
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->changeParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V

    .line 968
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->incrementChangeCount()V

    goto :goto_7

    .line 970
    :cond_42
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_53

    .line 971
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    invoke-direct {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->moveParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V

    .line 972
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->this$0:Lcom/android/exchange/adapter/TasksSyncAdapter;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/TasksSyncAdapter;->incrementChangeCount()V

    goto :goto_7

    .line 974
    :cond_53
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_7

    .line 976
    :cond_57
    return-void
.end method

.method public commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mAdapter:Lcom/android/exchange/adapter/AbstractSyncAdapter;

    iget-object v1, p0, Lcom/android/exchange/adapter/AbstractSyncParser;->mMailbox:Lcom/android/emailcommon/provider/EmailContent$Mailbox;

    iget-object v1, v1, Lcom/android/emailcommon/provider/EmailContent$Mailbox;->mSyncKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/adapter/AbstractSyncAdapter;->setSyncKey(Ljava/lang/String;Z)V

    .line 984
    iget-object v0, p0, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->ops:Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;

    invoke-virtual {v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->execute()V

    .line 986
    return-void
.end method

.method public deleteParser(Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;)V
    .registers 7
    .parameter "ops"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1089
    :goto_0
    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3f

    .line 1090
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v2, :pswitch_data_40

    .line 1105
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_0

    .line 1092
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 1094
    .local v1, serverId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->getServerIdCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1096
    .local v0, c:Landroid/database/Cursor;
    :try_start_1a
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1097
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Deleting "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->userLog([Ljava/lang/String;)V

    .line 1098
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/exchange/adapter/TasksSyncAdapter$TaskOperations;->delete(J)V
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_3a

    .line 1101
    :cond_36
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_3a
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1108
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #serverId:Ljava/lang/String;
    :cond_3f
    return-void

    .line 1090
    :pswitch_data_40
    .packed-switch 0xd
        :pswitch_12
    .end packed-switch
.end method

.method public responsesParser()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 991
    const-string v0, "EasTasksSyncParser"

    const-string v1, "responsesParser.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :goto_7
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2d

    .line 993
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1f

    .line 994
    const-string v0, "EasTasksSyncParser"

    const-string v1, " inside add responsesParser.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->addResponsesParser()V

    goto :goto_7

    .line 996
    :cond_1f
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_29

    .line 997
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->changeResponsesParser()V

    goto :goto_7

    .line 999
    :cond_29
    invoke-virtual {p0}, Lcom/android/exchange/adapter/TasksSyncAdapter$EasTasksSyncParser;->skipTag()V

    goto :goto_7

    .line 1001
    :cond_2d
    return-void
.end method
