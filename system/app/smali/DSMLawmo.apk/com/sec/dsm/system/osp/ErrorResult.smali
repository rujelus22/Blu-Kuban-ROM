.class public Lcom/sec/dsm/system/osp/ErrorResult;
.super Ljava/lang/Object;
.source "ErrorResult.java"


# instance fields
.field private code:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private resource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/osp/ErrorResult;->code:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/osp/ErrorResult;->message:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/osp/ErrorResult;->resource:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/dsm/system/osp/ErrorResult;->requestId:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public fromXML(Ljava/io/InputStream;)V
    .registers 7
    .parameter "content"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 128
    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 130
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 131
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 132
    .local v0, eventType:I
    :goto_c
    const/4 v3, 0x1

    if-eq v0, v3, :cond_5b

    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, name:Ljava/lang/String;
    packed-switch v0, :pswitch_data_64

    .line 152
    :cond_13
    :goto_13
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 153
    goto :goto_c

    .line 137
    :pswitch_18
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 138
    const-string v3, "code"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 139
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/dsm/system/osp/ErrorResult;->code:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    goto :goto_13

    .line 155
    .end local v0           #eventType:I
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_2b
    move-exception v3

    .line 156
    :try_start_2c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_61

    .line 158
    :goto_2f
    throw v3

    .line 141
    .restart local v0       #eventType:I
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    :cond_30
    :try_start_30
    const-string v3, "message"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 142
    const-string v3, ""

    iput-object v3, p0, Lcom/sec/dsm/system/osp/ErrorResult;->message:Ljava/lang/String;

    goto :goto_13

    .line 144
    :cond_3d
    const-string v3, "resource"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 145
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/dsm/system/osp/ErrorResult;->resource:Ljava/lang/String;

    goto :goto_13

    .line 147
    :cond_4c
    const-string v3, "requestId"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 148
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/dsm/system/osp/ErrorResult;->requestId:Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_30 .. :try_end_5a} :catchall_2b

    goto :goto_13

    .line 156
    .end local v1           #name:Ljava/lang/String;
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f

    .line 160
    :goto_5e
    return-void

    .line 157
    :catch_5f
    move-exception v3

    goto :goto_5e

    .end local v0           #eventType:I
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_61
    move-exception v4

    goto :goto_2f

    .line 135
    nop

    :pswitch_data_64
    .packed-switch 0x2
        :pswitch_18
    .end packed-switch
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/dsm/system/osp/ErrorResult;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/dsm/system/osp/ErrorResult;->message:Ljava/lang/String;

    return-object v0
.end method
