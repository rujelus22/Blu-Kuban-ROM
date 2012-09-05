.class public Lcom/android/browser/IntentHandler;
.super Ljava/lang/Object;
.source "IntentHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/IntentHandler$UrlData;
    }
.end annotation


# static fields
.field static final EMPTY_URL_DATA:Lcom/android/browser/IntentHandler$UrlData;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mController:Lcom/android/browser/Controller;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mTabControl:Lcom/android/browser/TabControl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 56
    new-instance v0, Lcom/android/browser/IntentHandler$UrlData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/browser/IntentHandler;->EMPTY_URL_DATA:Lcom/android/browser/IntentHandler$UrlData;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/browser/Controller;)V
    .registers 4
    .parameter "browser"
    .parameter "controller"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    .line 65
    iput-object p2, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    .line 66
    iget-object v0, p0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    invoke-virtual {v0}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    .line 67
    invoke-virtual {p2}, Lcom/android/browser/Controller;->getSettings()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/IntentHandler;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 68
    return-void
.end method

.method protected static getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/IntentHandler$UrlData;
    .registers 15
    .parameter "intent"

    .prologue
    .line 298
    const-string v1, ""

    .line 299
    .local v1, url:Ljava/lang/String;
    const/4 v2, 0x0

    .line 300
    .local v2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 301
    .local v4, preloaded:Lcom/android/browser/PreloadedTabControl;
    const/4 v5, 0x0

    .line 302
    .local v5, preloadedSearchBoxQuery:Ljava/lang/String;
    if-eqz p0, :cond_81

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v3, 0x10

    and-int/2addr v0, v3

    if-nez v0, :cond_81

    .line 304
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 305
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 307
    :cond_24
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 308
    if-eqz v1, :cond_65

    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 309
    const-string v0, "com.android.browser.headers"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 311
    .local v11, pairs:Landroid/os/Bundle;
    if-eqz v11, :cond_65

    invoke-virtual {v11}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    .line 312
    invoke-virtual {v11}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 313
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    .end local v2           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 314
    .restart local v2       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_51
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 315
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 316
    .local v10, key:Ljava/lang/String;
    invoke-virtual {v11, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_51

    .line 320
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10           #key:Ljava/lang/String;
    .end local v11           #pairs:Landroid/os/Bundle;
    :cond_65
    const-string v0, "preload_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 321
    const-string v0, "preload_id"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 322
    .local v8, id:Ljava/lang/String;
    const-string v0, "searchbox_query"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 324
    invoke-static {}, Lcom/android/browser/Preloader;->getInstance()Lcom/android/browser/Preloader;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/browser/Preloader;->getPreloadedTab(Ljava/lang/String;)Lcom/android/browser/PreloadedTabControl;

    move-result-object v4

    .line 350
    .end local v6           #action:Ljava/lang/String;
    .end local v8           #id:Ljava/lang/String;
    :cond_81
    :goto_81
    new-instance v0, Lcom/android/browser/IntentHandler$UrlData;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;Lcom/android/browser/PreloadedTabControl;Ljava/lang/String;)V

    return-object v0

    .line 326
    .restart local v6       #action:Ljava/lang/String;
    :cond_88
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    const-string v0, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    const-string v0, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 329
    :cond_a0
    const-string v0, "query"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 330
    if-eqz v1, :cond_81

    .line 333
    invoke-static {v1}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-static {v1}, Lcom/android/browser/UrlUtils;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 335
    const-string v12, "&source=android-browser-suggest&"

    .line 336
    .local v12, searchSource:Ljava/lang/String;
    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_81

    .line 337
    const/4 v13, 0x0

    .line 338
    .local v13, source:Ljava/lang/String;
    const-string v0, "app_data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 339
    .local v7, appData:Landroid/os/Bundle;
    if-eqz v7, :cond_c7

    .line 340
    const-string v0, "source"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 342
    :cond_c7
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 343
    const-string v13, "unknown"

    .line 345
    :cond_cf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&source=android-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_81
.end method

