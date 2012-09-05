.class public abstract Lcom/google/android/plus1/BasePlusOneSignupActivity;
.super Landroid/app/Activity;
.source "BasePlusOneSignupActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final makeIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .registers 6
    .parameter "context"
    .parameter
    .parameter "accountName"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/plus1/BasePlusOneSignupActivity;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, cls:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/plus1/BasePlusOneSignupActivity;>;"
    const-string v1, "accountName cannot be null"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "plusOneUsername"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    if-eqz p3, :cond_16

    .line 51
    const-string v1, "plusOneUri"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 53
    :cond_16
    return-object v0
.end method


# virtual methods
.method protected getAccount()Ljava/lang/String;
    .registers 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "plusOneUsername"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getCancelButtonText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 69
    const/high16 v0, 0x104

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getPlusOneController(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneController;
.end method

.method protected getPlusOneUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "plusOneUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method protected getSignupButtonText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 65
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getSignupPromptText()Ljava/lang/CharSequence;
.end method

.method protected abstract getSignupPromptTitle()Ljava/lang/CharSequence;
.end method

.method protected onCancelClicked()V
    .registers 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->finish()V

    .line 116
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    if-nez p1, :cond_9

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->showDialog(I)V

    .line 110
    :cond_9
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 74
    packed-switch p1, :pswitch_data_46

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 76
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getSignupPromptTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getSignupPromptText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getSignupButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/google/android/plus1/BasePlusOneSignupActivity$3;

    invoke-direct {v2, p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity$3;-><init>(Lcom/google/android/plus1/BasePlusOneSignupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getCancelButtonText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/google/android/plus1/BasePlusOneSignupActivity$2;

    invoke-direct {v2, p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity$2;-><init>(Lcom/google/android/plus1/BasePlusOneSignupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/plus1/BasePlusOneSignupActivity$1;

    invoke-direct {v1, p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity$1;-><init>(Lcom/google/android/plus1/BasePlusOneSignupActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 74
    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method protected abstract onSignupClicked()V
.end method

.method protected final performFirstPlusOne()V
    .registers 7

    .prologue
    const/4 v5, 0x6

    .line 138
    const-string v3, "PlusOneActivity"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 139
    const-string v3, "PlusOneActivity"

    const-string v4, "Creating first +1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getAccount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getPlusOneController(Ljava/lang/String;)Lcom/google/android/plus1/PlusOneController;

    move-result-object v0

    .line 142
    .local v0, controller:Lcom/google/android/plus1/PlusOneController;
    if-eqz v0, :cond_2c

    .line 143
    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneController;->refreshAccountStatus()V

    .line 144
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getPlusOneUri()Landroid/net/Uri;

    move-result-object v2

    .line 145
    .local v2, plusOneUri:Landroid/net/Uri;
    if-eqz v2, :cond_2c

    .line 147
    :try_start_24
    invoke-virtual {v0}, Lcom/google/android/plus1/PlusOneController;->edit()Lcom/google/android/plus1/PlusOneEditor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/google/android/plus1/PlusOneEditor;->setPlusOne(Landroid/net/Uri;Z)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2c} :catch_2d
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_24 .. :try_end_2c} :catch_3e

    .line 159
    .end local v2           #plusOneUri:Landroid/net/Uri;
    :cond_2c
    :goto_2c
    return-void

    .line 148
    .restart local v2       #plusOneUri:Landroid/net/Uri;
    :catch_2d
    move-exception v1

    .line 149
    .local v1, e:Ljava/io/IOException;
    const-string v3, "PlusOneActivity"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 150
    const-string v3, "PlusOneActivity"

    const-string v4, "Error setting +1"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 152
    .end local v1           #e:Ljava/io/IOException;
    :catch_3e
    move-exception v1

    .line 153
    .local v1, e:Lcom/google/android/plus1/PlusOneReader$PlusOneException;
    const-string v3, "PlusOneActivity"

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 154
    const-string v3, "PlusOneActivity"

    const-string v4, "Error setting +1"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method
