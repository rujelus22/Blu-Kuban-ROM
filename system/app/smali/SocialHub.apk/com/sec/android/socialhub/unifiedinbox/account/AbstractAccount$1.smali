.class Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$1;
.super Landroid/database/ContentObserver;
.source "AbstractAccount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->registerObserver(Landroid/net/Uri;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 304
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .parameter "b"

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 310
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v0, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v1, "onChange()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content Observer called. mContext = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v3, v3, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->ctx:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v0, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v1, "CombinedAccounts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->access$000()Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;

    move-result-object v1

    #calls: Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->sendMessageToHandler(ILandroid/os/Handler;)V
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->access$100(ILandroid/os/Handler;)V

    .line 318
    :goto_37
    return-void

    .line 313
    :cond_38
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v0, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v1, "SevenIMAccounts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x1

    invoke-static {}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->access$000()Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;

    move-result-object v1

    #calls: Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->sendMessageToHandler(ILandroid/os/Handler;)V
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->access$100(ILandroid/os/Handler;)V

    goto :goto_37

    .line 314
    :cond_4d
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v0, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v1, "SMSAccounts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x4

    invoke-static {}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->access$000()Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;

    move-result-object v1

    #calls: Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->sendMessageToHandler(ILandroid/os/Handler;)V
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->access$100(ILandroid/os/Handler;)V

    goto :goto_37

    .line 315
    :cond_62
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v0, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v1, "SnsAccounts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const/4 v0, 0x3

    invoke-static {}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->access$000()Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;

    move-result-object v1

    #calls: Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->sendMessageToHandler(ILandroid/os/Handler;)V
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->access$100(ILandroid/os/Handler;)V

    goto :goto_37

    .line 316
    :cond_77
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v0, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v1, "SevenEmailAccounts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    const/4 v0, 0x2

    invoke-static {}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->access$000()Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$AccountHandler;

    move-result-object v1

    #calls: Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->sendMessageToHandler(ILandroid/os/Handler;)V
    invoke-static {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->access$100(ILandroid/os/Handler;)V

    goto :goto_37

    .line 317
    :cond_8c
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    iget-object v0, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v1, "onChange()"

    const-string v2, "Error!!!! Tag is not match"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method
