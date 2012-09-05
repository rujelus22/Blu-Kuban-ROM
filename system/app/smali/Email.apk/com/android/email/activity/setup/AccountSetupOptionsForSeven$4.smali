.class Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$4;
.super Ljava/lang/Object;
.source "AccountSetupOptionsForSeven.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->onDone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V
    .registers 2
    .parameter

    .prologue
    .line 474
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    .line 478
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSettingsUtils;->commitSettings(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 479
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven$4;->this$0:Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;

    #calls: Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->optionsComplete()V
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;->access$200(Lcom/android/email/activity/setup/AccountSetupOptionsForSeven;)V

    .line 480
    return-void
.end method
