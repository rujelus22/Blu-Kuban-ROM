.class Lcom/sec/android/app/servicemodeapp/SysDump$1;
.super Landroid/os/Handler;
.source "SysDump.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/SysDump;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/SysDump;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/SysDump;)V
    .registers 2
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 146
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 148
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_284

    .line 327
    :goto_e
    :pswitch_e
    return-void

    .line 152
    :pswitch_f
    const-string v2, "sysDump"

    const-string v3, "Sys dump Success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 157
    :pswitch_17
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_31

    .line 159
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 160
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->infoLog()V
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$100(Lcom/sec/android/app/servicemodeapp/SysDump;)V

    .line 161
    const-string v2, "sysDump"

    const-string v3, "DUMPSTATE_DONE Success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 165
    :cond_31
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 166
    const-string v2, "sysDump"

    const-string v3, "DUMPSTATE_DONE fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 174
    :pswitch_42
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5c

    .line 176
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 177
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->infoLogAll()V
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$200(Lcom/sec/android/app/servicemodeapp/SysDump;)V

    .line 178
    const-string v2, "sysDump"

    const-string v3, "DUMPSTATE_DONE Success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 182
    :cond_5c
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 183
    const-string v2, "sysDump"

    const-string v3, "DUMPSTATE_DONE fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 191
    :pswitch_6d
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_89

    .line 193
    const-string v2, "sysDump"

    const-string v3, "start modem dump"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x13

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->SendData(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$400(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    goto :goto_e

    .line 198
    :cond_89
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 199
    const-string v2, "sysDump"

    const-string v3, "DUMPSTATE_DONE fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 206
    :pswitch_9b
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_b6

    .line 208
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 209
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->infoModemLog()V
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$500(Lcom/sec/android/app/servicemodeapp/SysDump;)V

    .line 210
    const-string v2, "sysDump"

    const-string v3, "MODEMLOG_DONE Success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 214
    :cond_b6
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 215
    const-string v2, "sysDump"

    const-string v3, "MODEMLOG_DONE fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 221
    :pswitch_c8
    const-string v2, "sysDump"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QUERY_DBG_STATE_DONE : buf[3] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->buf:[B
    invoke-static {v4}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$600(Lcom/sec/android/app/servicemodeapp/SysDump;)[B

    move-result-object v4

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_145

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_145

    .line 225
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 227
    .local v1, buf:[B
    aget-byte v2, v1, v7

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x7

    if-ne v2, v3, :cond_13c

    aget-byte v2, v1, v8

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x6

    if-ne v2, v3, :cond_13c

    aget-byte v2, v1, v5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_13c

    .line 231
    aget-byte v2, v1, v6

    if-nez v2, :cond_12c

    .line 233
    invoke-static {v7}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$702(Z)Z

    .line 234
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleDbgState:Landroid/widget/Button;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$800(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "Enable debug log"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 238
    :cond_12c
    invoke-static {v8}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$702(Z)Z

    .line 239
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleDbgState:Landroid/widget/Button;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$800(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "Disable debug log"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 243
    :cond_13c
    const-string v2, "sysDump"

    const-string v3, "QUERY_DBG_STATE_DONE error#1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 247
    .end local v1           #buf:[B
    :cond_145
    const-string v2, "sysDump"

    const-string v3, "QUERY_DBG_STATE_DONE error#2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 254
    :pswitch_14e
    const-string v2, "sysDump"

    const-string v3, "[f-d] QUERY_FD_STATE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$900()Z

    move-result v2

    if-eqz v2, :cond_168

    .line 256
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleFd:Landroid/widget/Button;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "Disable fast dormancy(Current State : Enabled)"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 258
    :cond_168
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleFd:Landroid/widget/Button;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1000(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "Enable fast dormancy(Current State : Disabled)"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 264
    :pswitch_175
    const-string v2, "sysDump"

    const-string v3, "ENABLE_DBG_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x6

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->SendData(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$400(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    goto/16 :goto_e

    .line 270
    :pswitch_18d
    const-string v2, "sysDump"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QUERY_RAMDUMP_STATE_DONE : buf[3] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->buf:[B
    invoke-static {v4}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$600(Lcom/sec/android/app/servicemodeapp/SysDump;)[B

    move-result-object v4

    aget-byte v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_261

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_261

    .line 274
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 276
    .restart local v1       #buf:[B
    aget-byte v2, v1, v7

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x7

    if-ne v2, v3, :cond_258

    aget-byte v2, v1, v8

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xb

    if-ne v2, v3, :cond_258

    aget-byte v2, v1, v5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_258

    .line 280
    const-string v2, "sysDump"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QUERY_RAMDUMP_STATE_DONE : state buf[4] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    aget-byte v2, v1, v6

    if-nez v2, :cond_20c

    .line 284
    invoke-static {v7}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1102(I)I

    .line 285
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleRampdumpState:Landroid/widget/Button;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1200(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "Ramdump Mode Disabled/LOW"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 287
    :cond_20c
    aget-byte v2, v1, v6

    if-ne v2, v8, :cond_220

    .line 289
    invoke-static {v8}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1102(I)I

    .line 290
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleRampdumpState:Landroid/widget/Button;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1200(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "Ramdump Mode Enabled/MID"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 292
    :cond_220
    aget-byte v2, v1, v6

    if-ne v2, v9, :cond_234

    .line 294
    invoke-static {v9}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1102(I)I

    .line 295
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleRampdumpState:Landroid/widget/Button;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1200(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "Ramdump Mode Enabled/HIGH"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 297
    :cond_234
    aget-byte v2, v1, v6

    if-ne v2, v5, :cond_248

    .line 299
    invoke-static {v5}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1102(I)I

    .line 300
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleRampdumpState:Landroid/widget/Button;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1200(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "Ramdump Mode Enabled/AUTO"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 304
    :cond_248
    invoke-static {v7}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1102(I)I

    .line 305
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mToggleRampdumpState:Landroid/widget/Button;
    invoke-static {v2}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$1200(Lcom/sec/android/app/servicemodeapp/SysDump;)Landroid/widget/Button;

    move-result-object v2

    const-string v3, "Fail to read Ramdump Mode"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 309
    :cond_258
    const-string v2, "sysDump"

    const-string v3, "QUERY_RAMDUMP_STATE_DONE error#1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 313
    .end local v1           #buf:[B
    :cond_261
    const-string v2, "sysDump"

    const-string v3, "QUERY_RAMDUMP_STATE_DONE error#2"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 320
    :pswitch_26a
    const-string v2, "sysDump"

    const-string v3, "RAMDUMP_MODE_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v2, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    iget-object v3, p0, Lcom/sec/android/app/servicemodeapp/SysDump$1;->this$0:Lcom/sec/android/app/servicemodeapp/SysDump;

    #getter for: Lcom/sec/android/app/servicemodeapp/SysDump;->mOem:Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;
    invoke-static {v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$300(Lcom/sec/android/app/servicemodeapp/SysDump;)Lcom/sec/android/app/servicemodeapp/SysDump$OemCommands;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xb

    #calls: Lcom/sec/android/app/servicemodeapp/SysDump;->SendData(I)V
    invoke-static {v2, v3}, Lcom/sec/android/app/servicemodeapp/SysDump;->access$400(Lcom/sec/android/app/servicemodeapp/SysDump;I)V

    goto/16 :goto_e

    .line 148
    nop

    :pswitch_data_284
    .packed-switch 0x3ed
        :pswitch_17
        :pswitch_e
        :pswitch_26a
        :pswitch_175
        :pswitch_f
        :pswitch_c8
        :pswitch_18d
        :pswitch_e
        :pswitch_14e
        :pswitch_9b
        :pswitch_6d
        :pswitch_42
    .end packed-switch
.end method
