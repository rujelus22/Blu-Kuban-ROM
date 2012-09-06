.class public Lop;
.super Ljava/lang/Object;
.source "DialogUtility.java"


# direct methods
.method public static a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .registers 3
    .parameter

    .prologue
    .line 106
    invoke-static {p0}, Lop;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 107
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method static a(Landroid/content/Context;[Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-static {p0}, Lop;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, p3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Context;
    .registers 3
    .parameter

    .prologue
    .line 98
    new-instance v0, Landroid/view/ContextThemeWrapper;

    sget v1, LcZ;->CakemixTheme_Dialog:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 65
    const-string v0, "accountName"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, LafQ;->a(Z)V

    .line 66
    const-string v0, "accountName"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/app/AlertDialog;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 86
    if-gez p1, :cond_a

    .line 91
    :goto_9
    return-void

    .line 89
    :cond_a
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 90
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_9
.end method

.method public static a(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    const-string v0, "accountName"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
