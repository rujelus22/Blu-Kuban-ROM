.class Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;
.super Ljava/lang/Object;
.source "AccountSettingsXL.java"

# interfaces
.implements Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountSettingsFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .registers 2
    .parameter

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1153
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    return-void
.end method


# virtual methods
.method public abandonEdit()V
    .registers 2

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->finish()V

    .line 1164
    return-void
.end method

.method public deleteAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->deleteAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1172
    return-void
.end method

.method public onIncomingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->onIncomingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1156
    return-void
.end method

.method public onIncomingSettingsForSeven(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->onIncomingSettingsForSeven(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1188
    return-void
.end method

.method public onOutgoingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->onOutgoingSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1160
    return-void
.end method

.method public onSyncScheduleSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .registers 3
    .parameter "account"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL;->onSyncScheduleSettings(Lcom/android/emailcommon/provider/EmailContent$Account;)V

    .line 1176
    return-void
.end method

.method public updateAccounts()V
    .registers 2

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->updateAccounts()V

    .line 1168
    return-void
.end method
