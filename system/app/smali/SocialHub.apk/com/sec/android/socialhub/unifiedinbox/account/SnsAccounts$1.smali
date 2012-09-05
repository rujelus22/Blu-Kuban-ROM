.class Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts$1;
.super Ljava/lang/Object;
.source "SnsAccounts.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .registers 5
    .parameter "arg0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;

    invoke-virtual {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->onUpdate()V

    .line 106
    iget-object v0, p0, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts$1;->this$0:Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;

    #getter for: Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;->access$000(Lcom/sec/android/socialhub/unifiedinbox/account/SnsAccounts;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 107
    return-void
.end method
