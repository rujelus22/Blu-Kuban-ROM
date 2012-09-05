.class public Lcom/google/android/apps/books/app/DictionaryLookupActivity;
.super Landroid/app/Activity;
.source "DictionaryLookupActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;,
        Lcom/google/android/apps/books/app/DictionaryLookupActivity$DictionaryLookupTask;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mHtmlData:Ljava/lang/String;

.field private mQuery:Ljava/lang/String;

.field private mResultsWebView:Landroid/webkit/WebView;

.field private mSpinner:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 172
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/books/app/DictionaryLookupActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/books/app/DictionaryLookupActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->generateHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/apps/books/app/DictionaryLookupActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mHtmlData:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/android/apps/books/app/DictionaryLookupActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->displayHtmlResult()V

    return-void
.end method

.method private displayHtmlResult()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mHtmlData:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mResultsWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mHtmlData:Ljava/lang/String;

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_e
    iget-object v0, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mResultsWebView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 133
    return-void

    .line 129
    :cond_1c
    iget-object v0, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mResultsWebView:Landroid/webkit/WebView;

    const v1, 0x7f0e00bb

    invoke-virtual {p0, v1}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e
.end method

.method private generateHtml(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "word"

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mAccount:Landroid/accounts/Account;

    invoke-static {v3, v4, p1}, Lcom/google/android/apps/books/util/DictionaryUtils;->lookupWord(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 145
    .local v1, dictDataJson:Lorg/json/JSONObject;
    if-nez v1, :cond_e

    .line 146
    const/4 v2, 0x0

    .line 154
    :cond_d
    :goto_d
    return-object v2

    .line 148
    :cond_e
    invoke-static {v1}, Lcom/google/android/apps/books/api/DictionaryData;->parseDictionaryData(Lorg/json/JSONObject;)Lcom/google/android/apps/books/api/DictionaryData;

    move-result-object v0

    .line 149
    .local v0, dictData:Lcom/google/android/apps/books/api/DictionaryData;
    invoke-virtual {v0}, Lcom/google/android/apps/books/api/DictionaryData;->asHtml()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, result:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/apps/books/util/DictionaryUtils;->replaceUtf8Codes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {v2}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 152
    const v3, 0x7f0e00ba

    invoke-virtual {p0, v3}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_d
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v6, 0x7f03000d

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->setContentView(I)V

    .line 72
    const v6, 0x7f0f0033

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    iput-object v6, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mResultsWebView:Landroid/webkit/WebView;

    .line 73
    iget-object v6, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mResultsWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 74
    .local v3, settings:Landroid/webkit/WebSettings;
    const-string v6, "utf-8"

    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 76
    const v6, 0x7f0f0034

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mSpinner:Landroid/widget/ProgressBar;

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 79
    .local v1, extras:Landroid/os/Bundle;
    const-string v6, "account"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accounts/Account;

    iput-object v6, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mAccount:Landroid/accounts/Account;

    .line 80
    iget-object v6, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mAccount:Landroid/accounts/Account;

    if-nez v6, :cond_41

    .line 110
    :goto_40
    return-void

    .line 84
    :cond_41
    const-string v6, "word"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, word:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    const/4 v2, 0x0

    .line 88
    .local v2, htmlSet:Z
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;

    .line 90
    .local v4, state:Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;
    if-eqz v4, :cond_69

    .line 91
    #getter for: Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;->mHtmlData:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;->access$000(Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mHtmlData:Ljava/lang/String;

    .line 92
    iget-object v6, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mHtmlData:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/apps/books/util/BooksTextUtils;->isNullOrWhitespace(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_69

    .line 93
    invoke-direct {p0}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->displayHtmlResult()V

    .line 94
    const/4 v2, 0x1

    .line 98
    :cond_69
    if-nez v2, :cond_79

    .line 99
    iput-object v5, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mQuery:Ljava/lang/String;

    .line 100
    new-instance v6, Lcom/google/android/apps/books/app/DictionaryLookupActivity$DictionaryLookupTask;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/google/android/apps/books/app/DictionaryLookupActivity$DictionaryLookupTask;-><init>(Lcom/google/android/apps/books/app/DictionaryLookupActivity;Lcom/google/android/apps/books/app/DictionaryLookupActivity$1;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/books/app/DictionaryLookupActivity$DictionaryLookupTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 103
    :cond_79
    const v6, 0x7f0f0031

    invoke-virtual {p0, v6}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 104
    .local v0, button:Landroid/widget/Button;
    new-instance v6, Lcom/google/android/apps/books/app/DictionaryLookupActivity$1;

    invoke-direct {v6, p0}, Lcom/google/android/apps/books/app/DictionaryLookupActivity$1;-><init>(Lcom/google/android/apps/books/app/DictionaryLookupActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_40
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;

    .line 161
    .local v0, state:Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;
    if-nez v0, :cond_e

    .line 162
    new-instance v0, Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;

    .end local v0           #state:Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;-><init>(Lcom/google/android/apps/books/app/DictionaryLookupActivity$1;)V

    .line 164
    .restart local v0       #state:Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;
    :cond_e
    iget-object v1, p0, Lcom/google/android/apps/books/app/DictionaryLookupActivity;->mHtmlData:Ljava/lang/String;

    #setter for: Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;->mHtmlData:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;->access$002(Lcom/google/android/apps/books/app/DictionaryLookupActivity$NonConfigurationState;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    return-object v0
.end method
