.class public Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "ContentSyncDialogFragment.java"


# instance fields
.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LVo;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LZJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a:Lck;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;
    .registers 4
    .parameter

    .prologue
    .line 111
    new-instance v0, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;-><init>()V

    .line 113
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 114
    const-string v2, "accountName"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v1}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->d(Landroid/os/Bundle;)V

    .line 117
    return-object v0
.end method

.method private static a(Landroid/content/Context;LHW;LkG;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-static {p0}, LXH;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 102
    sget v0, LcY;->error_sync:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 107
    :goto_10
    invoke-interface {p1, p2}, LHW;->a(LkG;)V

    .line 108
    return-void

    .line 104
    :cond_14
    sget v0, LcY;->sync_waiting:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10
.end method

.method public static a(Landroid/content/Context;Lx;LkG;LVo;LHW;LZJ;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-virtual {p2}, LkG;->b()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {p0}, LXH;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p5}, LZJ;->f()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    invoke-virtual {p3, p2, v1}, LVo;->a(LkG;Z)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 128
    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a(Ljava/lang/String;)Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;

    move-result-object v0

    .line 129
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 134
    :goto_1f
    return-void

    .line 131
    :cond_20
    invoke-virtual {p3, v0}, LVo;->a(Ljava/lang/String;)V

    .line 132
    invoke-static {p0, p4, p2}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a(Landroid/content/Context;LHW;LkG;)V

    goto :goto_1f
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->g(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a:Lck;

    return-object v0
.end method

.method private g(Z)V
    .registers 5
    .parameter

    .prologue
    .line 90
    if-eqz p1, :cond_9

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a:LVo;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, LVo;->a(Ljava/lang/String;)V

    .line 93
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a:Llu;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a:LHW;

    invoke-static {v1, v2, v0}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a(Landroid/content/Context;LHW;LkG;)V

    .line 95
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a:Lck;

    invoke-interface {v1, v0}, Lck;->a(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "accountName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;->c:Ljava/lang/String;

    .line 58
    invoke-static {v0}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, LcY;->pin_sync_broadband_warning_update_files:I

    new-instance v3, LnV;

    invoke-direct {v3, p0, v0}, LnV;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    new-instance v3, LnU;

    invoke-direct {v3, p0, v0}, LnU;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/ContentSyncDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, LcU;->sync_broadband_warning_dialog:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 86
    return-object v0
.end method
