.class public Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;
.super Lcom/android/exchange/adapter/AbstractSyncParser;
.source "ComposeMailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/adapter/ComposeMailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SmartReplyForwardParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;


# direct methods
.method public constructor <init>(Lcom/android/exchange/adapter/ComposeMailAdapter;Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractCommandAdapter;)V
    .registers 4
    .parameter
    .parameter "in"
    .parameter "adapter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    .line 200
    invoke-direct {p0, p2, p3}, Lcom/android/exchange/adapter/AbstractSyncParser;-><init>(Ljava/io/InputStream;Lcom/android/exchange/adapter/AbstractSyncAdapter;)V

    .line 201
    return-void
.end method


# virtual methods
.method public commandsParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    return-void
.end method

.method public commit()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    return-void
.end method

.method public parse()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/emailcommon/utility/DeviceAccessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 223
    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    #getter for: Lcom/android/exchange/adapter/ComposeMailAdapter;->isSmartSend:Z
    invoke-static {v2}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$000(Lcom/android/exchange/adapter/ComposeMailAdapter;)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    #getter for: Lcom/android/exchange/adapter/ComposeMailAdapter;->isReply:Z
    invoke-static {v2}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$100(Lcom/android/exchange/adapter/ComposeMailAdapter;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/16 v0, 0x547

    .line 225
    .local v0, startTag:I
    :goto_13
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->nextTag(I)I

    move-result v2

    if-eq v2, v0, :cond_25

    .line 226
    new-instance v2, Lcom/android/exchange/adapter/Parser$EasParserException;

    invoke-direct {v2, p0}, Lcom/android/exchange/adapter/Parser$EasParserException;-><init>(Lcom/android/exchange/adapter/Parser;)V

    throw v2

    .line 223
    .end local v0           #startTag:I
    :cond_1f
    const/16 v0, 0x546

    goto :goto_13

    :cond_22
    const/16 v0, 0x545

    goto :goto_13

    .line 228
    .restart local v0       #startTag:I
    :cond_25
    const/4 v1, 0x0

    .line 229
    .local v1, status:I
    :cond_26
    invoke-virtual {p0, v4}, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->nextTag(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_58

    .line 231
    const/4 v1, 0x1

    .line 232
    iget v2, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v3, 0x552

    if-ne v2, v3, :cond_26

    .line 233
    invoke-virtual {p0}, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->getValueInt()I

    move-result v1

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->log(Ljava/lang/String;)V

    .line 235
    sparse-switch v1, :sswitch_data_b8

    .line 279
    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    const/16 v3, 0x190

    #setter for: Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I
    invoke-static {v2, v3}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$202(Lcom/android/exchange/adapter/ComposeMailAdapter;I)I

    .line 285
    :cond_58
    :goto_58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "httpCode mapped for 14.0: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    #getter for: Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I
    invoke-static {v3}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$200(Lcom/android/exchange/adapter/ComposeMailAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->log(Ljava/lang/String;)V

    .line 286
    const/4 v2, 0x1

    return v2

    .line 237
    :sswitch_76
    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    const/16 v3, 0xc8

    #setter for: Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I
    invoke-static {v2, v3}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$202(Lcom/android/exchange/adapter/ComposeMailAdapter;I)I

    goto :goto_58

    .line 242
    :sswitch_7e
    const-string v2, "SmartReplyForwardParser"

    const-string v3, "Status code 129 received, to block the device"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v2, Lcom/android/emailcommon/utility/DeviceAccessException;

    const v3, 0x40001

    const v4, 0x7f060014

    invoke-direct {v2, v3, v4}, Lcom/android/emailcommon/utility/DeviceAccessException;-><init>(II)V

    throw v2

    .line 253
    :sswitch_91
    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    const/16 v3, 0x1c1

    #setter for: Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I
    invoke-static {v2, v3}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$202(Lcom/android/exchange/adapter/ComposeMailAdapter;I)I

    goto :goto_58

    .line 257
    :sswitch_99
    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    const/16 v3, 0x1f7

    #setter for: Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I
    invoke-static {v2, v3}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$202(Lcom/android/exchange/adapter/ComposeMailAdapter;I)I

    goto :goto_58

    .line 262
    :sswitch_a1
    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    const/16 v3, 0x1fb

    #setter for: Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I
    invoke-static {v2, v3}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$202(Lcom/android/exchange/adapter/ComposeMailAdapter;I)I

    goto :goto_58

    .line 267
    :sswitch_a9
    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    const/16 v3, 0x1f4

    #setter for: Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I
    invoke-static {v2, v3}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$202(Lcom/android/exchange/adapter/ComposeMailAdapter;I)I

    goto :goto_58

    .line 275
    :sswitch_b1
    iget-object v2, p0, Lcom/android/exchange/adapter/ComposeMailAdapter$SmartReplyForwardParser;->this$0:Lcom/android/exchange/adapter/ComposeMailAdapter;

    #setter for: Lcom/android/exchange/adapter/ComposeMailAdapter;->httpCode:I
    invoke-static {v2, v1}, Lcom/android/exchange/adapter/ComposeMailAdapter;->access$202(Lcom/android/exchange/adapter/ComposeMailAdapter;I)I

    goto :goto_58

    .line 235
    nop

    :sswitch_data_b8
    .sparse-switch
        0x1 -> :sswitch_76
        0x6e -> :sswitch_a9
        0x6f -> :sswitch_99
        0x71 -> :sswitch_a1
        0x73 -> :sswitch_a1
        0x78 -> :sswitch_a9
        0x81 -> :sswitch_7e
        0x8c -> :sswitch_91
        0x8e -> :sswitch_91
        0x8f -> :sswitch_91
        0x90 -> :sswitch_91
        0xa8 -> :sswitch_b1
        0xa9 -> :sswitch_b1
        0xaa -> :sswitch_b1
        0xab -> :sswitch_b1
        0xac -> :sswitch_b1
    .end sparse-switch
.end method

.method public responsesParser()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    return-void
.end method
