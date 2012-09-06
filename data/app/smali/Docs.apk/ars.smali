.class public Lars;
.super Ljava/lang/Object;
.source "UserFeedbackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/app/Activity;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lars;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    iput-object p2, p0, Lars;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lars;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Larm;

    move-result-object v0

    iget-object v1, p0, Lars;->a:Landroid/app/Activity;

    iget-object v2, p0, Lars;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v2}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v2

    iget-object v3, p0, Lars;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v3

    iget-object v4, p0, Lars;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v4}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Larm;->a(Landroid/app/Activity;ZZLjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 212
    if-nez v0, :cond_57

    .line 213
    iget-object v0, p0, Lars;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Larm;

    move-result-object v0

    iget-object v1, p0, Lars;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v1

    iget-object v2, p0, Lars;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v2}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->b(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Z

    move-result v2

    iget-object v3, p0, Lars;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v3}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Larm;->a(ZZLjava/lang/String;)V

    .line 215
    iget-object v0, p0, Lars;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->setResult(I)V

    .line 216
    iget-object v0, p0, Lars;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->finish()V

    .line 220
    :goto_56
    return-void

    .line 218
    :cond_57
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_56
.end method
