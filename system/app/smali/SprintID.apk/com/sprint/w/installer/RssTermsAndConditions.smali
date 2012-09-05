.class public Lcom/sprint/w/installer/RssTermsAndConditions;
.super Landroid/app/Activity;
.source "RssTermsAndConditions.java"


# static fields
.field static final DIALOG_ERROR_RETRY:I = 0x0

.field static final EXTRA_RSS_TERMS_AND_CONDITIONS:Ljava/lang/String; = "terms"


# instance fields
.field mAgree:Landroid/widget/Button;

.field final mAgreeClicked:Landroid/view/View$OnClickListener;

.field final mDeclineClicked:Landroid/view/View$OnClickListener;

.field mFrame:Landroid/widget/RelativeLayout;

.field mGeneralTc:Ljava/lang/String;

.field final mLoadContent:Ljava/lang/Runnable;

.field mPackTc:Ljava/lang/String;

.field mWeb:Landroid/webkit/WebView;

.field final mWebClient:Landroid/webkit/WebViewClient;

.field tcExpanded:Z

.field toggleArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->tcExpanded:Z

    .line 92
    new-instance v0, Lcom/sprint/w/installer/RssTermsAndConditions$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssTermsAndConditions$2;-><init>(Lcom/sprint/w/installer/RssTermsAndConditions;)V

    iput-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mLoadContent:Ljava/lang/Runnable;

    .line 112
    new-instance v0, Lcom/sprint/w/installer/RssTermsAndConditions$3;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssTermsAndConditions$3;-><init>(Lcom/sprint/w/installer/RssTermsAndConditions;)V

    iput-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mAgreeClicked:Landroid/view/View$OnClickListener;

    .line 120
    new-instance v0, Lcom/sprint/w/installer/RssTermsAndConditions$4;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssTermsAndConditions$4;-><init>(Lcom/sprint/w/installer/RssTermsAndConditions;)V

    iput-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mDeclineClicked:Landroid/view/View$OnClickListener;

    .line 165
    new-instance v0, Lcom/sprint/w/installer/RssTermsAndConditions$8;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssTermsAndConditions$8;-><init>(Lcom/sprint/w/installer/RssTermsAndConditions;)V

    iput-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mWebClient:Landroid/webkit/WebViewClient;

    return-void
.end method

.method static synthetic access$000(Lcom/sprint/w/installer/RssTermsAndConditions;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/sprint/w/installer/RssTermsAndConditions;->loadContent()V

    return-void
.end method

.method private loadContent()V
    .registers 4

    .prologue
    .line 65
    const v1, 0x7f0c0008

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/RssTermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    new-instance v0, Lcom/sprint/w/installer/RssTermsAndConditions$1;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/RssTermsAndConditions$1;-><init>(Lcom/sprint/w/installer/RssTermsAndConditions;)V

    .line 89
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 90
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssTermsAndConditions;->setContentView(I)V

    .line 48
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssTermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f060082

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 49
    const v0, 0x7f0c0072

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssTermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mFrame:Landroid/widget/RelativeLayout;

    .line 50
    const v0, 0x7f0c0070

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssTermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->toggleArrow:Landroid/widget/ImageView;

    .line 51
    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssTermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mAgree:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mAgree:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 53
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mAgree:Landroid/widget/Button;

    iget-object v1, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mAgreeClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0c0075

    invoke-virtual {p0, v0}, Lcom/sprint/w/installer/RssTermsAndConditions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mDeclineClicked:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/sprint/w/installer/RssTermsAndConditions;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "terms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mPackTc:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mPackTc:Ljava/lang/String;

    if-nez v0, :cond_66

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mPackTc:Ljava/lang/String;

    .line 61
    :cond_66
    invoke-direct {p0}, Lcom/sprint/w/installer/RssTermsAndConditions;->loadContent()V

    .line 62
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 5
    .parameter "id"

    .prologue
    .line 142
    if-nez p1, :cond_42

    .line 143
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060075

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/RssTermsAndConditions;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060076

    invoke-virtual {p0, v1}, Lcom/sprint/w/installer/RssTermsAndConditions;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060047

    new-instance v2, Lcom/sprint/w/installer/RssTermsAndConditions$7;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/RssTermsAndConditions$7;-><init>(Lcom/sprint/w/installer/RssTermsAndConditions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/sprint/w/installer/RssTermsAndConditions$6;

    invoke-direct {v2, p0}, Lcom/sprint/w/installer/RssTermsAndConditions$6;-><init>(Lcom/sprint/w/installer/RssTermsAndConditions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sprint/w/installer/RssTermsAndConditions$5;

    invoke-direct {v1, p0}, Lcom/sprint/w/installer/RssTermsAndConditions$5;-><init>(Lcom/sprint/w/installer/RssTermsAndConditions;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 162
    :goto_41
    return-object v0

    :cond_42
    const/4 v0, 0x0

    goto :goto_41
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 130
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mWeb:Landroid/webkit/WebView;

    if-eqz v0, :cond_14

    .line 131
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mFrame:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 132
    iget-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mWeb:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sprint/w/installer/RssTermsAndConditions;->mWeb:Landroid/webkit/WebView;

    .line 135
    :cond_14
    return-void
.end method
