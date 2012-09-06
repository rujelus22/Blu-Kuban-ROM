.class Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountServerSettingsFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettings;)V
    .registers 2
    .parameter

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/activity/setup/AccountSettings$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 601
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    return-void
.end method


# virtual methods
.method public onCheckSettingsComplete(II)V
    .registers 5
    .parameter "result"
    .parameter "setupMode"

    .prologue
    .line 621
    if-nez p1, :cond_c

    .line 623
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/email/activity/setup/AccountSettings;->mCurrentFragment:Landroid/app/Fragment;

    .line 624
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettings;->onBackPressed()V

    .line 626
    :cond_c
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 606
    return-void
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .registers 6
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 610
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 612
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/email/activity/setup/AccountSettings;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 613
    return-void
.end method
