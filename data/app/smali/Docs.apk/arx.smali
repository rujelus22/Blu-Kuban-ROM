.class public Larx;
.super Landroid/os/AsyncTask;
.source "UserFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private a:Landroid/widget/Button;

.field private a:Landroid/widget/Spinner;

.field final synthetic a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/google/userfeedback/android/api/UserFeedbackActivity;Landroid/content/Context;Landroid/widget/Spinner;Landroid/widget/Button;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Larx;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 86
    iput-object p2, p0, Larx;->a:Landroid/content/Context;

    .line 87
    iput-object p3, p0, Larx;->a:Landroid/widget/Spinner;

    .line 88
    iput-object p4, p0, Larx;->a:Landroid/widget/Button;

    .line 89
    return-void
.end method

.method private a()V
    .registers 10

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Larx;->a:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 109
    :try_start_7
    iget-object v0, p0, Larx;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()Larz;

    move-result-object v0

    iget-object v0, v0, Larz;->accounts:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_1c} :catch_51

    .line 114
    :goto_1c
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 115
    iget-object v2, p0, Larx;->a:Landroid/content/Context;

    sget v3, Lari;->gf_anonymous:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 117
    const-string v3, ""

    .line 119
    iget-object v2, p0, Larx;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v2}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Larm;

    move-result-object v2

    invoke-virtual {v2}, Larm;->a()LarF;

    move-result-object v2

    invoke-virtual {v2}, LarF;->c()Ljava/lang/String;

    move-result-object v4

    .line 120
    array-length v7, v0

    move v5, v1

    move v2, v1

    :goto_3e
    if-ge v5, v7, :cond_55

    aget-object v8, v0, v5

    .line 121
    add-int/lit8 v2, v2, 0x1

    aput-object v8, v6, v2

    .line 122
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    move v1, v2

    move-object v3, v4

    .line 120
    :cond_4e
    add-int/lit8 v5, v5, 0x1

    goto :goto_3e

    .line 110
    :catch_51
    move-exception v0

    .line 112
    new-array v0, v1, [Ljava/lang/String;

    goto :goto_1c

    .line 127
    :cond_55
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Larx;->a:Landroid/content/Context;

    sget v4, Larh;->gf_userfeedback_account_spinner:I

    invoke-direct {v0, v2, v4, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 129
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 130
    iget-object v2, p0, Larx;->a:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 133
    iget-object v0, p0, Larx;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 134
    iget-object v0, p0, Larx;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->a()Larz;

    move-result-object v0

    iput-object v3, v0, Larz;->chosenAccount:Ljava/lang/String;

    .line 135
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Larx;->a:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 139
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 3
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Larx;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->c()Z

    move-result v0

    if-nez v0, :cond_15

    .line 100
    iget-object v0, p0, Larx;->a:Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedbackActivity;->a(Lcom/google/userfeedback/android/api/UserFeedbackActivity;)Larm;

    move-result-object v0

    invoke-virtual {v0}, Larm;->b()V

    .line 102
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Larx;->a()V

    .line 144
    invoke-direct {p0}, Larx;->b()V

    .line 145
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 78
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Larx;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Larx;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Larx;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Larx;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 95
    return-void
.end method
