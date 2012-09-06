.class public Lcom/google/android/apps/docs/fragment/DriveWelcomeDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "DriveWelcomeDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lx;)V
    .registers 3
    .parameter

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/apps/docs/fragment/DriveWelcomeDialogFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/fragment/DriveWelcomeDialogFragment;-><init>()V

    const-string v1, "DriveWelcomeDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/docs/fragment/DriveWelcomeDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method private g()Z
    .registers 2

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DriveWelcomeDialogFragment;->a()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lkg;->c(Landroid/content/res/Resources;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DriveWelcomeDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/google/android/apps/docs/fragment/DriveWelcomeDialogFragment;->a()Lans;

    move-result-object v1

    invoke-static {v1, v0}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 32
    invoke-static {v0}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 33
    sget v2, LcU;->drive_welcome:I

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 34
    sget v2, LcY;->drive_welcome_title_drivev2:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 37
    invoke-direct {p0}, Lcom/google/android/apps/docs/fragment/DriveWelcomeDialogFragment;->g()Z

    move-result v0

    if-nez v0, :cond_31

    .line 38
    sget v0, LcR;->logo_drive_small:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 40
    :cond_31
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 41
    return-object v0
.end method
