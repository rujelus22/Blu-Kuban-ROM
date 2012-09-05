.class Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;
.super Ljava/lang/Object;
.source "AccountSettingsXL.java"

# interfaces
.implements Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettingsXL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountServerSettingsFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettingsXL;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V
    .registers 2
    .parameter

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettingsXL;Lcom/android/email/activity/setup/AccountSettingsXL$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1199
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettingsXL;)V

    return-void
.end method


# virtual methods
.method public onCheckSettingsComplete(II)V
    .registers 5
    .parameter "result"
    .parameter "setupMode"

    .prologue
    .line 1232
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mProceedButtonPressed:Z

    .line 1233
    if-nez p1, :cond_f

    .line 1235
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/email/activity/setup/AccountSettingsXL;->mCurrentFragment:Landroid/app/Fragment;

    .line 1236
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v0}, Lcom/android/email/activity/setup/AccountSettingsXL;->onBackPressed()V

    .line 1238
    :cond_f
    return-void
.end method

.method public onEnableProceedButtons(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 1204
    return-void
.end method

.method public onProceedNext(ILcom/android/email/activity/setup/AccountServerBaseFragment;)V
    .registers 9
    .parameter "checkMode"
    .parameter "target"

    .prologue
    .line 1211
    iget-object v4, p0, Lcom/android/email/activity/setup/AccountSettingsXL$AccountServerSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettingsXL;

    invoke-virtual {v4}, Lcom/android/email/activity/setup/AccountSettingsXL;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1212
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v4, "UnsavedChangesDialogFragment"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    .line 1213
    .local v3, prevUCDF:Landroid/app/Fragment;
    const-string v4, "AccountCheckSettingsFragment"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    .line 1215
    .local v2, prevACSF:Landroid/app/Fragment;
    if-nez v3, :cond_2d

    if-nez v2, :cond_2d

    .line 1217
    :try_start_16
    invoke-static {p1, p2}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    move-result-object v0

    .line 1219
    .local v0, checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    const-string v5, "AccountCheckSettingsFragment"

    invoke-virtual {v4, v0, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    const-string v5, "back"

    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_2d} :catch_2e

    .line 1224
    .end local v0           #checkerFragment:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;
    :cond_2d
    :goto_2d
    return-void

    .line 1220
    :catch_2e
    move-exception v4

    goto :goto_2d
.end method
