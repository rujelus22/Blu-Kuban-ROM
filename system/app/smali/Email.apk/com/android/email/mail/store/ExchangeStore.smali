.class public Lcom/android/email/mail/store/ExchangeStore;
.super Lcom/android/email/mail/store/ServiceStore;
.source "ExchangeStore.java"


# direct methods
.method public constructor <init>(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V
    .registers 3
    .parameter "account"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/email/mail/store/ServiceStore;-><init>(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public static newInstance(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)Lcom/android/email/mail/Store;
    .registers 3
    .parameter "account"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/emailcommon/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lcom/android/email/mail/store/ExchangeStore;

    invoke-direct {v0, p0, p1}, Lcom/android/email/mail/store/ExchangeStore;-><init>(Lcom/android/emailcommon/provider/Account;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected getService()Lcom/android/emailcommon/service/IEmailService;
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/email/mail/store/ExchangeStore;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/service/EmailServiceUtils;->getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    return-object v0
.end method

.method public getSettingActivityClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const-class v0, Lcom/android/email/activity/setup/AccountSetupExchange;

    return-object v0
.end method
