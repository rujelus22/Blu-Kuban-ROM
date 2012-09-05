.class public Lcom/vlingo/client/answers/AnswersActivity;
.super Landroid/app/Activity;
.source "AnswersActivity.java"


# static fields
.field public static final EXTRA_ANSWER:Ljava/lang/String; = "com.vlingo.client.answers.answer"

.field public static final EXTRA_QUESTION:Ljava/lang/String; = "com.vlingo.client.answers.question"

.field public static final EXTRA_URL:Ljava/lang/String; = "com.vlingo.client.answers.url"


# instance fields
.field private checkboxAutospeakAnswer:Landroid/widget/CheckBox;

.field private saidAnswer:Z

.field private textAnswer:Landroid/widget/TextView;

.field private textQuestion:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/answers/AnswersActivity;->saidAnswer:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v1, 0x7f030069

    invoke-virtual {p0, v1}, Lcom/vlingo/client/answers/AnswersActivity;->setContentView(I)V

    .line 41
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/vlingo/client/answers/AnswersActivity;->setVolumeControlStream(I)V

    .line 42
    const v1, 0x7f0f002a

    invoke-virtual {p0, v1}, Lcom/vlingo/client/answers/AnswersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vlingo/client/answers/AnswersActivity;->textQuestion:Landroid/widget/TextView;

    .line 43
    const v1, 0x7f0f002d

    invoke-virtual {p0, v1}, Lcom/vlingo/client/answers/AnswersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/vlingo/client/answers/AnswersActivity;->textAnswer:Landroid/widget/TextView;

    .line 44
    const v1, 0x7f0f0174

    invoke-virtual {p0, v1}, Lcom/vlingo/client/answers/AnswersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/vlingo/client/answers/AnswersActivity;->checkboxAutospeakAnswer:Landroid/widget/CheckBox;

    .line 45
    iget-object v1, p0, Lcom/vlingo/client/answers/AnswersActivity;->checkboxAutospeakAnswer:Landroid/widget/CheckBox;

    const-string v2, "auto_speak_answer"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 46
    iget-object v1, p0, Lcom/vlingo/client/answers/AnswersActivity;->checkboxAutospeakAnswer:Landroid/widget/CheckBox;

    new-instance v2, Lcom/vlingo/client/answers/AnswersActivity$1;

    invoke-direct {v2, p0}, Lcom/vlingo/client/answers/AnswersActivity$1;-><init>(Lcom/vlingo/client/answers/AnswersActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/vlingo/client/answers/AnswersActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, data:Ljava/lang/Object;
    if-eqz v0, :cond_52

    .line 53
    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #data:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/vlingo/client/answers/AnswersActivity;->saidAnswer:Z

    .line 55
    :cond_52
    invoke-virtual {p0}, Lcom/vlingo/client/answers/AnswersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vlingo/client/answers/AnswersActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 6
    .parameter "intent"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 67
    const-string v2, "com.vlingo.client.answers.question"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, question:Ljava/lang/String;
    const-string v2, "com.vlingo.client.answers.answer"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, answer:Ljava/lang/String;
    iget-object v2, p0, Lcom/vlingo/client/answers/AnswersActivity;->textQuestion:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, p0, Lcom/vlingo/client/answers/AnswersActivity;->textAnswer:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v2, p0, Lcom/vlingo/client/answers/AnswersActivity;->checkboxAutospeakAnswer:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_33

    iget-boolean v2, p0, Lcom/vlingo/client/answers/AnswersActivity;->saidAnswer:Z

    if-nez v2, :cond_33

    .line 74
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v2

    invoke-static {v0}, Lcom/vlingo/client/core/tts/TTSDemand;->genAnswer(Ljava/lang/String;)Lcom/vlingo/client/core/tts/TTSDemand;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vlingo/client/safereader/SafeReaderAPI;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    .line 75
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/vlingo/client/answers/AnswersActivity;->saidAnswer:Z

    .line 78
    :cond_33
    const v2, 0x7f0f0172

    invoke-virtual {p0, v2}, Lcom/vlingo/client/answers/AnswersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vlingo/client/answers/AnswersActivity$2;

    invoke-direct {v3, p0, v0}, Lcom/vlingo/client/answers/AnswersActivity$2;-><init>(Lcom/vlingo/client/answers/AnswersActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v2, 0x7f0f0173

    invoke-virtual {p0, v2}, Lcom/vlingo/client/answers/AnswersActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/vlingo/client/answers/AnswersActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/vlingo/client/answers/AnswersActivity$3;-><init>(Lcom/vlingo/client/answers/AnswersActivity;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 61
    invoke-static {}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getInstance()Lcom/vlingo/client/safereader/SafeReaderAPI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vlingo/client/safereader/SafeReaderAPI;->cancel(Z)V

    .line 62
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/vlingo/client/answers/AnswersActivity;->saidAnswer:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
