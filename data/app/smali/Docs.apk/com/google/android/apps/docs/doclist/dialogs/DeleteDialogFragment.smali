.class public Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;
.super Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;
.source "DeleteDialogFragment.java"


# instance fields
.field public a:LRS;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Set;)Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v1, "resIds"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 64
    new-instance v1, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;

    invoke-direct {v1}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;-><init>()V

    .line 65
    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->d(Landroid/os/Bundle;)V

    .line 66
    return-object v1
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;)Ljava/util/Set;
    .registers 2
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic a(LRR;LkT;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->b(LRR;LkT;)Z

    move-result v0

    return v0
.end method

.method private static b(LRR;LkT;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1}, LkT;->i()Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {p1}, LkT;->a()LkG;

    move-result-object v2

    .line 130
    invoke-virtual {v2}, LkG;->b()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-interface {p0, v3, v0}, LRR;->a(Ljava/lang/String;Ljava/lang/String;)LSs;

    move-result-object v4

    .line 134
    if-nez v4, :cond_15

    move v0, v1

    .line 157
    :goto_14
    return v0

    .line 138
    :cond_15
    invoke-virtual {v4}, LSs;->p()Ljava/lang/String;

    move-result-object v0

    .line 139
    if-nez v0, :cond_51

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://docs.google.com/feeds/default/private/full/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, LSs;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, LSs;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_51
    invoke-virtual {v4}, LSs;->w()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v0, v3, v4}, LRR;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    move v0, v1

    .line 146
    goto :goto_14

    .line 151
    :cond_5d
    :try_start_5d
    invoke-virtual {p1}, LkT;->b()V

    .line 152
    invoke-virtual {v2}, LkG;->a()V
    :try_end_63
    .catch Landroid/database/SQLException; {:try_start_5d .. :try_end_63} :catch_65

    .line 157
    :goto_63
    const/4 v0, 0x1

    goto :goto_14

    .line 153
    :catch_65
    move-exception v0

    .line 154
    const-string v1, "DeleteDialogFactory"

    const-string v2, "Failed to delete entry in database"

    invoke-static {v1, v2, v0}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_63
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a()Lans;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a:Llu;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v1

    .line 84
    if-eqz v1, :cond_20

    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    move-object v0, v3

    .line 119
    :goto_21
    return-object v0

    .line 90
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v5, :cond_a0

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a:Llu;

    invoke-interface {v2, v1, v0}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v2

    .line 93
    if-nez v2, :cond_40

    move-object v0, v3

    .line 94
    goto :goto_21

    .line 97
    :cond_40
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a:LdQ;

    sget v1, LcY;->delete_collection:I

    invoke-virtual {v0, v1}, LdQ;->a(I)I

    move-result v0

    .line 99
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v4, LcY;->ask_confirmation_for_document_deletion:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, LkT;->c()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {v2}, LkT;->o()Z

    move-result v2

    if-eqz v2, :cond_9d

    :goto_60
    move-object v2, v1

    move v1, v0

    .line 108
    :goto_62
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v4

    .line 110
    invoke-virtual {p0, v4}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a(Landroid/app/Dialog;)Landroid/view/View;

    move-result-object v5

    .line 111
    sget v0, LcS;->new_name:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 112
    invoke-virtual {p0, v4, v7, v3}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a(Landroid/app/Dialog;ILjava/lang/String;)V

    .line 113
    invoke-virtual {v4, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 115
    sget v0, LcS;->new_name:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 116
    sget v0, LcS;->btn_ok:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget v1, LcY;->button_yes:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 117
    sget v0, LcS;->first_label:I

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v4

    .line 119
    goto :goto_21

    .line 101
    :cond_9d
    sget v0, LcY;->delete_document:I

    goto :goto_60

    .line 103
    :cond_a0
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget v1, LcY;->ask_confirmation_for_document_deletion_multiple:I

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 105
    sget v0, LcY;->delete_multiple:I

    move-object v2, v1

    move v1, v0

    goto :goto_62
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->c:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "resIds"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a:Ljava/util/Set;

    .line 75
    return-void
.end method

.method protected p()V
    .registers 5

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    sget v2, LcY;->status_deleting:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a(Landroid/app/Dialog;ILjava/lang/String;)V

    .line 164
    new-instance v0, Lpm;

    invoke-direct {v0, p0}, Lpm;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;)V

    .line 165
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a:LRS;

    invoke-interface {v1, v0}, LRS;->a(Lmo;)LRR;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a:Llu;

    iget-object v3, p0, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->c:Ljava/lang/String;

    invoke-interface {v2, v3}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v2

    .line 167
    if-nez v2, :cond_2e

    .line 168
    const-string v0, "DeleteDialogFactory"

    const-string v1, "Account is null."

    invoke-static {v0, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;->a()V

    .line 198
    :goto_2d
    return-void

    .line 172
    :cond_2e
    new-instance v3, Loe;

    invoke-direct {v3, p0, v2, v1, v0}, Loe;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/DeleteDialogFragment;LkG;LRR;Lpm;)V

    invoke-virtual {v3}, Loe;->start()V

    goto :goto_2d
.end method
