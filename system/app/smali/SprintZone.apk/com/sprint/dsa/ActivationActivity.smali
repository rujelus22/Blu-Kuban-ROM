.class public Lcom/sprint/dsa/ActivationActivity;
.super Landroid/app/Activity;
.source "ActivationActivity.java"

# interfaces
.implements Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/dsa/ActivationActivity$ActivationTask;
    }
.end annotation


# static fields
.field private static final CONNECTING_KEY:I = 0x0

.field private static final RETRY_KEY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SprintZone_PageMain"


# instance fields
.field private isFactoryDefault:Z

.field mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissProgressDialog()V
    .registers 4

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/ActivationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_c

    .line 83
    iget-object v1, p0, Lcom/sprint/dsa/ActivationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sprint/dsa/ActivationActivity;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_c} :catch_d

    .line 89
    :cond_c
    :goto_c
    return-void

    .line 86
    :catch_d
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "SprintZone_PageMain"

    const-string v2, "IGNORE"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public onCancel()V
    .registers 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/sprint/dsa/ActivationActivity;->finish()V

    .line 78
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v1, Lcom/sprint/dsa/ActivationActivity$ActivationTask;

    invoke-direct {v1, p0}, Lcom/sprint/dsa/ActivationActivity$ActivationTask;-><init>(Lcom/sprint/dsa/ActivationActivity;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/sprint/dsa/ActivationActivity$ActivationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 34
    :try_start_e
    invoke-static {p0}, Lcom/sprint/dsa/dss/DsaDiag;->isFactoryDefault(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/dsa/ActivationActivity;->isFactoryDefault:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_18

    .line 38
    :goto_14
    invoke-virtual {p0, v3}, Lcom/sprint/dsa/ActivationActivity;->showDialog(I)V

    .line 39
    return-void

    .line 35
    :catch_18
    move-exception v0

    .line 36
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SprintZone_PageMain"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    .line 43
    packed-switch p1, :pswitch_data_66

    .line 65
    :goto_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 45
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sprint/dsa/ActivationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 46
    iget-boolean v0, p0, Lcom/sprint/dsa/ActivationActivity;->isFactoryDefault:Z

    if-eqz v0, :cond_33

    .line 47
    iget-object v0, p0, Lcom/sprint/dsa/ActivationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 48
    iget-object v0, p0, Lcom/sprint/dsa/ActivationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080036

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 52
    :goto_24
    iget-object v0, p0, Lcom/sprint/dsa/ActivationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 53
    iget-object v0, p0, Lcom/sprint/dsa/ActivationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 54
    iget-object v0, p0, Lcom/sprint/dsa/ActivationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 50
    :cond_33
    iget-object v0, p0, Lcom/sprint/dsa/ActivationActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0800cc

    invoke-virtual {p0, v1}, Lcom/sprint/dsa/ActivationActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 57
    :pswitch_40
    invoke-virtual {p0}, Lcom/sprint/dsa/ActivationActivity;->dismissProgressDialog()V

    .line 59
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 61
    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/sprint/dsa/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p0

    .line 58
    invoke-static/range {v0 .. v5}, Lcom/sprint/dsa/widget/ConfirmationDialog;->open(Landroid/content/Context;Lcom/sprint/dsa/widget/ConfirmationDialog$Callback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sprint/dsa/widget/ConfirmationDialog;

    goto :goto_3

    .line 43
    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_5
        :pswitch_40
    .end packed-switch
.end method

.method public onOk()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/sprint/dsa/ActivationActivity$ActivationTask;

    invoke-direct {v0, p0}, Lcom/sprint/dsa/ActivationActivity$ActivationTask;-><init>(Lcom/sprint/dsa/ActivationActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sprint/dsa/ActivationActivity$ActivationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    invoke-virtual {p0, v2}, Lcom/sprint/dsa/ActivationActivity;->showDialog(I)V

    .line 73
    return-void
.end method
