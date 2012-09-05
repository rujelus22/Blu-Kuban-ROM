.class Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime$1;
.super Landroid/os/Handler;
.source "ResetTotalCallTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;


# direct methods
.method constructor <init>(Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;)V
    .registers 2
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime$1;->this$0:Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .parameter "msg"

    .prologue
    const-wide/16 v12, 0xe10

    const-wide/16 v10, 0x3c

    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 299
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 303
    .local v0, ar:Landroid/os/AsyncResult;
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_136

    .line 389
    :goto_f
    return-void

    .line 311
    :pswitch_10
    const-string v6, "TotalCallTime"

    const-string v7, "SET_TOTAL_CALL_TIME_DONE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime$1;->this$0:Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;

    #calls: Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->GetTotalCallTime()V
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->access$000(Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;)V

    .line 321
    :pswitch_1c
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_12c

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_12c

    .line 325
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v1, v6

    check-cast v1, [B

    .line 329
    .local v1, buf:[B
    const/4 v6, 0x0

    aget-byte v6, v1, v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_123

    aget-byte v6, v1, v8

    if-ne v6, v8, :cond_123

    const/4 v6, 0x3

    aget-byte v6, v1, v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_123

    .line 337
    const-string v6, "TotalCallTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GET_TOTAL_CALL_TIME_DONE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v1, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    aget-byte v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x6

    aget-byte v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x7

    aget-byte v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime$1;->this$0:Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;

    #calls: Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->byteArrayToInt([BI)J
    invoke-static {v1, v9}, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->access$200([BI)J

    move-result-wide v7

    #setter for: Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mTotalCallTime:J
    invoke-static {v6, v7, v8}, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->access$102(Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;J)J

    .line 343
    const-string v6, "TotalCallTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mTotalCallTime  : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime$1;->this$0:Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;

    #getter for: Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mTotalCallTime:J
    invoke-static {v8}, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->access$100(Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime$1;->this$0:Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;

    #getter for: Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mTotalCallTime:J
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->access$100(Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;)J

    move-result-wide v6

    div-long/2addr v6, v12

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, hour:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime$1;->this$0:Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;

    #getter for: Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mTotalCallTime:J
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->access$100(Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;)J

    move-result-wide v6

    rem-long/2addr v6, v12

    div-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, min:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime$1;->this$0:Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;

    #getter for: Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mTotalCallTime:J
    invoke-static {v6}, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->access$100(Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;)J

    move-result-wide v6

    rem-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, sec:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " h"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " m"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 353
    .local v5, total:Ljava/lang/String;
    const-string v6, "TotalCallTime"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v6, p0, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime$1;->this$0:Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;

    iget-object v6, v6, Lcom/sec/android/app/servicemodeapp/ResetTotalCallTime;->mText:Landroid/widget/TextView;

    const-string v7, "Reset complete."

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 363
    .end local v2           #hour:Ljava/lang/String;
    .end local v3           #min:Ljava/lang/String;
    .end local v4           #sec:Ljava/lang/String;
    .end local v5           #total:Ljava/lang/String;
    :cond_123
    const-string v6, "TotalCallTime"

    const-string v7, "GET_TOTAL_CALL_TIME_DONE error#1"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 371
    .end local v1           #buf:[B
    :cond_12c
    const-string v6, "TotalCallTime"

    const-string v7, "GET_TOTAL_CALL_TIME_DONE error#2"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 303
    nop

    :pswitch_data_136
    .packed-switch 0x3f3
        :pswitch_10
        :pswitch_1c
    .end packed-switch
.end method
