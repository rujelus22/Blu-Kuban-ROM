.class public Lcom/android/email/activity/UiUtilities;
.super Ljava/lang/Object;
.source "UiUtilities.java"


# static fields
.field private static sDebugForcedPaneMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 152
    const/4 v0, 0x0

    sput v0, Lcom/android/email/activity/UiUtilities;->sDebugForcedPaneMode:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static installFragment(Landroid/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 135
    .local v0, a:Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/email/activity/FragmentInstallable;

    if-eqz v1, :cond_d

    .line 136
    check-cast v0, Lcom/android/email/activity/FragmentInstallable;

    .end local v0           #a:Landroid/app/Activity;
    invoke-interface {v0, p0}, Lcom/android/email/activity/FragmentInstallable;->onInstallFragment(Landroid/app/Fragment;)V

    .line 138
    :cond_d
    return-void
.end method

.method public static uninstallFragment(Landroid/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 147
    .local v0, a:Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/email/activity/FragmentInstallable;

    if-eqz v1, :cond_d

    .line 148
    check-cast v0, Lcom/android/email/activity/FragmentInstallable;

    .end local v0           #a:Landroid/app/Activity;
    invoke-interface {v0, p0}, Lcom/android/email/activity/FragmentInstallable;->onUninstallFragment(Landroid/app/Fragment;)V

    .line 150
    :cond_d
    return-void
.end method
