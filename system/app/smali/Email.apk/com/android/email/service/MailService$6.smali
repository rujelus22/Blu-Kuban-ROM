.class final Lcom/android/email/service/MailService$6;
.super Lcom/android/email/SingleRunningTask;
.source "MailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/service/MailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/email/SingleRunningTask",
        "<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 687
    invoke-direct {p0, p1}, Lcom/android/email/SingleRunningTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected runInternal(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    .line 690
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    const-string v3, "com.android.email"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 692
    .local v0, accountManagerAccounts:[Landroid/accounts/Account;
    invoke-static {p1}, Lcom/android/email/service/MailService;->getPopImapAccountList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 693
    .local v1, providerAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/Account;>;"
    invoke-static {p1, v1, v0, p1}, Lcom/android/email/service/MailService;->reconcileAccountsWithAccountManager(Landroid/content/Context;Ljava/util/List;[Landroid/accounts/Account;Landroid/content/Context;)V

    .line 696
    return-void
.end method

.method protected bridge synthetic runInternal(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 687
    check-cast p1, Landroid/content/Context;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/service/MailService$6;->runInternal(Landroid/content/Context;)V

    return-void
.end method
