.class public abstract Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "OperationDialogFragment.java"


# instance fields
.field public a:Llu;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:Lmi;
    .annotation runtime Lanr;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 113
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a()Lans;

    move-result-object v0

    invoke-static {v0, v3}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 115
    new-instance v4, Landroid/app/Dialog;

    invoke-static {v3}, Lop;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 116
    sget v0, LcU;->operation_dialog:I

    invoke-virtual {v4, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 117
    invoke-virtual {p0, v4}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a(Landroid/app/Dialog;)Landroid/view/View;

    move-result-object v0

    .line 118
    sget v1, LcS;->new_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 119
    sget v1, LcS;->btn_ok:I

    invoke-virtual {v4, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 120
    sget v2, LcS;->btn_cancel:I

    invoke-virtual {v4, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 121
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 122
    new-instance v5, Lpm;

    invoke-direct {v5, p0}, Lpm;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;)V

    .line 123
    new-instance v5, Lpj;

    invoke-direct {v5, p0, v3}, Lpj;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;Landroid/support/v4/app/FragmentActivity;)V

    .line 131
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    new-instance v1, Lpk;

    invoke-direct {v1, p0, v3, v4}, Lpk;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;Landroid/support/v4/app/FragmentActivity;Landroid/app/Dialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v1, Lpl;

    invoke-direct {v1, p0, v3, v4}, Lpl;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;Landroid/support/v4/app/FragmentActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 151
    return-object v4
.end method

.method protected a(Landroid/app/Dialog;)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 155
    sget v0, LcS;->root_node:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Dialog;ILjava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 90
    invoke-virtual {p0, p1}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a(Landroid/app/Dialog;)Landroid/view/View;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_14

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_14

    .line 108
    :goto_13
    return-void

    .line 96
    :cond_14
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 97
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    sget v0, LcS;->status_message:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    if-ne p2, v4, :cond_48

    sget v1, LcP;->operation_dialog_syncing:I

    .line 102
    :goto_2f
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 104
    sget v1, LcS;->sync_in_progress:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-ne p2, v4, :cond_4b

    const/4 v1, 0x0

    :goto_3f
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    if-eqz p3, :cond_4e

    :goto_44
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 100
    :cond_48
    sget v1, LcP;->operation_dialog_error:I

    goto :goto_2f

    .line 104
    :cond_4b
    const/16 v1, 0x8

    goto :goto_3f

    .line 107
    :cond_4e
    const-string p3, ""

    goto :goto_44
.end method

.method public abstract p()V
.end method
