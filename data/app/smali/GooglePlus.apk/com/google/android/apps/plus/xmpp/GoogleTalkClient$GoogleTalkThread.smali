.class Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;
.super Ljava/lang/Thread;
.source "GoogleTalkClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoogleTalkThread"
.end annotation


# instance fields
.field private mConnected:Z

.field final synthetic this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)V
    .registers 3
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->mConnected:Z

    .line 144
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x3

    .line 153
    :try_start_2
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    #getter for: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$100(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    #getter for: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mEsAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v5}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$200(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "webupdates"

    invoke-static {v4, v5, v6}, Lcom/google/android/apps/plus/network/AuthData;->getAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mGoogleToken:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$002(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_3a

    .line 162
    :goto_1d
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    #getter for: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mGoogleToken:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$000(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_53

    .line 163
    const-string v3, "GoogleTalkClient"

    invoke-static {v3, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 164
    const-string v3, "GoogleTalkClient"

    const-string v4, "authentication failed, null token"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_34
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    invoke-virtual {v3, v7}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->disconnect(I)V

    .line 269
    :cond_39
    :goto_39
    return-void

    .line 155
    :catch_3a
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    invoke-virtual {v3, v7}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->disconnect(I)V

    .line 157
    const-string v3, "GoogleTalkClient"

    invoke-static {v3, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 158
    const-string v3, "GoogleTalkClient"

    const-string v4, "authentication failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d

    .line 169
    .end local v0           #e:Ljava/lang/Exception;
    :cond_53
    const-string v3, "GoogleTalkClient"

    invoke-static {v3, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 170
    const-string v3, "GoogleTalkClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    #getter for: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mGoogleToken:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$000(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_79
    :try_start_79
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    new-instance v4, Ljava/net/Socket;

    const-string v5, "talk.google.com"

    const/16 v6, 0x1466

    invoke-direct {v4, v5, v6}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    #setter for: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mSocket:Ljava/net/Socket;
    invoke-static {v3, v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$302(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;Ljava/net/Socket;)Ljava/net/Socket;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_87} :catch_f8

    .line 181
    :try_start_87
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    #calls: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->resetWriter()V
    invoke-static {v3}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$400(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)V

    .line 182
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    #calls: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->restartStream()V
    invoke-static {v3}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$500(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)V

    .line 184
    :goto_91
    iget-boolean v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->mConnected:Z

    if-eqz v3, :cond_e7

    .line 185
    new-instance v2, Lcom/google/android/apps/plus/xmpp/MessageReader;

    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    #getter for: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mSocket:Ljava/net/Socket;
    invoke-static {v3}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$300(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    #getter for: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mDebugModeEnabled:Z
    invoke-static {v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$600(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Z

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/plus/xmpp/MessageReader;-><init>(Ljava/io/InputStream;Z)V

    .line 187
    .local v2, reader:Lcom/google/android/apps/plus/xmpp/MessageReader;
    sget-object v3, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$1;->$SwitchMap$com$google$android$apps$plus$xmpp$MessageReader$Event:[I

    invoke-virtual {v2}, Lcom/google/android/apps/plus/xmpp/MessageReader;->read()Lcom/google/android/apps/plus/xmpp/MessageReader$Event;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/xmpp/MessageReader$Event;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_208

    goto :goto_91

    .line 189
    :pswitch_ba
    const-string v3, "GoogleTalkClient"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_ca

    .line 190
    const-string v3, "GoogleTalkClient"

    const-string v4, "end of stream"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_ca
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->disconnect(I)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_d0} :catch_d1

    goto :goto_91

    .line 260
    .end local v2           #reader:Lcom/google/android/apps/plus/xmpp/MessageReader;
    :catch_d1
    move-exception v1

    .line 261
    .local v1, exception:Ljava/lang/Exception;
    const-string v3, "GoogleTalkClient"

    invoke-static {v3, v8}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 262
    const-string v3, "GoogleTalkClient"

    const-string v4, "Exception reading data"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    :cond_e1
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->disconnect(I)V

    .line 266
    .end local v1           #exception:Ljava/lang/Exception;
    :cond_e7
    const-string v3, "GoogleTalkClient"

    invoke-static {v3, v7}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 267
    const-string v3, "GoogleTalkClient"

    const-string v4, "thread finished"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 175
    :catch_f8
    move-exception v1

    .line 176
    .restart local v1       #exception:Ljava/lang/Exception;
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->disconnect(I)V

    goto/16 :goto_39

    .line 196
    .end local v1           #exception:Ljava/lang/Exception;
    .restart local v2       #reader:Lcom/google/android/apps/plus/xmpp/MessageReader;
    :pswitch_101
    :try_start_101
    const-string v3, "GoogleTalkClient"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 197
    const-string v3, "GoogleTalkClient"

    const-string v4, "unexpected features"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_111
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->disconnect(I)V

    goto/16 :goto_91

    .line 203
    :pswitch_119
    const-string v3, "GoogleTalkClient"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_129

    .line 204
    const-string v3, "GoogleTalkClient"

    const-string v4, "Authentication failed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_129
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    #getter for: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$100(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    #getter for: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mEsAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$200(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/plus/content/EsAccount;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "webupdates"

    invoke-static {v3, v4, v5}, Lcom/google/android/apps/plus/network/AuthData;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    const/4 v4, 0x0

    #setter for: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mGoogleToken:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$002(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->disconnect(I)V

    goto/16 :goto_91

    .line 213
    :pswitch_14c
    const-string v3, "GoogleTalkClient"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_15c

    .line 214
    const-string v3, "GoogleTalkClient"

    const-string v4, "TLS required"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_15c
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    invoke-static {}, Lcom/google/android/apps/plus/xmpp/Commands;->startTls()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->write(Ljava/lang/String;)Z

    goto/16 :goto_91

    .line 220
    :pswitch_167
    const-string v3, "GoogleTalkClient"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_177

    .line 221
    const-string v3, "GoogleTalkClient"

    const-string v4, "Proceed with TLS"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_177
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    #calls: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->onProceedWithTlsReceived()V
    invoke-static {v3}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$700(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)V

    .line 224
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    #calls: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->restartStream()V
    invoke-static {v3}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$500(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)V

    goto/16 :goto_91

    .line 228
    :pswitch_183
    const-string v3, "GoogleTalkClient"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_193

    .line 229
    const-string v3, "GoogleTalkClient"

    const-string v4, "Authenticated required"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_193
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    #getter for: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mGoogleToken:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$000(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/xmpp/Commands;->authenticate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->write(Ljava/lang/String;)Z

    goto/16 :goto_91

    .line 235
    :pswitch_1a4
    const-string v3, "GoogleTalkClient"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1b4

    .line 236
    const-string v3, "GoogleTalkClient"

    const-string v4, "Authenticated successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1b4
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    #calls: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->restartStream()V
    invoke-static {v3}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$500(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)V

    goto/16 :goto_91

    .line 242
    :pswitch_1bb
    const-string v3, "GoogleTalkClient"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1cb

    .line 243
    const-string v3, "GoogleTalkClient"

    const-string v4, "stream reaqy"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_1cb
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    iget-object v4, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    #getter for: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->mResource:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$800(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/plus/xmpp/Commands;->bindToResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->write(Ljava/lang/String;)Z

    goto/16 :goto_91

    .line 249
    :pswitch_1dc
    const-string v3, "GoogleTalkClient"

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1ec

    .line 250
    const-string v3, "GoogleTalkClient"

    const-string v4, "jid available"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_1ec
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/xmpp/MessageReader;->getEventData()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->onJidReceived(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->access$900(Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;Ljava/lang/String;)V

    goto/16 :goto_91

    .line 256
    :pswitch_1f7
    iget-object v3, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->this$0:Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/xmpp/MessageReader;->getEventData()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient;->onMessageReceived([B)V
    :try_end_205
    .catch Ljava/lang/Exception; {:try_start_101 .. :try_end_205} :catch_d1

    goto/16 :goto_91

    .line 187
    nop

    :pswitch_data_208
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_101
        :pswitch_119
        :pswitch_14c
        :pswitch_167
        :pswitch_183
        :pswitch_1a4
        :pswitch_1bb
        :pswitch_1dc
        :pswitch_1f7
    .end packed-switch
.end method

.method public setDisconnected()V
    .registers 2

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/xmpp/GoogleTalkClient$GoogleTalkThread;->mConnected:Z

    .line 148
    return-void
.end method
