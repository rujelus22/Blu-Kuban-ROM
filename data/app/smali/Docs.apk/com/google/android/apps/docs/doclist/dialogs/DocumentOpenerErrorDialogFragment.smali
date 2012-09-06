.class public Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "DocumentOpenerErrorDialogFragment.java"


# instance fields
.field public a:Low;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public b:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Lck;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private v:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    .line 37
    return-void
.end method

.method public static a(Lx;LpQ;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 147
    const-string v0, "DocumentOpenerErrorDialogFragment"

    invoke-virtual {p0, v0}, Lx;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 148
    if-eqz v0, :cond_d

    .line 149
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->a()V

    .line 152
    :cond_d
    new-instance v0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;-><init>()V

    .line 154
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 155
    const-string v2, "documentOpenerError"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 156
    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->d(Landroid/os/Bundle;)V

    .line 157
    const-string v1, "DocumentOpenerErrorDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/DialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static a(Lx;)Z
    .registers 2
    .parameter

    .prologue
    .line 161
    const-string v0, "DocumentOpenerErrorDialogFragment"

    invoke-virtual {p0, v0}, Lx;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->a()Lans;

    move-result-object v0

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 112
    invoke-static {v1}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->b:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdL;

    invoke-virtual {v0}, LdL;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 114
    sget v0, LcY;->error_page_title:I

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->a:LdQ;

    iget v3, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->m:I

    invoke-virtual {v0, v3}, LdQ;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 118
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 119
    iget-boolean v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->v:Z

    if-eqz v0, :cond_44

    .line 120
    sget v0, LcY;->button_retry:I

    new-instance v3, Lot;

    invoke-direct {v3, p0, v1}, Lot;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 128
    :cond_44
    const/high16 v0, 0x104

    new-instance v3, Lou;

    invoke-direct {v3, p0, v1}, Lou;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 58
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "documentOpenerError"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, LpQ;

    .line 63
    sget-object v1, Lov;->a:[I

    invoke-virtual {v0}, LpQ;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_4e

    .line 95
    sget v0, LcY;->error_internal_error_html:I

    iput v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->m:I

    .line 100
    :goto_1f
    :pswitch_1f
    iget v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->m:I

    if-nez v0, :cond_2a

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->b(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->a()V

    .line 105
    :cond_2a
    return-void

    .line 69
    :pswitch_2b
    sget v0, LcY;->error_access_denied_html:I

    iput v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->m:I

    goto :goto_1f

    .line 73
    :pswitch_30
    sget v0, LcY;->error_network_error_html:I

    iput v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->m:I

    .line 74
    iput-boolean v2, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->v:Z

    goto :goto_1f

    .line 78
    :pswitch_37
    sget v0, LcY;->error_document_not_available:I

    iput v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->m:I

    goto :goto_1f

    .line 82
    :pswitch_3c
    sget v0, LcY;->error_no_viewer_available:I

    iput v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->m:I

    goto :goto_1f

    .line 86
    :pswitch_41
    sget v0, LcY;->pin_error_external_storage_not_ready:I

    iput v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->m:I

    .line 87
    iput-boolean v2, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->v:Z

    goto :goto_1f

    .line 91
    :pswitch_48
    sget v0, LcY;->error_video_not_available:I

    iput v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->m:I

    goto :goto_1f

    .line 63
    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_2b
        :pswitch_30
        :pswitch_37
        :pswitch_3c
        :pswitch_41
        :pswitch_48
    .end packed-switch
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/DocumentOpenerErrorDialogFragment;->a()Lans;

    move-result-object v1

    invoke-static {v1, v0}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 143
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 144
    return-void
.end method
