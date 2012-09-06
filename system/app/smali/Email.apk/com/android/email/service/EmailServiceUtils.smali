.class public Lcom/android/email/service/EmailServiceUtils;
.super Ljava/lang/Object;
.source "EmailServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/service/EmailServiceUtils$NullEmailService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public static getExchangeService(Landroid/content/Context;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;
    .registers 3
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 69
    const-string v0, "com.android.email.EXCHANGE_INTENT"

    invoke-static {p0, v0, p1}, Lcom/android/email/service/EmailServiceUtils;->getService(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/service/IEmailServiceCallback;)Lcom/android/emailcommon/service/IEmailService;
    .registers 4
    .parameter "context"
    .parameter "intentAction"
    .parameter "callback"

    .prologue
    .line 53
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    return-object v0
.end method

.method public static isExchangeAvailable(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 73
    const-string v0, "com.android.email.EXCHANGE_INTENT"

    invoke-static {p0, v0}, Lcom/android/email/service/EmailServiceUtils;->isServiceAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isServiceAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .parameter "context"
    .parameter "intentAction"

    .prologue
    .line 60
    new-instance v0, Lcom/android/emailcommon/service/EmailServiceProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/emailcommon/service/EmailServiceProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/emailcommon/service/IEmailServiceCallback;)V

    invoke-virtual {v0}, Lcom/android/emailcommon/service/EmailServiceProxy;->test()Z

    move-result v0

    return v0
.end method

.method public static startExchangeService(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 64
    const-string v0, "com.android.email.EXCHANGE_INTENT"

    invoke-static {p0, v0}, Lcom/android/email/service/EmailServiceUtils;->startService(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .parameter "context"
    .parameter "intentAction"

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    return-void
.end method
