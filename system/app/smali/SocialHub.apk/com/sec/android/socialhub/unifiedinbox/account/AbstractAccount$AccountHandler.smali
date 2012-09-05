.class public Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;
.super Landroid/os/Handler;
.source "AbstractAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountHandler"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;


# direct methods
.method public constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter "ctx"

    .prologue
    .line 599
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    .line 600
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;->mContext:Landroid/content/Context;

    .line 601
    iput-object p2, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;->mContext:Landroid/content/Context;

    .line 602
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 607
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 609
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_b2

    .line 636
    :cond_8
    :goto_8
    :try_start_8
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_91

    .line 643
    :goto_14
    const-string v1, "AccountHandler"

    const-string v2, "handleMessage()"

    const-string v3, "System sleep start"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-wide/16 v1, 0x12c

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 645
    const-string v1, "AccountHandler"

    const-string v2, "handleMessage()"

    const-string v3, "System sleep end"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    return-void

    .line 612
    :pswitch_2c
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v1, v1, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v1, v1, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    const-string v2, "2_Email"

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V

    goto :goto_8

    .line 616
    :pswitch_40
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v1, v1, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v1, v1, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    const-string v2, "4_SevenIM"

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V

    goto :goto_8

    .line 620
    :pswitch_54
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v1, v1, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v1, v1, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    const-string v2, "1_Messaging"

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V

    goto :goto_8

    .line 624
    :pswitch_68
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v1, v1, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v1, v1, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    const-string v2, "3_SevenEmail"

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V

    goto :goto_8

    .line 628
    :pswitch_7c
    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v1, v1, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v1, v1, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->mAccountManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    const-string v2, "5_SNS"

    invoke-virtual {v1, v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onUpdate()V

    goto/16 :goto_8

    .line 638
    :catch_91
    move-exception v0

    .line 640
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AccountHandler"

    const-string v2, "handleMessage()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 609
    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_40
        :pswitch_68
        :pswitch_7c
        :pswitch_54
    .end packed-switch
.end method
