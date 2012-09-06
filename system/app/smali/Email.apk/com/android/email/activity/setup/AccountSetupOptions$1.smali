.class Lcom/android/email/activity/setup/AccountSetupOptions$1;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

.field final synthetic val$account:Lcom/android/emailcommon/provider/Account;

.field final synthetic val$calendar2:Z

.field final synthetic val$contacts2:Z

.field final synthetic val$email2:Z


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions;Lcom/android/emailcommon/provider/Account;ZZZ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$account:Lcom/android/emailcommon/provider/Account;

    iput-boolean p3, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$email2:Z

    iput-boolean p4, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$calendar2:Z

    iput-boolean p5, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$contacts2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    .line 262
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$account:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 263
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$account:Lcom/android/emailcommon/provider/Account;

    iget-boolean v2, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$email2:Z

    iget-boolean v3, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$calendar2:Z

    iget-boolean v4, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->val$contacts2:Z

    iget-object v5, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions;

    iget-object v5, v5, Lcom/android/email/activity/setup/AccountSetupOptions;->mAccountManagerCallback:Landroid/accounts/AccountManagerCallback;

    invoke-static/range {v0 .. v5}, Lcom/android/email/service/MailService;->setupAccountManagerAccount(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;ZZZLandroid/accounts/AccountManagerCallback;)V

    .line 265
    return-void
.end method
