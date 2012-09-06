.class public Lcom/google/userfeedback/android/api/ShowTextActivity;
.super Landroid/app/Activity;
.source "ShowTextActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 63
    if-nez p1, :cond_18

    .line 64
    sget v0, Larg;->gf_text_view:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    sget v0, Larg;->gf_empty_view:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :goto_17
    return-void

    .line 67
    :cond_18
    sget v0, Larg;->gf_text:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 68
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    sget v0, Larg;->gf_empty_view:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 70
    sget v0, Larg;->gf_text_view:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_17
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v0, Larh;->gf_show_text_activity:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "feedback.FIELD_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {}, Larm;->a()Larm;

    move-result-object v1

    invoke-virtual {v1}, Larm;->a()Larz;

    move-result-object v1

    .line 41
    if-nez v1, :cond_20

    .line 42
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->finish()V

    .line 57
    :goto_1f
    return-void

    .line 46
    :cond_20
    const-string v2, "systemLog"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 47
    sget v0, Lari;->gf_error_report_system_log:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->setTitle(I)V

    .line 48
    iget-object v0, v1, Larz;->systemLog:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->a(Ljava/lang/String;)V

    goto :goto_1f

    .line 49
    :cond_33
    const-string v2, "serviceDetails"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 50
    sget v0, Lari;->gf_error_report_running_service_details:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->setTitle(I)V

    goto :goto_1f

    .line 51
    :cond_41
    const-string v2, "stackTrace"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 52
    sget v0, Lari;->gf_stack_trace:I

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->setTitle(I)V

    .line 53
    iget-object v0, v1, Larz;->crashData:Lary;

    iget-object v0, v0, Lary;->e:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/userfeedback/android/api/ShowTextActivity;->a(Ljava/lang/String;)V

    goto :goto_1f

    .line 55
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ShowTextActivity unknown EXTRA_FIELD_NAME"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
