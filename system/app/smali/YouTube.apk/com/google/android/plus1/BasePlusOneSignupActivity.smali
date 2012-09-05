.class public abstract Lcom/google/android/plus1/BasePlusOneSignupActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    const-string v0, "accountName cannot be null"

    invoke-static {p2, v0}, Lcom/google/common/base/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v1, "plusOneUsername"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    if-eqz p4, :cond_16

    .line 72
    const-string v1, "abuseToken"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :cond_16
    if-eqz p3, :cond_1d

    .line 75
    const-string v1, "plusOneUri"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 77
    :cond_1d
    return-object v0
.end method


# virtual methods
.method protected abstract a()Ljava/lang/CharSequence;
.end method

.method protected abstract b()Ljava/lang/CharSequence;
.end method

.method protected abstract c()V
.end method

.method protected final d()V
    .registers 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->finish()V

    .line 140
    return-void
.end method

.method protected abstract e()Lcom/google/android/plus1/w;
.end method

.method protected final f()Ljava/lang/String;
    .registers 3

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "plusOneUsername"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final g()V
    .registers 7

    .prologue
    const/4 v5, 0x6

    .line 166
    const-string v0, "PlusOneActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 167
    const-string v0, "PlusOneActivity"

    const-string v1, "Creating first +1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->f()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->e()Lcom/google/android/plus1/w;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_3d

    .line 171
    invoke-virtual {v1}, Lcom/google/android/plus1/w;->b()V

    .line 172
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "plusOneUri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 173
    if-eqz v0, :cond_3d

    .line 175
    :try_start_2b
    invoke-virtual {v1}, Lcom/google/android/plus1/w;->a()Lcom/google/android/plus1/ak;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "abuseToken"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/plus1/ak;->a(Landroid/net/Uri;ZLjava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_3d} :catch_3e
    .catch Lcom/google/android/plus1/PlusOneReader$PlusOneException; {:try_start_2b .. :try_end_3d} :catch_4f

    .line 187
    :cond_3d
    :goto_3d
    return-void

    .line 176
    :catch_3e
    move-exception v0

    .line 177
    const-string v1, "PlusOneActivity"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 178
    const-string v1, "PlusOneActivity"

    const-string v2, "Error setting +1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d

    .line 180
    :catch_4f
    move-exception v0

    .line 181
    const-string v1, "PlusOneActivity"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 182
    const-string v1, "PlusOneActivity"

    const-string v2, "Error setting +1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3d
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    if-nez p1, :cond_9

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->showDialog(I)V

    .line 134
    :cond_9
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    .line 98
    packed-switch p1, :pswitch_data_4a

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 100
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/google/android/plus1/k;

    invoke-direct {v2, p0}, Lcom/google/android/plus1/k;-><init>(Lcom/google/android/plus1/BasePlusOneSignupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/google/android/plus1/j;

    invoke-direct {v2, p0}, Lcom/google/android/plus1/j;-><init>(Lcom/google/android/plus1/BasePlusOneSignupActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/plus1/i;

    invoke-direct {v1, p0}, Lcom/google/android/plus1/i;-><init>(Lcom/google/android/plus1/BasePlusOneSignupActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_7

    .line 98
    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
