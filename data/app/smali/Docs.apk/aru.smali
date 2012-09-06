.class public Laru;
.super Ljava/lang/Object;
.source "UserFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Laru;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Laru;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Laru;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    sget v2, Lari;->gf_privacy_policy:I

    invoke-virtual {v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Laru;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    sget v2, Lari;->gf_privacy_text:I

    invoke-virtual {v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 251
    const-string v1, "OK"

    new-instance v2, Larv;

    invoke-direct {v2, p0}, Larv;-><init>(Laru;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 258
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 259
    return-void
.end method
