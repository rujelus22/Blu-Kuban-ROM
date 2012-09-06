.class public Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;
.super Lcom/google/android/apps/docs/app/BaseDialogFragment;
.source "SortSelectionDialogFragment.java"


# instance fields
.field public b:LanD;
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "LpF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/apps/docs/app/BaseDialogFragment;-><init>()V

    .line 33
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;)Lck;
    .registers 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;->a:Lck;

    return-object v0
.end method

.method public static a(Lx;LsO;Ljava/util/EnumSet;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx;",
            "LsO;",
            "Ljava/util/EnumSet",
            "<",
            "LsO;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;

    invoke-direct {v0}, Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;-><init>()V

    .line 92
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 93
    const-string v2, "currentSortKind"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 94
    const-string v2, "availableSortKinds"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->d(Landroid/os/Bundle;)V

    .line 96
    const-string v1, "SortSelectionDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/DialogFragment;->a(Lx;Ljava/lang/String;)V

    .line 97
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 13
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;->a:Lck;

    invoke-interface {v0, v7}, Lck;->a(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v1

    .line 54
    const-string v0, "currentSortKind"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, LsO;

    .line 57
    const-string v2, "availableSortKinds"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/EnumSet;

    .line 59
    new-array v2, v4, [LsO;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [LsO;

    .line 60
    array-length v2, v1

    new-array v8, v2, [Ljava/lang/CharSequence;

    .line 62
    const/4 v2, -0x1

    .line 63
    array-length v9, v1

    move v5, v4

    move v3, v4

    :goto_2d
    if-ge v5, v9, :cond_49

    aget-object v6, v1, v5

    .line 64
    invoke-virtual {v6}, LsO;->a()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v8, v3

    .line 65
    invoke-virtual {v6, v0}, LsO;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    move v2, v3

    .line 68
    :cond_42
    add-int/lit8 v6, v3, 0x1

    .line 63
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v6

    goto :goto_2d

    .line 71
    :cond_49
    if-ltz v2, :cond_69

    const/4 v0, 0x1

    :goto_4c
    const-string v3, "Selected sorting is not included in available sorting options"

    invoke-static {v0, v3}, LafQ;->a(ZLjava/lang/Object;)V

    .line 73
    invoke-static {v7}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v3, LcY;->menu_sort_by:I

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, LpE;

    invoke-direct {v3, p0, v7, v1}, LpE;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/SortSelectionDialogFragment;Landroid/content/Context;[LsO;)V

    invoke-virtual {v0, v8, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 86
    return-object v0

    :cond_69
    move v0, v4

    .line 71
    goto :goto_4c
.end method
