.class Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts$2;
.super Landroid/database/ContentObserver;
.source "CombinedAccounts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->registerMessageObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;Landroid/os/Handler;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 671
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts$2;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5
    .parameter "b"

    .prologue
    .line 675
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 677
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts$2;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->runUpdateEmailTask()V

    .line 679
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts$2;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;

    iget-object v0, v0, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->Tag:Ljava/lang/String;

    const-string v1, "onChange()"

    const-string v2, "Email Message Changed!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-void
.end method
