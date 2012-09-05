.class Lcom/sec/android/app/personalization/PersoLock$1;
.super Landroid/os/Handler;
.source "PersoLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/personalization/PersoLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/personalization/PersoLock;


# direct methods
.method constructor <init>(Lcom/sec/android/app/personalization/PersoLock;)V
    .registers 2
    .parameter

    .prologue
    .line 338
    iput-object p1, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    const-wide/16 v9, 0x7d0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 342
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3e

    .line 344
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 346
    .local v1, res:Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_29

    .line 349
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const-string v3, "network perso lock request failure."

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #calls: Lcom/sec/android/app/personalization/PersoLock;->indicateError()V
    invoke-static {v2}, Lcom/sec/android/app/personalization/PersoLock;->access$100(Lcom/sec/android/app/personalization/PersoLock;)V

    .line 352
    new-instance v2, Lcom/sec/android/app/personalization/PersoLock$1$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/personalization/PersoLock$1$1;-><init>(Lcom/sec/android/app/personalization/PersoLock$1;)V

    invoke-virtual {p0, v2, v9, v10}, Lcom/sec/android/app/personalization/PersoLock$1;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 451
    .end local v1           #res:Landroid/os/AsyncResult;
    :cond_28
    :goto_28
    return-void

    .line 367
    .restart local v1       #res:Landroid/os/AsyncResult;
    :cond_29
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const-string v3, "network perso lock SuCcess."

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 369
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #calls: Lcom/sec/android/app/personalization/PersoLock;->indicateSuccess()V
    invoke-static {v2}, Lcom/sec/android/app/personalization/PersoLock;->access$500(Lcom/sec/android/app/personalization/PersoLock;)V

    .line 370
    new-instance v2, Lcom/sec/android/app/personalization/PersoLock$1$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/personalization/PersoLock$1$2;-><init>(Lcom/sec/android/app/personalization/PersoLock$1;)V

    invoke-virtual {p0, v2, v9, v10}, Lcom/sec/android/app/personalization/PersoLock$1;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_28

    .line 382
    .end local v1           #res:Landroid/os/AsyncResult;
    :cond_3e
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x65

    if-ne v2, v3, :cond_7c

    .line 384
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 386
    .restart local v1       #res:Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_63

    .line 389
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const-string v3, "network perso unlock request failure."

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 391
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #calls: Lcom/sec/android/app/personalization/PersoLock;->indicateError()V
    invoke-static {v2}, Lcom/sec/android/app/personalization/PersoLock;->access$100(Lcom/sec/android/app/personalization/PersoLock;)V

    .line 392
    new-instance v2, Lcom/sec/android/app/personalization/PersoLock$1$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/personalization/PersoLock$1$3;-><init>(Lcom/sec/android/app/personalization/PersoLock$1;)V

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/android/app/personalization/PersoLock$1;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_28

    .line 405
    :cond_63
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const-string v3, "network perso unlock success."

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 407
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #calls: Lcom/sec/android/app/personalization/PersoLock;->indicateSuccess()V
    invoke-static {v2}, Lcom/sec/android/app/personalization/PersoLock;->access$500(Lcom/sec/android/app/personalization/PersoLock;)V

    .line 408
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    invoke-virtual {v2}, Lcom/sec/android/app/personalization/PersoLock;->dismiss()V

    .line 409
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    iget-object v2, v2, Lcom/sec/android/app/personalization/PersoLock;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_28

    .line 412
    .end local v1           #res:Landroid/os/AsyncResult;
    :cond_7c
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x66

    if-ne v2, v3, :cond_28

    .line 415
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const-string v3, "get status success"

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 417
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 418
    .restart local v1       #res:Landroid/os/AsyncResult;
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    .line 420
    .local v0, Buf:[B
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buf[0] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 421
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buf[1] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buf[2] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 423
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buf[3] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/sec/android/app/personalization/PersoLock;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/personalization/PersoLock;->access$000(Lcom/sec/android/app/personalization/PersoLock;Ljava/lang/String;)V

    .line 425
    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const v4, 0x7f05000e

    invoke-virtual {v2, v4}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/sec/android/app/personalization/PersoLock;->mNpStatus:Landroid/widget/TextView;
    invoke-static {v3, v2}, Lcom/sec/android/app/personalization/PersoLock;->access$602(Lcom/sec/android/app/personalization/PersoLock;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 426
    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const v4, 0x7f05000f

    invoke-virtual {v2, v4}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/sec/android/app/personalization/PersoLock;->mNspStatus:Landroid/widget/TextView;
    invoke-static {v3, v2}, Lcom/sec/android/app/personalization/PersoLock;->access$702(Lcom/sec/android/app/personalization/PersoLock;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 427
    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const v4, 0x7f050010

    invoke-virtual {v2, v4}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/sec/android/app/personalization/PersoLock;->mSpStatus:Landroid/widget/TextView;
    invoke-static {v3, v2}, Lcom/sec/android/app/personalization/PersoLock;->access$802(Lcom/sec/android/app/personalization/PersoLock;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 428
    iget-object v3, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    const v4, 0x7f050011

    invoke-virtual {v2, v4}, Lcom/sec/android/app/personalization/PersoLock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    #setter for: Lcom/sec/android/app/personalization/PersoLock;->mCpStatus:Landroid/widget/TextView;
    invoke-static {v3, v2}, Lcom/sec/android/app/personalization/PersoLock;->access$902(Lcom/sec/android/app/personalization/PersoLock;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 430
    aget-byte v2, v0, v6

    if-ne v2, v5, :cond_17a

    .line 431
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #getter for: Lcom/sec/android/app/personalization/PersoLock;->mNpStatus:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/personalization/PersoLock;->access$600(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "[ON]"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    :goto_14b
    aget-byte v2, v0, v5

    if-ne v2, v5, :cond_186

    .line 436
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #getter for: Lcom/sec/android/app/personalization/PersoLock;->mNspStatus:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/personalization/PersoLock;->access$700(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "[ON]"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :goto_15a
    aget-byte v2, v0, v7

    if-ne v2, v5, :cond_192

    .line 441
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #getter for: Lcom/sec/android/app/personalization/PersoLock;->mSpStatus:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/personalization/PersoLock;->access$800(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "[ON]"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    :goto_169
    aget-byte v2, v0, v8

    if-ne v2, v5, :cond_19e

    .line 446
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #getter for: Lcom/sec/android/app/personalization/PersoLock;->mCpStatus:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/personalization/PersoLock;->access$900(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "[ON]"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_28

    .line 433
    :cond_17a
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #getter for: Lcom/sec/android/app/personalization/PersoLock;->mNpStatus:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/personalization/PersoLock;->access$600(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "[OFF]"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_14b

    .line 438
    :cond_186
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #getter for: Lcom/sec/android/app/personalization/PersoLock;->mNspStatus:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/personalization/PersoLock;->access$700(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "[OFF]"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15a

    .line 443
    :cond_192
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #getter for: Lcom/sec/android/app/personalization/PersoLock;->mSpStatus:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/personalization/PersoLock;->access$800(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "[OFF]"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_169

    .line 448
    :cond_19e
    iget-object v2, p0, Lcom/sec/android/app/personalization/PersoLock$1;->this$0:Lcom/sec/android/app/personalization/PersoLock;

    #getter for: Lcom/sec/android/app/personalization/PersoLock;->mCpStatus:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/personalization/PersoLock;->access$900(Lcom/sec/android/app/personalization/PersoLock;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "[OFF]"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_28
.end method
