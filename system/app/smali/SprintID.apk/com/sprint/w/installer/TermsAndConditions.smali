.class public Lcom/sprint/w/installer/TermsAndConditions;
.super Landroid/app/Activity;
.source "TermsAndConditions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/TermsAndConditions$MyHandler;,
        Lcom/sprint/w/installer/TermsAndConditions$LoadThread;
    }
.end annotation


# static fields
.field static final DIALOG_ERROR_RETRY:I


# instance fields
.field mAgree:Landroid/widget/Button;

.field final mAgreeClicked:Landroid/view/View$OnClickListener;

.field final mDeclineClicked:Landroid/view/View$OnClickListener;

.field mFrame:Landroid/widget/RelativeLayout;

.field mGeneralTc:Ljava/lang/String;

.field mHandler:Lcom/sprint/w/installer/TermsAndConditions$MyHandler;

.field final mLoadContent:Ljava/lang/Runnable;

.field mPackId:Ljava/lang/String;

.field mPackTc:Ljava/lang/String;

.field mWeb:Landroid/webkit/WebView;

.field final mWebClient:Landroid/webkit/WebViewClient;

.field t:Lcom/sprint/w/installer/TermsAndConditions$LoadThread;

.field tcExpanded:Z

.field toggleArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->tcExpanded:Z

    .line 36
    new-instance v0, Lcom/sprint/w/installer/TermsAndConditions$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sprint/w/installer/TermsAndConditions$MyHandler;-><init>(Lcom/sprint/w/installer/TermsAndConditions;Lcom/sprint/w/installer/TermsAndConditions$1;)V

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mHandler:Lcom/sprint/w/installer/TermsAndConditions$MyHandler;

    .line 193
    new-instance v0, Lcom/sprint/w/installer/TermsAndConditions$1;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/TermsAndConditions$1;-><init>(Lcom/sprint/w/installer/TermsAndConditions;)V

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mLoadContent:Ljava/lang/Runnable;

    .line 209
    new-instance v0, Lcom/sprint/w/installer/TermsAndConditions$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/TermsAndConditions$2;-><init>(Lcom/sprint/w/installer/TermsAndConditions;)V

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mAgreeClicked:Landroid/view/View$OnClickListener;

    .line 217
    new-instance v0, Lcom/sprint/w/installer/TermsAndConditions$3;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/TermsAndConditions$3;-><init>(Lcom/sprint/w/installer/TermsAndConditions;)V

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mDeclineClicked:Landroid/view/View$OnClickListener;

    .line 260
    new-instance v0, Lcom/sprint/w/installer/TermsAndConditions$7;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/TermsAndConditions$7;-><init>(Lcom/sprint/w/installer/TermsAndConditions;)V

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mWebClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic access$100(Lcom/sprint/w/installer/TermsAndConditions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/sprint/w/installer/TermsAndConditions;->loadContent()V

    return-void
.end method

.method private hideTC()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 130
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sprint/w/installer/TermsAndConditions;->tcExpanded:Z

    .line 131
    iget-object v3, p0, Lcom/sprint/w/installer/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 132
    iget-object v3, p0, Lcom/sprint/w/installer/TermsAndConditions;->toggleArrow:Landroid/widget/ImageView;

    const v4, 0x7f020015

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 134
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 135
    iget-object v1, p0, Lcom/sprint/w/installer/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 136
    return-void
.end method

.method private loadContent()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 139
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mAgree:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 142
    new-instance v0, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;

    iget-object v1, p0, Lcom/sprint/w/installer/TermsAndConditions;->mHandler:Lcom/sprint/w/installer/TermsAndConditions$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;-><init>(Lcom/sprint/w/installer/TermsAndConditions;Lcom/sprint/w/installer/TermsAndConditions$MyHandler;)V

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->t:Lcom/sprint/w/installer/TermsAndConditions$LoadThread;

    .line 143
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->t:Lcom/sprint/w/installer/TermsAndConditions$LoadThread;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    return-void
.end method

.method private showTC()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    iput-boolean v1, p0, Lcom/sprint/w/installer/TermsAndConditions;->tcExpanded:Z

    .line 122
    iget-object v3, p0, Lcom/sprint/w/installer/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 123
    iget-object v3, p0, Lcom/sprint/w/installer/TermsAndConditions;->toggleArrow:Landroid/widget/ImageView;

    const v4, 0x7f020016

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 125
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 126
    iget-object v1, p0, Lcom/sprint/w/installer/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 127
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/TermsAndConditions;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/sprint/w/installer/TermsAndConditions;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "packId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mPackId:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mPackId:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 45
    invoke-virtual {p0}, Lcom/sprint/w/installer/TermsAndConditions;->finish()V

    .line 69
    :cond_1d
    :goto_1d
    return-void

    .line 48
    :cond_1e
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mFrame:Landroid/widget/RelativeLayout;

    .line 50
    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->toggleArrow:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mAgree:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mAgree:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/TermsAndConditions;->mAgreeClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0c0073

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    .line 55
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sprint/w/installer/TermsAndConditions;->mWebClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 56
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 58
    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/TermsAndConditions;->mDeclineClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/sprint/w/installer/TermsAndConditions;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 61
    invoke-virtual {p0}, Lcom/sprint/w/installer/TermsAndConditions;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->t:Lcom/sprint/w/installer/TermsAndConditions$LoadThread;

    .line 62
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->t:Lcom/sprint/w/installer/TermsAndConditions$LoadThread;

    iget-object v1, p0, Lcom/sprint/w/installer/TermsAndConditions;->mHandler:Lcom/sprint/w/installer/TermsAndConditions$MyHandler;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;->setHandler(Lcom/sprint/w/installer/TermsAndConditions$MyHandler;)V

    .line 65
    :cond_8d
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->t:Lcom/sprint/w/installer/TermsAndConditions$LoadThread;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->t:Lcom/sprint/w/installer/TermsAndConditions$LoadThread;

    invoke-virtual {v0}, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 66
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mAgree:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1d
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 237
    if-nez p1, :cond_42

    .line 238
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060075

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/TermsAndConditions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060076

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/TermsAndConditions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060047

    new-instance v2, Lcom/sprint/w/installer/TermsAndConditions$6;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/TermsAndConditions$6;-><init>(Lcom/sprint/w/installer/TermsAndConditions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/sprint/w/installer/TermsAndConditions$5;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/TermsAndConditions$5;-><init>(Lcom/sprint/w/installer/TermsAndConditions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/TermsAndConditions$4;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/TermsAndConditions$4;-><init>(Lcom/sprint/w/installer/TermsAndConditions;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 257
    :goto_41
    return-object v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 227
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    if-eqz v0, :cond_14

    .line 228
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 229
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    .line 232
    :cond_14
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 83
    const-string v0, "mGeneralTc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mGeneralTc:Ljava/lang/String;

    .line 84
    const-string v0, "mPackTc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mPackTc:Ljava/lang/String;

    .line 85
    const-string v0, "tcExpanded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->tcExpanded:Z

    .line 89
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mGeneralTc:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mPackTc:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 90
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mLoadContent:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 93
    :cond_28
    iget-boolean v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->tcExpanded:Z

    if-eqz v0, :cond_30

    .line 94
    invoke-direct {p0}, Lcom/sprint/w/installer/TermsAndConditions;->showTC()V

    .line 99
    :goto_2f
    return-void

    .line 96
    :cond_30
    invoke-direct {p0}, Lcom/sprint/w/installer/TermsAndConditions;->hideTC()V

    goto :goto_2f
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/sprint/w/installer/TermsAndConditions;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->t:Lcom/sprint/w/installer/TermsAndConditions$LoadThread;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->t:Lcom/sprint/w/installer/TermsAndConditions$LoadThread;

    invoke-virtual {v0}, Lcom/sprint/w/installer/TermsAndConditions$LoadThread;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 104
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->t:Lcom/sprint/w/installer/TermsAndConditions$LoadThread;

    .line 106
    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "mGeneralTc"

    iget-object v1, p0, Lcom/sprint/w/installer/TermsAndConditions;->mGeneralTc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "mPackTc"

    iget-object v1, p0, Lcom/sprint/w/installer/TermsAndConditions;->mPackTc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "tcExpanded"

    iget-boolean v1, p0, Lcom/sprint/w/installer/TermsAndConditions;->tcExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    return-void
.end method

.method public toggleTC(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->tcExpanded:Z

    if-nez v0, :cond_f

    .line 111
    invoke-direct {p0}, Lcom/sprint/w/installer/TermsAndConditions;->showTC()V

    .line 112
    iget-object v0, p0, Lcom/sprint/w/installer/TermsAndConditions;->mGeneralTc:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 113
    invoke-direct {p0}, Lcom/sprint/w/installer/TermsAndConditions;->loadContent()V

    .line 118
    :cond_e
    :goto_e
    return-void

    .line 116
    :cond_f
    invoke-direct {p0}, Lcom/sprint/w/installer/TermsAndConditions;->hideTC()V

    goto :goto_e
.end method
