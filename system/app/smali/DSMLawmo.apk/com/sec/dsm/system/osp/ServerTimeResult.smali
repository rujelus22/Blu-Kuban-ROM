.class public Lcom/sec/dsm/system/osp/ServerTimeResult;
.super Ljava/lang/Object;
.source "ServerTimeResult.java"


# instance fields
.field currentServerTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/dsm/system/osp/ServerTimeResult;->currentServerTime:J

    .line 36
    return-void
.end method


# virtual methods
.method public fromXML(Ljava/io/InputStream;)V
    .registers 8
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/dsm/system/osp/ServerTimeException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 57
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 58
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 59
    .local v1, eventType:I
    :goto_c
    const/4 v4, 0x1

    if-eq v1, v4, :cond_3e

    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, name:Ljava/lang/String;
    packed-switch v1, :pswitch_data_40

    .line 70
    :cond_13
    :goto_13
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 71
    goto :goto_c

    .line 64
    :pswitch_18
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 65
    const-string v4, "currentServerTime"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 66
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/dsm/system/osp/ServerTimeResult;->currentServerTime:J
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    goto :goto_13

    .line 72
    .end local v1           #eventType:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_33
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lcom/sec/dsm/system/osp/ServerTimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/sec/dsm/system/osp/ServerTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 75
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #eventType:I
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_3e
    return-void

    .line 62
    nop

    :pswitch_data_40
    .packed-switch 0x2
        :pswitch_18
    .end packed-switch
.end method

.method public getCurrentServerTime()J
    .registers 3

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/sec/dsm/system/osp/ServerTimeResult;->currentServerTime:J

    return-wide v0
.end method
