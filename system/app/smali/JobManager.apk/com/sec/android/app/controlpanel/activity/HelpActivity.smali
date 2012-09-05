.class public Lcom/sec/android/app/controlpanel/activity/HelpActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/controlpanel/activity/HelpActivity$HelpWebViewClient;
    }
.end annotation


# instance fields
.field private mHelpContentView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/controlpanel/activity/HelpActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->loadPage()V

    return-void
.end method

.method private loadPage()V
    .registers 7

    .prologue
    .line 75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 76
    .local v2, locale:Ljava/util/Locale;
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, language:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    if-eqz v3, :cond_66

    .line 79
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 80
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 81
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    new-instance v4, Lcom/sec/android/app/controlpanel/activity/HelpActivity$HelpWebViewClient;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/controlpanel/activity/HelpActivity$HelpWebViewClient;-><init>(Lcom/sec/android/app/controlpanel/activity/HelpActivity;Lcom/sec/android/app/controlpanel/activity/HelpActivity$1;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 95
    :try_start_24
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "help_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".html"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 96
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file:///android_asset/help_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".html"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_66} :catch_67

    .line 176
    :cond_66
    :goto_66
    return-void

    .line 97
    :catch_67
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    iget-object v3, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    const-string v4, "file:///android_asset/help_en.html"

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_66
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    .line 54
    const/4 v0, 0x0

    .line 57
    :goto_8
    return v0

    :cond_9
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->setContentView(I)V

    .line 30
    const/high16 v0, 0x7f07

    invoke-virtual {p0, v0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/sec/android/app/controlpanel/activity/HelpActivity;->mHelpContentView:Landroid/webkit/WebView;

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/controlpanel/activity/HelpActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity$1;-><init>(Lcom/sec/android/app/controlpanel/activity/HelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 63
    .local v0, menuId:I
    const/16 v1, 0xd

    if-ne v0, v1, :cond_15

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/sec/android/app/controlpanel/activity/HelpActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/controlpanel/activity/HelpActivity$2;-><init>(Lcom/sec/android/app/controlpanel/activity/HelpActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    :cond_15
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method
