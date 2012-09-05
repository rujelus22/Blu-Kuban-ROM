.class public Lcom/sprint/w/installer/delivery/TermsAndConditions;
.super Landroid/app/Activity;
.source "TermsAndConditions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;,
        Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;
    }
.end annotation


# static fields
.field public static final EXTRA_ADDITIONAL_TERMS_AND_CONDITIONS:Ljava/lang/String; = "terms"


# instance fields
.field mAgree:Landroid/widget/Button;

.field final mAgreeClicked:Landroid/view/View$OnClickListener;

.field final mDeclineClicked:Landroid/view/View$OnClickListener;

.field mFrame:Landroid/widget/RelativeLayout;

.field mGeneralTc:Ljava/lang/String;

.field mHandler:Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;

.field final mLoadContent:Ljava/lang/Runnable;

.field mPackId:Ljava/lang/String;

.field mPackTc:Ljava/lang/String;

.field mWeb:Landroid/webkit/WebView;

.field final mWebClient:Landroid/webkit/WebViewClient;

.field t:Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;

.field tcExpanded:Z

.field toggleArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->tcExpanded:Z

    .line 40
    new-instance v0, Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;-><init>(Lcom/sprint/w/installer/delivery/TermsAndConditions;Lcom/sprint/w/installer/delivery/TermsAndConditions$1;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mHandler:Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;

    .line 147
    new-instance v0, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/TermsAndConditions$1;-><init>(Lcom/sprint/w/installer/delivery/TermsAndConditions;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mLoadContent:Ljava/lang/Runnable;

    .line 168
    new-instance v0, Lcom/sprint/w/installer/delivery/TermsAndConditions$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/TermsAndConditions$2;-><init>(Lcom/sprint/w/installer/delivery/TermsAndConditions;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mAgreeClicked:Landroid/view/View$OnClickListener;

    .line 176
    new-instance v0, Lcom/sprint/w/installer/delivery/TermsAndConditions$3;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/TermsAndConditions$3;-><init>(Lcom/sprint/w/installer/delivery/TermsAndConditions;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mDeclineClicked:Landroid/view/View$OnClickListener;

    .line 193
    new-instance v0, Lcom/sprint/w/installer/delivery/TermsAndConditions$4;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/delivery/TermsAndConditions$4;-><init>(Lcom/sprint/w/installer/delivery/TermsAndConditions;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWebClient:Landroid/webkit/WebViewClient;

    .line 242
    return-void
.end method

.method private hideTC()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 133
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->tcExpanded:Z

    .line 134
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 135
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->toggleArrow:Landroid/widget/ImageView;

    const v4, 0x7f020015

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 137
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 138
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 139
    return-void
.end method

.method private loadContent()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 142
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 143
    new-instance v0, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mHandler:Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;-><init>(Lcom/sprint/w/installer/delivery/TermsAndConditions;Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;)V

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->t:Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;

    .line 144
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->t:Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 145
    return-void
.end method

.method private showTC()V
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    iput-boolean v1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->tcExpanded:Z

    .line 125
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 126
    iget-object v3, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->toggleArrow:Landroid/widget/ImageView;

    const v4, 0x7f020016

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x4080

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 128
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 129
    iget-object v1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->setContentView(I)V

    .line 47
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 48
    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mFrame:Landroid/widget/RelativeLayout;

    .line 49
    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->toggleArrow:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mAgree:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mAgree:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mAgreeClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v0, 0x7f0c0073

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    .line 54
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWebClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 55
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 57
    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mDeclineClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "terms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mPackTc:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mPackTc:Ljava/lang/String;

    if-nez v0, :cond_78

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mPackTc:Ljava/lang/String;

    .line 66
    :cond_78
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8d

    .line 67
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->t:Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;

    .line 68
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->t:Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mHandler:Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;

    invoke-virtual {v0, v1}, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;->setHandler(Lcom/sprint/w/installer/delivery/TermsAndConditions$MyHandler;)V

    .line 71
    :cond_8d
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->t:Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->t:Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    .line 72
    const v0, 0x7f0c0008

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mAgree:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 75
    :cond_ae
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 186
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    if-eqz v0, :cond_14

    .line 187
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 188
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mWeb:Landroid/webkit/WebView;

    .line 191
    :cond_14
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 89
    const-string v0, "mGeneralTc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mGeneralTc:Ljava/lang/String;

    .line 90
    const-string v0, "mPackTc"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mPackTc:Ljava/lang/String;

    .line 91
    const-string v0, "tcExpanded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->tcExpanded:Z

    .line 93
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mGeneralTc:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mPackTc:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 94
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mLoadContent:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 97
    :cond_28
    iget-boolean v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->tcExpanded:Z

    if-eqz v0, :cond_30

    .line 98
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->showTC()V

    .line 102
    :goto_2f
    return-void

    .line 100
    :cond_30
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->hideTC()V

    goto :goto_2f
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->t:Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->t:Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;

    invoke-virtual {v0}, Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 107
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->t:Lcom/sprint/w/installer/delivery/TermsAndConditions$LoadThread;

    .line 109
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
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 81
    const-string v0, "mGeneralTc"

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mGeneralTc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "mPackTc"

    iget-object v1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mPackTc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v0, "tcExpanded"

    iget-boolean v1, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->tcExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 84
    return-void
.end method

.method public toggleTC(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->tcExpanded:Z

    if-nez v0, :cond_f

    .line 114
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->showTC()V

    .line 115
    iget-object v0, p0, Lcom/sprint/w/installer/delivery/TermsAndConditions;->mGeneralTc:Ljava/lang/String;

    if-nez v0, :cond_e

    .line 116
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->loadContent()V

    .line 121
    :cond_e
    :goto_e
    return-void

    .line 119
    :cond_f
    invoke-direct {p0}, Lcom/sprint/w/installer/delivery/TermsAndConditions;->hideTC()V

    goto :goto_e
.end method
