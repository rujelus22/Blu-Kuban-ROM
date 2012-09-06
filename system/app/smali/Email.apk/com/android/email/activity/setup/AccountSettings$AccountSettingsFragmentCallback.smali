.class Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountSettingsFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/activity/setup/AccountSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    return-void
.end method


# virtual methods
.method public abandonEdit()V
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings;->finish()V

    .line 591
    return-void
.end method

.method public deleteAccount(Lcom/android/emailcommon/provider/Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettings;->deleteAccount(Lcom/android/emailcommon/provider/Account;)V

    .line 595
    return-void
.end method

.method public onEditQuickResponses(Lcom/android/emailcommon/provider/Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettings;->onEditQuickResponses(Lcom/android/emailcommon/provider/Account;)V

    .line 579
    return-void
.end method

.method public onIncomingSettings(Lcom/android/emailcommon/provider/Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettings;->onIncomingSettings(Lcom/android/emailcommon/provider/Account;)V

    .line 583
    return-void
.end method

.method public onOutgoingSettings(Lcom/android/emailcommon/provider/Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettings;->onOutgoingSettings(Lcom/android/emailcommon/provider/Account;)V

    .line 587
    return-void
.end method

.method public onSettingsChanged(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .parameter "account"
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSettings;->onSettingsChanged(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/Object;)V

    .line 575
    return-void
.end method
