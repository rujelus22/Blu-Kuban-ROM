.class public abstract Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "SelectionDialogFragment.java"


# instance fields
.field private a:Landroid/app/AlertDialog;

.field private a:[Ljava/lang/String;

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->n:I

    return-void
.end method

.method public static synthetic a(Landroid/content/DialogInterface;)I
    .registers 2
    .parameter

    .prologue
    .line 29
    invoke-static {p0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->b(Landroid/content/DialogInterface;)I

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a:Lck;

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;I[Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const-string v0, "titleId"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string v0, "choiceItems"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private static b(Landroid/content/DialogInterface;)I
    .registers 3
    .parameter

    .prologue
    .line 67
    instance-of v0, p0, Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    .line 68
    check-cast p0, Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_11

    .line 70
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 74
    :goto_10
    return v0

    .line 73
    :cond_11
    const-string v0, "SelectionDialogFactory"

    const-string v1, "Unable to determine dialog selection."

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v0, -0x1

    goto :goto_10
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->m:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, LQh;

    invoke-direct {v2, p0}, LQh;-><init>(Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a:Landroid/app/AlertDialog;

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->a(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "titleId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->m:I

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "choiceItems"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a:[Ljava/lang/String;

    .line 84
    if-eqz p1, :cond_25

    .line 85
    const-string v0, "selection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->n:I

    .line 87
    :cond_25
    return-void
.end method

.method protected b()I
    .registers 3

    .prologue
    .line 128
    iget v0, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, LafQ;->b(Z)V

    .line 129
    iget v0, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->n:I

    return v0

    .line 128
    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public abstract b(I)V
.end method

.method public c(I)V
    .registers 2
    .parameter

    .prologue
    .line 133
    iput p1, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->n:I

    .line 134
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->c(Landroid/os/Bundle;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->b(Landroid/content/DialogInterface;)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->n:I

    .line 117
    const-string v0, "selection"

    iget v1, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    return-void
.end method

.method public f()V
    .registers 4

    .prologue
    .line 122
    invoke-super {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;->f()V

    .line 123
    invoke-virtual {p0}, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->b()I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/google/android/apps/docs/sharingactivity/SelectionDialogFragment;->a:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 125
    return-void
.end method
