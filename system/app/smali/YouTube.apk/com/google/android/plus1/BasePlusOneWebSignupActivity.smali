.class public abstract Lcom/google/android/plus1/BasePlusOneWebSignupActivity;
.super Lcom/google/android/plus1/BasePlusOneSignupActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/android/plus1/p;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;-><init>()V

    .line 157
    return-void
.end method

.method static synthetic a(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;Lcom/google/android/plus1/p;)Lcom/google/android/plus1/p;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->a:Lcom/google/android/plus1/p;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 150
    if-eqz p1, :cond_13

    const-string v0, "confirmed"

    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 152
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->g()V

    .line 154
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->finish()V

    .line 155
    return-void
.end method

.method protected final c()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 96
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->showDialog(I)V

    .line 97
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->a:Lcom/google/android/plus1/p;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/plus1/p;

    invoke-direct {v0, v3}, Lcom/google/android/plus1/p;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->a:Lcom/google/android/plus1/p;

    :cond_10
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->a:Lcom/google/android/plus1/p;

    new-instance v1, Lcom/google/android/plus1/a/c;

    new-instance v2, Lcom/google/android/plus1/o;

    invoke-direct {v2, p0, v3}, Lcom/google/android/plus1/o;-><init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;B)V

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->h()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/plus1/a/c;-><init>(Lcom/google/android/plus1/a/b;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/plus1/p;->a:Lcom/google/android/plus1/a/c;

    .line 100
    return-void
.end method

.method protected abstract h()Ljava/lang/String;
.end method

.method protected abstract i()Ljava/lang/CharSequence;
.end method

.method protected final j()V
    .registers 2

    .prologue
    .line 129
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    .line 133
    :goto_4
    return-void

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method protected abstract k()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/p;

    iput-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->a:Lcom/google/android/plus1/p;

    .line 89
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->a:Lcom/google/android/plus1/p;

    if-eqz v0, :cond_1c

    .line 90
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->a:Lcom/google/android/plus1/p;

    iget-object v0, v0, Lcom/google/android/plus1/p;->a:Lcom/google/android/plus1/a/c;

    new-instance v1, Lcom/google/android/plus1/o;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/plus1/o;-><init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;B)V

    invoke-virtual {v0, v1}, Lcom/google/android/plus1/a/c;->a(Lcom/google/android/plus1/a/b;)V

    .line 92
    :cond_1c
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 108
    packed-switch p1, :pswitch_data_24

    .line 121
    invoke-super {p0, p1}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_8
    return-object v0

    .line 110
    :pswitch_9
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->i()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 113
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 114
    new-instance v1, Lcom/google/android/plus1/n;

    invoke-direct {v1, p0}, Lcom/google/android/plus1/n;-><init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_8

    .line 108
    :pswitch_data_24
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->a:Lcom/google/android/plus1/p;

    return-object v0
.end method
