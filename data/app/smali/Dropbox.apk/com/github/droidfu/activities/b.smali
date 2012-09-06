.class public final Lcom/github/droidfu/activities/b;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Landroid/app/Activity;)I
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 52
    if-nez v0, :cond_7

    .line 61
    :cond_7
    return v1
.end method

.method public static a(Landroid/app/Activity;II)Landroid/app/ProgressDialog;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 70
    if-lez p1, :cond_20

    .line 71
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 76
    :goto_a
    if-lez p2, :cond_34

    .line 77
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 83
    :goto_13
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 84
    new-instance v1, Lcom/github/droidfu/activities/c;

    invoke-direct {v1, p0}, Lcom/github/droidfu/activities/c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 91
    return-object v0

    .line 73
    :cond_20
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "droidfu_progress_dialog_title"

    const-string v3, "string"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    goto :goto_a

    .line 79
    :cond_34
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "droidfu_progress_dialog_message"

    const-string v3, "string"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 81
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_13
.end method
