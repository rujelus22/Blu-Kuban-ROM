.class public Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "VersionCheckDialogFragment.java"


# instance fields
.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LXJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lht;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public b:LdQ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation runtime Lanr;
    .end annotation

    .annotation runtime Laqa;
        value = "marketFlag"
    .end annotation
.end field

.field public m:I
    .annotation runtime Lanr;
    .end annotation

    .annotation runtime Laqa;
        value = "tooOldTitle"
    .end annotation
.end field

.field public n:I
    .annotation runtime Lanr;
    .end annotation

    .annotation runtime Laqa;
        value = "tooOldMessage"
    .end annotation
.end field

.field public o:I
    .annotation runtime Lanr;
    .end annotation

    .annotation runtime Laqa;
        value = "tooOldClose"
    .end annotation
.end field

.field public p:I
    .annotation runtime Lanr;
    .end annotation

    .annotation runtime Laqa;
        value = "tooOldUpgrade"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a:Lck;

    return-object v0
.end method

.method public static a(Lx;)V
    .registers 3
    .parameter

    .prologue
    .line 126
    new-instance v0, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;-><init>()V

    .line 127
    const-string v1, "VersionCheck"

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a:Lck;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x2

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 75
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->m:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->b:LdQ;

    iget v3, p0, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->n:I

    invoke-virtual {v2, v3}, LdQ;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->o:I

    new-instance v3, Lhv;

    invoke-direct {v3, p0}, Lhv;-><init>(Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->p:I

    new-instance v3, Lhu;

    invoke-direct {v3, p0}, Lhu;-><init>(Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 114
    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a(Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a:Lht;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lht;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/docs/app/VersionCheckDialogFragment;->a()V

    .line 69
    :cond_12
    return-void
.end method
