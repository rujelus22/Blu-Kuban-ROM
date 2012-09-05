.class public Lcom/vlingo/client/home/NewFeatureDialog;
.super Landroid/app/Activity;
.source "NewFeatureDialog.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initTextView(I)V
    .registers 4
    .parameter "textViewResId"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/vlingo/client/home/NewFeatureDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    .local v0, tv:Landroid/widget/TextView;
    if-eqz v0, :cond_17

    .line 51
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_17
    return-void
.end method

.method public static showIfRequired(Landroid/content/Context;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 62
    const-string v0, "new_feature_dialog_shown"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 63
    invoke-static {}, Lcom/vlingo/client/tos/TermsOfServiceManager;->isTOSRequired()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-static {}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->isIUXComplete()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/home/NewFeatureDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    :cond_1f
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .registers 3

    .prologue
    .line 57
    const-string v0, "new_feature_dialog_shown"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vlingo/client/settings/Settings;->setBoolean(Ljava/lang/String;Z)V

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 59
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/NewFeatureDialog;->requestWindowFeature(I)Z

    .line 30
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/NewFeatureDialog;->setContentView(I)V

    .line 32
    const-string v0, "New Features"

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/NewFeatureDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    const v0, 0x7f0f0068

    invoke-direct {p0, v0}, Lcom/vlingo/client/home/NewFeatureDialog;->initTextView(I)V

    .line 35
    const v0, 0x7f0f00e0

    invoke-direct {p0, v0}, Lcom/vlingo/client/home/NewFeatureDialog;->initTextView(I)V

    .line 36
    const v0, 0x7f0f00e1

    invoke-direct {p0, v0}, Lcom/vlingo/client/home/NewFeatureDialog;->initTextView(I)V

    .line 38
    const/high16 v0, 0x10a

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/vlingo/client/home/NewFeatureDialog;->overridePendingTransition(II)V

    .line 40
    const v0, 0x7f0f00dd

    invoke-virtual {p0, v0}, Lcom/vlingo/client/home/NewFeatureDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vlingo/client/home/NewFeatureDialog$1;

    invoke-direct {v1, p0}, Lcom/vlingo/client/home/NewFeatureDialog$1;-><init>(Lcom/vlingo/client/home/NewFeatureDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
