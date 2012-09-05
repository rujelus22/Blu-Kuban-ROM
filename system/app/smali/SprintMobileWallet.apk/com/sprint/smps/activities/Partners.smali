.class public Lcom/sprint/smps/activities/Partners;
.super Lcom/sprint/smps/activities/ActivityHelper;
.source "Partners.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sprint/smps/TimeoutListener;


# static fields
.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = null

.field public static final name:Ljava/lang/String; = "Partners"

.field private static parentActivity:Lcom/sprint/smps/activities/Partners;

.field public static webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 20
    const-class v0, Lcom/sprint/smps/activities/Partners;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sprint/smps/activities/Partners;->TAG:Ljava/lang/String;

    .line 22
    sput-object v1, Lcom/sprint/smps/activities/Partners;->parentActivity:Lcom/sprint/smps/activities/Partners;

    .line 24
    sput-object v1, Lcom/sprint/smps/activities/Partners;->webview:Landroid/webkit/WebView;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sprint/smps/activities/ActivityHelper;-><init>()V

    .line 28
    sput-object p0, Lcom/sprint/smps/activities/Partners;->parentActivity:Lcom/sprint/smps/activities/Partners;

    .line 29
    const-string v0, "Partners"

    invoke-static {p0, v0}, Lcom/sprint/smps/activities/ActivityHelper;->addActivity(Landroid/app/Activity;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->finish()V

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/smps/activities/Partners;->webview:Landroid/webkit/WebView;

    .line 77
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .parameter "v"

    .prologue
    .line 64
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x7

    const/4 v4, 0x1

    .line 35
    invoke-super {p0, p1}, Lcom/sprint/smps/activities/ActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 37
    invoke-virtual {p0, v3}, Lcom/sprint/smps/activities/Partners;->requestWindowFeature(I)Z

    .line 38
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 40
    sget-object v1, Lcom/sprint/smps/properties/Properties;->localyticsSession:Lcom/Localytics/android/LocalyticsSession;

    const-string v2, "Partners"

    invoke-virtual {v1, v2}, Lcom/Localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;)V

    .line 42
    sget-object v1, Lcom/sprint/smps/activities/Partners;->parentActivity:Lcom/sprint/smps/activities/Partners;

    const v2, 0x7f030020

    invoke-virtual {v1, v2}, Lcom/sprint/smps/activities/Partners;->setContentView(I)V

    .line 44
    sget-object v1, Lcom/sprint/smps/activities/Partners;->parentActivity:Lcom/sprint/smps/activities/Partners;

    invoke-virtual {v1}, Lcom/sprint/smps/activities/Partners;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f03001f

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 45
    sget-object v1, Lcom/sprint/smps/activities/Partners;->parentActivity:Lcom/sprint/smps/activities/Partners;

    const v2, 0x7f08004a

    invoke-virtual {v1, v2}, Lcom/sprint/smps/activities/Partners;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/sprint/smps/activities/Partners;->parentActivity:Lcom/sprint/smps/activities/Partners;

    const v3, 0x7f060034

    invoke-virtual {v2, v3}, Lcom/sprint/smps/activities/Partners;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    sget-object v1, Lcom/sprint/smps/activities/Partners;->parentActivity:Lcom/sprint/smps/activities/Partners;

    const v2, 0x7f08004b

    invoke-virtual {v1, v2}, Lcom/sprint/smps/activities/Partners;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    sget-object v1, Lcom/sprint/smps/activities/Partners;->parentActivity:Lcom/sprint/smps/activities/Partners;

    const v2, 0x7f080051

    invoke-virtual {v1, v2}, Lcom/sprint/smps/activities/Partners;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 49
    sget-object v1, Lcom/sprint/smps/activities/Partners;->parentActivity:Lcom/sprint/smps/activities/Partners;

    invoke-static {v1}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 51
    sget-object v1, Lcom/sprint/smps/activities/Partners;->parentActivity:Lcom/sprint/smps/activities/Partners;

    const v2, 0x7f080052

    invoke-virtual {v1, v2}, Lcom/sprint/smps/activities/Partners;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    sput-object v1, Lcom/sprint/smps/activities/Partners;->webview:Landroid/webkit/WebView;

    .line 52
    sget-object v1, Lcom/sprint/smps/activities/Partners;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    sget-object v1, Lcom/sprint/smps/activities/Partners;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 54
    sget-object v1, Lcom/sprint/smps/activities/Partners;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 55
    sget-object v1, Lcom/sprint/smps/activities/Partners;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 56
    sget-object v1, Lcom/sprint/smps/activities/Partners;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 57
    new-instance v0, Lcom/sprint/smps/activities/PartnerWebClient;

    sget-object v1, Lcom/sprint/smps/activities/Partners;->parentActivity:Lcom/sprint/smps/activities/Partners;

    invoke-direct {v0, v1}, Lcom/sprint/smps/activities/PartnerWebClient;-><init>(Lcom/sprint/smps/activities/ActivityHelper;)V

    .line 58
    .local v0, webClient:Lcom/sprint/smps/activities/PartnerWebClient;
    sget-object v1, Lcom/sprint/smps/activities/Partners;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 59
    sget-object v1, Lcom/sprint/smps/activities/Partners;->webview:Landroid/webkit/WebView;

    sget-object v2, Lcom/sprint/smps/properties/Properties;->PARTNER_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onPause()V
    .registers 1

    .prologue
    .line 69
    invoke-static {}, Lcom/sprint/smps/TimeOutThread;->bumpTimout()V

    .line 70
    invoke-super {p0}, Lcom/sprint/smps/activities/ActivityHelper;->onPause()V

    .line 71
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .parameter "hasFocus"

    .prologue
    .line 82
    if-eqz p1, :cond_8

    .line 84
    invoke-static {}, Lcom/sprint/smps/properties/Properties;->referenced()V

    .line 85
    invoke-static {p0}, Lcom/sprint/smps/TimeOutThread;->listener(Lcom/sprint/smps/TimeoutListener;)V

    .line 87
    :cond_8
    return-void
.end method