.method static handleWebSearchIntent(Landroid/app/Activity;Lcom/android/browser/Controller;Landroid/content/Intent;)Z
    .registers 8
    .parameter "activity"
    .parameter "controller"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 360
    if-nez p2, :cond_4

    .line 376
    :cond_3
    :goto_3
    return v3

    .line 362
    :cond_4
    const/4 v2, 0x0

    .line 363
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 368
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 369
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 370
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 376
    .end local v1           #data:Landroid/net/Uri;
    :cond_23
    :goto_23
    const-string v3, "app_data"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "intent_extra_data_key"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v2, v3, v4}, Lcom/android/browser/IntentHandler;->handleWebSearchRequest(Landroid/app/Activity;Lcom/android/browser/Controller;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    goto :goto_3

    .line 371
    :cond_34
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 374
    :cond_4c
    const-string v3, "query"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_23
.end method

.method private static handleWebSearchRequest(Landroid/app/Activity;Lcom/android/browser/Controller;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 12
    .parameter "activity"
    .parameter "controller"
    .parameter "inUrl"
    .parameter "appData"
    .parameter "extraData"

    .prologue
    const/4 v4, 0x0

    .line 389
    if-nez p2, :cond_4

    .line 422
    :cond_3
    :goto_3
    return v4

    .line 393
    :cond_4
    invoke-static {p2}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 398
    sget-object v5, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_3

    sget-object v5, Lcom/android/browser/UrlUtils;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_3

    .line 403
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 404
    .local v0, cr:Landroid/content/ContentResolver;
    move-object v1, v3

    .line 405
    .local v1, newUrl:Ljava/lang/String;
    if-eqz p1, :cond_4f

    invoke-virtual {p1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v5

    if-eqz v5, :cond_4f

    invoke-virtual {p1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v5

    if-eqz v5, :cond_4f

    invoke-virtual {p1}, Lcom/android/browser/Controller;->getTabControl()Lcom/android/browser/TabControl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v5

    if-nez v5, :cond_59

    .line 409
    :cond_4f
    new-instance v5, Lcom/android/browser/IntentHandler$1;

    invoke-direct {v5, v0, v1}, Lcom/android/browser/IntentHandler$1;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    new-array v6, v4, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/android/browser/IntentHandler$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 418
    :cond_59
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v2

    .line 419
    .local v2, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-eqz v2, :cond_3

    .line 420
    invoke-interface {v2, p0, v3, p3, p4}, Lcom/android/browser/search/SearchEngine;->startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 422
    const/4 v4, 0x1

    goto :goto_3
.end method


# virtual methods
.method onNewIntent(Landroid/content/Intent;)V
    .registers 26
    .parameter "intent"

    .prologue
    .line 72
    invoke-static/range {p1 .. p1}, Lcom/android/browser/IntentHandler;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/IntentHandler$UrlData;

    move-result-object v19

    .line 73
    .local v19, urlData2:Lcom/android/browser/IntentHandler$UrlData;
    const-string v21, "android.intent.action.SEARCH"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_42

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "rtsp://"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_42

    .line 75
    new-instance v10, Landroid/content/Intent;

    const-string v21, "android.intent.action.VIEW"

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v10, i:Landroid/content/Intent;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 295
    .end local v10           #i:Landroid/content/Intent;
    :cond_41
    :goto_41
    return-void

    .line 80
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v8

    .line 83
    .local v8, current:Lcom/android/browser/Tab;
    if-nez v8, :cond_67

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v8

    .line 86
    if-eqz v8, :cond_41

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/browser/Controller;->setActiveTab(Lcom/android/browser/Tab;)V

    .line 93
    :cond_67
    const-string v21, "android.intent.action.SEARCH"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_99

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "wtai://"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_99

    .line 95
    invoke-virtual {v8}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v21

    invoke-virtual {v8}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v22

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_41

    .line 99
    :cond_99
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, action:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v9

    .line 101
    .local v9, flags:I
    const-string v21, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_41

    const/high16 v21, 0x10

    and-int v21, v21, v9

    if-nez v21, :cond_41

    .line 107
    if-eqz v3, :cond_d4

    const-string v21, "android.intent.action.DOWNLOAD_ACTIVITY_CHOOSER"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d4

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/browser/BrowserActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/browser/DownloadActivityChooser;->handleIntent(Lcom/android/browser/BrowserActivity;Landroid/content/Intent;)V

    goto/16 :goto_41

    .line 113
    :cond_d4
    const-string v21, "show_bookmarks"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_eb

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/browser/Controller;->bookmarksOrHistoryPicker(Z)V

    goto/16 :goto_41

    .line 119
    :cond_eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    const-string v22, "search"

    invoke-virtual/range {v21 .. v22}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/SearchManager;

    invoke-virtual/range {v21 .. v21}, Landroid/app/SearchManager;->stopSearch()V

    .line 121
    const-string v21, "android.speech.action.VOICE_SEARCH_RESULTS"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 123
    .local v4, activateVoiceSearch:Z
    const-string v21, "android.intent.action.VIEW"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_138

    const-string v21, "android.nfc.action.NDEF_DISCOVERED"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_138

    const-string v21, "android.intent.action.SEARCH"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_138

    const-string v21, "android.intent.action.MEDIA_SEARCH"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_138

    const-string v21, "android.intent.action.WEB_SEARCH"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_138

    if-eqz v4, :cond_28f

    .line 129
    :cond_138
    invoke-virtual {v8}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v21

    if-eqz v21, :cond_194

    .line 130
    invoke-virtual {v8}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v16

    .line 131
    .local v16, title:Ljava/lang/String;
    if-eqz v16, :cond_158

    const-string v21, "query"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_41

    .line 137
    :cond_158
    const-string v21, "android.intent.action.SEARCH"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_194

    invoke-virtual {v8}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v21

    if-eqz v21, :cond_194

    .line 139
    new-instance v12, Landroid/content/Intent;

    const-string v21, "com.android.common.speech.LOG_EVENT"

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v12, logIntent:Landroid/content/Intent;
    const-string v21, "extra_event"

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    const-string v21, "value"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    .end local v12           #logIntent:Landroid/content/Intent;
    .end local v16           #title:Ljava/lang/String;
    :cond_194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/android/browser/IntentHandler;->handleWebSearchIntent(Landroid/app/Activity;Lcom/android/browser/Controller;Landroid/content/Intent;)Z

    move-result v21

    if-nez v21, :cond_41

    .line 158
    invoke-static/range {p1 .. p1}, Lcom/android/browser/IntentHandler;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/IntentHandler$UrlData;

    move-result-object v18

    .line 159
    .local v18, urlData:Lcom/android/browser/IntentHandler$UrlData;
    invoke-virtual/range {v18 .. v18}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_1c9

    .line 160
    new-instance v18, Lcom/android/browser/IntentHandler$UrlData;

    .end local v18           #urlData:Lcom/android/browser/IntentHandler$UrlData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/browser/IntentHandler$UrlData;-><init>(Ljava/lang/String;)V

    .line 163
    .restart local v18       #urlData:Lcom/android/browser/IntentHandler$UrlData;
    :cond_1c9
    const-string v21, "create_new_tab"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    if-nez v21, :cond_1df

    invoke-virtual/range {v18 .. v18}, Lcom/android/browser/IntentHandler$UrlData;->isPreloaded()Z

    move-result v21

    if-eqz v21, :cond_1ef

    .line 165
    :cond_1df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    move-result-object v14

    .line 166
    .local v14, t:Lcom/android/browser/Tab;
    goto/16 :goto_41

    .line 177
    .end local v14           #t:Lcom/android/browser/Tab;
    :cond_1ef
    const-string v21, "com.android.browser.application_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, appId:Ljava/lang/String;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_222

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "javascript:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_222

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    goto/16 :goto_41

    .line 185
    :cond_222
    const-string v21, "android.intent.action.VIEW"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_230

    if-eqz v4, :cond_30b

    if-eqz v5, :cond_30b

    :cond_230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_30b

    .line 190
    if-nez v4, :cond_250

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v21

    if-nez v21, :cond_26d

    .line 191
    :cond_250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/browser/TabControl;->getTabFromAppId(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v6

    .line 192
    .local v6, appTab:Lcom/android/browser/Tab;
    if-eqz v6, :cond_26d

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Lcom/android/browser/Controller;->reuseTab(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto/16 :goto_41

    .line 199
    .end local v6           #appTab:Lcom/android/browser/Tab;
    :cond_26d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/browser/TabControl;->findTabWithUrl(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v6

    .line 200
    .restart local v6       #appTab:Lcom/android/browser/Tab;
    if-eqz v6, :cond_2e6

    .line 202
    invoke-virtual {v6, v5}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 203
    if-eq v8, v6, :cond_28f

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/browser/Controller;->switchToTab(Lcom/android/browser/Tab;)Z

    .line 252
    .end local v5           #appId:Ljava/lang/String;
    .end local v6           #appTab:Lcom/android/browser/Tab;
    .end local v18           #urlData:Lcom/android/browser/IntentHandler$UrlData;
    :cond_28f
    :goto_28f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_41

    .line 253
    if-eqz p1, :cond_44c

    .line 254
    const-string v21, "IntentHandler"

    const-string v22, "onReceive : Received intent"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    const-string v22, "android.intent.action.REQ_SAVE_CURRNET_URL"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_443

    .line 256
    const-string v21, "image_path"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 257
    .local v11, imagePath:Ljava/lang/String;
    if-eqz v11, :cond_43a

    .line 258
    const-string v21, "IntentHandler"

    const-string v22, " ** BROWSER_TO_SCREENCAPTURE : Received intent from ScreenCapture.."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v21, v0

    if-eqz v21, :cond_431

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v20

    .line 262
    .local v20, view:Landroid/webkit/WebView;
    if-eqz v20, :cond_428

    .line 263
    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    .line 265
    .local v7, currUrl:Ljava/lang/String;
    if-nez v7, :cond_3dd

    .line 266
    const-string v21, "IntentHandler"

    const-string v22, " ** startScreenCaptureApp : Current url is null.."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 213
    .end local v7           #currUrl:Ljava/lang/String;
    .end local v11           #imagePath:Ljava/lang/String;
    .end local v20           #view:Landroid/webkit/WebView;
    .restart local v5       #appId:Ljava/lang/String;
    .restart local v6       #appTab:Lcom/android/browser/Tab;
    .restart local v18       #urlData:Lcom/android/browser/IntentHandler$UrlData;
    :cond_2e6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/browser/Controller;->openTab(Lcom/android/browser/IntentHandler$UrlData;)Lcom/android/browser/Tab;

    move-result-object v15

    .line 214
    .local v15, tab:Lcom/android/browser/Tab;
    if-eqz v15, :cond_28f

    .line 215
    invoke-virtual {v15, v5}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v21

    const/high16 v22, 0x40

    and-int v21, v21, v22

    if-eqz v21, :cond_28f

    .line 217
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Lcom/android/browser/Tab;->setCloseOnBack(Z)V

    goto :goto_28f

    .line 222
    .end local v6           #appTab:Lcom/android/browser/Tab;
    .end local v15           #tab:Lcom/android/browser/Tab;
    :cond_30b
    invoke-virtual/range {v18 .. v18}, Lcom/android/browser/IntentHandler$UrlData;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_3bc

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "about:debug"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3bc

    .line 224
    const-string v21, "about:debug.dom"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_338

    .line 225
    invoke-virtual {v8}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto/16 :goto_41

    .line 226
    :cond_338
    const-string v21, "about:debug.dom.file"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_351

    .line 227
    invoke-virtual {v8}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto/16 :goto_41

    .line 228
    :cond_351
    const-string v21, "about:debug.render"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_36a

    .line 229
    invoke-virtual {v8}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto/16 :goto_41

    .line 230
    :cond_36a
    const-string v21, "about:debug.render.file"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_383

    .line 231
    invoke-virtual {v8}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v21

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto/16 :goto_41

    .line 232
    :cond_383
    const-string v21, "about:debug.display"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_39a

    .line 233
    invoke-virtual {v8}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto/16 :goto_41

    .line 234
    :cond_39a
    const-string v21, "about:debug.nav"

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/browser/IntentHandler$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3b1

    .line 235
    invoke-virtual {v8}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebView;->debugDump()V

    goto/16 :goto_41

    .line 237
    :cond_3b1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/browser/BrowserSettings;->toggleDebugSettings()V

    goto/16 :goto_41

    .line 242
    :cond_3bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/android/browser/Controller;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 246
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mController:Lcom/android/browser/Controller;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lcom/android/browser/Controller;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/IntentHandler$UrlData;)V

    goto/16 :goto_28f

    .line 270
    .end local v5           #appId:Ljava/lang/String;
    .end local v18           #urlData:Lcom/android/browser/IntentHandler$UrlData;
    .restart local v7       #currUrl:Ljava/lang/String;
    .restart local v11       #imagePath:Ljava/lang/String;
    .restart local v20       #view:Landroid/webkit/WebView;
    :cond_3dd
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 271
    .local v17, uri:Landroid/net/Uri;
    new-instance v13, Landroid/content/Intent;

    const-string v21, "android.intent.action.CROP_IMAGE"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v13, mIntent:Landroid/content/Intent;
    const-string v21, "image/*"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v21, "android.intent.category.DEFAULT"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v21, "browser_url"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/IntentHandler;->mActivity:Landroid/app/Activity;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 276
    const-string v21, "IntentHandler"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " ** startScreenCaptureApp : send current url : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 278
    .end local v7           #currUrl:Ljava/lang/String;
    .end local v13           #mIntent:Landroid/content/Intent;
    .end local v17           #uri:Landroid/net/Uri;
    :cond_428
    const-string v21, "IntentHandler"

    const-string v22, " ** startScreenCaptureApp : view is null.."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 281
    .end local v20           #view:Landroid/webkit/WebView;
    :cond_431
    const-string v21, "IntentHandler"

    const-string v22, " ** startScreenCaptureApp : mTabControl is null.."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 285
    :cond_43a
    const-string v21, "IntentHandler"

    const-string v22, " ** mSCREENCAPTUREIntentReceiver : imagePath is null.."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 288
    .end local v11           #imagePath:Ljava/lang/String;
    :cond_443
    const-string v21, "IntentHandler"

    const-string v22, " ** mSCREENCAPTUREIntentReceiver : intent is not from ScreenCapture.."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 291
    :cond_44c
    const-string v21, "IntentHandler"

    const-string v22, " ** mSCREENCAPTUREIntentReceiver : intent is null.."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41
.end method
