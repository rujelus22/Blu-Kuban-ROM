.class public Lart;
.super Ljava/lang/Object;
.source "UserFeedbackActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lart;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    iput-object p2, p0, Lart;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lart;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lart;->a:Landroid/content/Context;

    sget v2, Lari;->gf_anonymous:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 231
    iget-object v1, p0, Lart;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v1}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Larm;

    move-result-object v1

    invoke-virtual {v1}, Larm;->a()Larz;

    move-result-object v1

    iput-object v0, v1, Larz;->chosenAccount:Ljava/lang/String;

    .line 235
    :goto_26
    return-void

    .line 233
    :cond_27
    iget-object v0, p0, Lart;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()Larz;

    move-result-object v0

    const-string v1, ""

    iput-object v1, v0, Larz;->chosenAccount:Ljava/lang/String;

    goto :goto_26
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lart;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()Larz;

    move-result-object v0

    const-string v1, ""

    iput-object v1, v0, Larz;->chosenAccount:Ljava/lang/String;

    .line 240
    return-void
.end method
