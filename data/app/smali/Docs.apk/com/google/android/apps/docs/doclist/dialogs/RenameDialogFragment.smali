.class public Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;
.super Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;
.source "RenameDialogFragment.java"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "resId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;

    invoke-direct {v1}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;-><init>()V

    .line 47
    invoke-virtual {v1, v0}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->d(Landroid/os/Bundle;)V

    .line 48
    return-object v1
.end method

.method private a()LkG;
    .registers 5

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a:Llu;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 66
    if-nez v0, :cond_27

    .line 67
    const-string v1, "RenameDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a()V

    .line 70
    :cond_27
    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a()Lans;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 79
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a()LkG;

    move-result-object v0

    .line 80
    if-nez v0, :cond_14

    move-object v0, v2

    .line 102
    :goto_13
    return-object v0

    .line 83
    :cond_14
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a:Llu;

    iget-object v3, p0, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v4

    .line 84
    if-nez v4, :cond_20

    move-object v0, v2

    .line 85
    goto :goto_13

    .line 88
    :cond_20
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    .line 90
    invoke-virtual {p0, v3}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a(Landroid/app/Dialog;)Landroid/view/View;

    move-result-object v0

    sget v1, LcS;->new_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 91
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1, v2}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a(Landroid/app/Dialog;ILjava/lang/String;)V

    .line 92
    invoke-virtual {v4}, LkT;->o()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a:LdQ;

    sget v5, LcY;->rename_collection:I

    invoke-virtual {v1, v5}, LdQ;->a(I)I

    move-result v1

    .line 95
    :goto_42
    invoke-virtual {v3, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 97
    if-eqz p1, :cond_5a

    const-string v1, "newName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_4d
    if-eqz v1, :cond_5c

    .line 99
    :goto_4f
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    move-object v0, v3

    .line 102
    goto :goto_13

    .line 92
    :cond_57
    sget v1, LcY;->rename_document:I

    goto :goto_42

    :cond_5a
    move-object v1, v2

    .line 97
    goto :goto_4d

    .line 98
    :cond_5c
    invoke-virtual {v4}, LkT;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_4f
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->a(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->c:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "resId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->d:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .registers 4
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;->c(Landroid/os/Bundle;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a()Landroid/app/Dialog;

    move-result-object v0

    sget v1, LcS;->new_name:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 110
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "newName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method protected p()V
    .registers 7

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a()LkG;

    move-result-object v4

    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a(Landroid/app/Dialog;)Landroid/view/View;

    move-result-object v0

    sget v1, LcS;->new_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 118
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a:Llu;

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->d:Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Llu;->a(LkG;Ljava/lang/String;)LkT;

    move-result-object v2

    .line 120
    if-nez v2, :cond_53

    .line 121
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, LcY;->error_document_not_available:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a(Landroid/app/Dialog;ILjava/lang/String;)V

    .line 123
    const-string v0, "RenameDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to rename a null Entry with resourceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_52
    return-void

    .line 125
    :cond_53
    new-instance v1, Lmf;

    invoke-direct {v1, v2, v0}, Lmf;-><init>(LkT;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a:Lmi;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/dialogs/RenameDialogFragment;->a()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v5, Lpm;

    invoke-direct {v5, p0}, Lpm;-><init>(Lcom/google/android/apps/docs/doclist/dialogs/OperationDialogFragment;)V

    invoke-static/range {v0 .. v5}, Lmp;->a(Lmi;Lmg;LkT;Landroid/content/Context;LkG;Lmo;)I

    goto :goto_52
.end method
