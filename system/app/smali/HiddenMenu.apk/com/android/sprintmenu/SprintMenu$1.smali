.class Lcom/android/sprintmenu/SprintMenu$1;
.super Landroid/os/Handler;
.source "SprintMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/sprintmenu/SprintMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sprintmenu/SprintMenu;


# direct methods
.method constructor <init>(Lcom/android/sprintmenu/SprintMenu;)V
    .registers 2
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .parameter "msg"

    .prologue
    .line 438
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 439
    .local v0, ar:Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_112

    .line 503
    :goto_9
    return-void

    .line 441
    :sswitch_a
    iget-object v4, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    #getter for: Lcom/android/sprintmenu/SprintMenu;->screen:I
    invoke-static {v4}, Lcom/android/sprintmenu/SprintMenu;->access$000(Lcom/android/sprintmenu/SprintMenu;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_42

    iget-object v4, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    #getter for: Lcom/android/sprintmenu/SprintMenu;->screen:I
    invoke-static {v4}, Lcom/android/sprintmenu/SprintMenu;->access$000(Lcom/android/sprintmenu/SprintMenu;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_42

    iget-object v4, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    #getter for: Lcom/android/sprintmenu/SprintMenu;->screen:I
    invoke-static {v4}, Lcom/android/sprintmenu/SprintMenu;->access$000(Lcom/android/sprintmenu/SprintMenu;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_42

    .line 442
    iget-object v4, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    iget-object v5, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    iget-object v6, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    #getter for: Lcom/android/sprintmenu/SprintMenu;->screen:I
    invoke-static {v6}, Lcom/android/sprintmenu/SprintMenu;->access$000(Lcom/android/sprintmenu/SprintMenu;)I

    move-result v6

    #calls: Lcom/android/sprintmenu/SprintMenu;->createAdapter(I)Landroid/widget/ListAdapter;
    invoke-static {v5, v6}, Lcom/android/sprintmenu/SprintMenu;->access$100(Lcom/android/sprintmenu/SprintMenu;I)Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/sprintmenu/SprintMenu;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 448
    :goto_36
    iget-object v4, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    iget-object v4, v4, Lcom/android/sprintmenu/SprintMenu;->handler:Landroid/os/Handler;

    const/16 v5, 0x6f

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9

    .line 445
    :cond_42
    iget-object v4, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    iget-object v5, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    #getter for: Lcom/android/sprintmenu/SprintMenu;->screen:I
    invoke-static {v5}, Lcom/android/sprintmenu/SprintMenu;->access$000(Lcom/android/sprintmenu/SprintMenu;)I

    move-result v5

    #calls: Lcom/android/sprintmenu/SprintMenu;->createAdapter(I)Landroid/widget/ListAdapter;
    invoke-static {v4, v5}, Lcom/android/sprintmenu/SprintMenu;->access$100(Lcom/android/sprintmenu/SprintMenu;I)Landroid/widget/ListAdapter;

    goto :goto_36

    .line 451
    :sswitch_4e
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_5f

    .line 452
    const-string v4, "SprintMenu"

    const-string v5, "AsyncResult Exception Occur!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 456
    :cond_5f
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_6b

    .line 457
    const-string v4, "SprintMenu"

    const-string v5, "ar.result == NULL! - No answer for OEM_MAIN_1X_HIDDEN responce"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 461
    :cond_6b
    new-instance v1, Ljava/lang/String;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 462
    .local v1, mString:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    const-string v5, ";"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/sprintmenu/SprintMenu;->m1XOutput:[Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/sprintmenu/SprintMenu;->access$202(Lcom/android/sprintmenu/SprintMenu;[Ljava/lang/String;)[Ljava/lang/String;

    .line 463
    iget-object v4, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    iget-object v5, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    #getter for: Lcom/android/sprintmenu/SprintMenu;->groupData:Ljava/util/List;
    invoke-static {v5}, Lcom/android/sprintmenu/SprintMenu;->access$300(Lcom/android/sprintmenu/SprintMenu;)Ljava/util/List;

    move-result-object v5

    #calls: Lcom/android/sprintmenu/SprintMenu;->create1x(Ljava/util/List;)V
    invoke-static {v4, v5}, Lcom/android/sprintmenu/SprintMenu;->access$400(Lcom/android/sprintmenu/SprintMenu;Ljava/util/List;)V

    goto/16 :goto_9

    .line 468
    .end local v1           #mString:Ljava/lang/String;
    :sswitch_8e
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_a0

    .line 469
    const-string v4, "SprintMenu"

    const-string v5, "AsyncResult Exception Occur!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_9

    .line 473
    :cond_a0
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_ad

    .line 474
    const-string v4, "SprintMenu"

    const-string v5, "ar.result == NULL! - No answer for OEM_MAIN_EVDO_HIDDEN responce"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 478
    :cond_ad
    new-instance v2, Ljava/lang/String;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>([B)V

    .line 480
    .local v2, mString1:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    const-string v5, ";"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/sprintmenu/SprintMenu;->mEvdoOutput:[Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/sprintmenu/SprintMenu;->access$502(Lcom/android/sprintmenu/SprintMenu;[Ljava/lang/String;)[Ljava/lang/String;

    .line 481
    iget-object v4, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    iget-object v5, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    #getter for: Lcom/android/sprintmenu/SprintMenu;->groupData:Ljava/util/List;
    invoke-static {v5}, Lcom/android/sprintmenu/SprintMenu;->access$300(Lcom/android/sprintmenu/SprintMenu;)Ljava/util/List;

    move-result-object v5

    #calls: Lcom/android/sprintmenu/SprintMenu;->createEvdo(Ljava/util/List;)V
    invoke-static {v4, v5}, Lcom/android/sprintmenu/SprintMenu;->access$600(Lcom/android/sprintmenu/SprintMenu;Ljava/util/List;)V

    goto/16 :goto_9

    .line 485
    .end local v2           #mString1:Ljava/lang/String;
    :sswitch_d0
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_e2

    .line 486
    const-string v4, "SprintMenu"

    const-string v5, "AsyncResult Exception Occur!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_9

    .line 490
    :cond_e2
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v4, :cond_ef

    .line 491
    const-string v4, "SprintMenu"

    const-string v5, "ar.result == NULL! - No answer for OEM_MAIN_CONFIG_HIDDEN responce"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 495
    :cond_ef
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    check-cast v4, [B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 496
    .local v3, mString2:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    const-string v5, ";"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/sprintmenu/SprintMenu;->mConfigOutput:[Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/sprintmenu/SprintMenu;->access$702(Lcom/android/sprintmenu/SprintMenu;[Ljava/lang/String;)[Ljava/lang/String;

    .line 497
    iget-object v4, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    iget-object v5, p0, Lcom/android/sprintmenu/SprintMenu$1;->this$0:Lcom/android/sprintmenu/SprintMenu;

    #getter for: Lcom/android/sprintmenu/SprintMenu;->groupData:Ljava/util/List;
    invoke-static {v5}, Lcom/android/sprintmenu/SprintMenu;->access$300(Lcom/android/sprintmenu/SprintMenu;)Ljava/util/List;

    move-result-object v5

    #calls: Lcom/android/sprintmenu/SprintMenu;->createConfig(Ljava/util/List;)V
    invoke-static {v4, v5}, Lcom/android/sprintmenu/SprintMenu;->access$800(Lcom/android/sprintmenu/SprintMenu;Ljava/util/List;)V

    goto/16 :goto_9

    .line 439
    :sswitch_data_112
    .sparse-switch
        0x7 -> :sswitch_4e
        0x8 -> :sswitch_8e
        0xa -> :sswitch_d0
        0x6f -> :sswitch_a
    .end sparse-switch
.end method
