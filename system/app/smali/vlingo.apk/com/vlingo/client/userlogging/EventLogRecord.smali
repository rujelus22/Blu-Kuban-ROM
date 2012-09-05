.class public Lcom/vlingo/client/userlogging/EventLogRecord;
.super Ljava/lang/Object;
.source "EventLogRecord.java"


# static fields
.field private static final log:Lcom/vlingo/client/core/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-class v0, Lcom/vlingo/client/userlogging/EventLogRecord;

    invoke-static {v0}, Lcom/vlingo/client/core/logging/Logger;->getLogger(Ljava/lang/Class;)Lcom/vlingo/client/core/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/vlingo/client/userlogging/EventLogRecord;->log:Lcom/vlingo/client/core/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private getCurrentContext()Landroid/content/Context;
    .registers 3

    .prologue
    .line 97
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 98
    .local v0, app:Landroid/app/Application;
    if-eqz v0, :cond_11

    .line 99
    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 101
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method


# virtual methods
.method public generateXml()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 69
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 70
    .local v8, sb:Ljava/lang/StringBuffer;
    const-string v0, "<EventLogRequest>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v0, "<ReqEvents>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/EventLogRecord;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "events"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 79
    .local v6, cur:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/vlingo/client/util/CursorUtil;->isValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 81
    :cond_33
    new-instance v7, Lcom/vlingo/client/userlogging/events/Event;

    invoke-direct {v7, v6}, Lcom/vlingo/client/userlogging/events/Event;-><init>(Landroid/database/Cursor;)V

    .line 82
    .local v7, e:Lcom/vlingo/client/userlogging/events/Event;
    invoke-virtual {v7}, Lcom/vlingo/client/userlogging/events/Event;->generateXML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_33

    .line 87
    .end local v7           #e:Lcom/vlingo/client/userlogging/events/Event;
    :cond_45
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 90
    const-string v0, "</ReqEvents>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v0, "</EventLogRequest>"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRecordSize()I
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Lcom/vlingo/client/userlogging/EventLogRecord;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vlingo/client/util/ServerLogProvider;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "events"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 51
    .local v7, cur:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 53
    .local v6, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 55
    return v6
.end method
