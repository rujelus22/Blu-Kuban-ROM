.class public final Lcom/google/android/apps/reader/widget/ItemViewFactory;
.super Ljava/lang/Object;
.source "ItemViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/widget/ItemViewFactory$1;,
        Lcom/google/android/apps/reader/widget/ItemViewFactory$ItemViewClient;,
        Lcom/google/android/apps/reader/widget/ItemViewFactory$ItemChromeClient;,
        Lcom/google/android/apps/reader/widget/ItemViewFactory$ViewProxy;,
        Lcom/google/android/apps/reader/widget/ItemViewFactory$DataProxy;,
        Lcom/google/android/apps/reader/widget/ItemViewFactory$SettingsProxy;,
        Lcom/google/android/apps/reader/widget/ItemViewFactory$OnProgressChangeListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final API_LEVEL:I = 0x0

.field private static final HONEYCOMB:I = 0xb

.field private static final TAG:Ljava/lang/String; = "ItemView"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/apps/reader/widget/ItemViewFactory;->API_LEVEL:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private static enableSmoothTransition(Landroid/webkit/WebSettings;)V
    .registers 6
    .parameter

    .prologue
    .line 159
    sget v0, Lcom/google/android/apps/reader/widget/ItemViewFactory;->API_LEVEL:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_21

    .line 161
    :try_start_6
    const-class v0, Landroid/webkit/WebSettings;

    const-string v1, "setEnableSmoothTransition"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 162
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_21} :catch_22

    .line 167
    :cond_21
    :goto_21
    return-void

    .line 163
    :catch_22
    move-exception v0

    .line 164
    const-string v1, "ItemView"

    const-string v2, "enableSmoothTransition failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method public static final getPluginsSupported()Z
    .registers 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public static newView(Landroid/view/ViewGroup;)Landroid/webkit/WebView;
    .registers 14
    .parameter "parent"

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 76
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 79
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f03001b

    invoke-virtual {v4, v9, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebView;

    .line 81
    .local v8, webView:Landroid/webkit/WebView;
    new-instance v9, Lcom/google/android/apps/reader/widget/ItemViewFactory$ItemChromeClient;

    invoke-direct {v9, v10}, Lcom/google/android/apps/reader/widget/ItemViewFactory$ItemChromeClient;-><init>(Lcom/google/android/apps/reader/widget/ItemViewFactory$1;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 82
    new-instance v9, Lcom/google/android/apps/reader/widget/ItemViewFactory$ItemViewClient;

    invoke-direct {v9, v10}, Lcom/google/android/apps/reader/widget/ItemViewFactory$ItemViewClient;-><init>(Lcom/google/android/apps/reader/widget/ItemViewFactory$1;)V

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 85
    new-instance v1, Lcom/google/android/apps/reader/widget/ItemContextMenu;

    invoke-direct {v1}, Lcom/google/android/apps/reader/widget/ItemContextMenu;-><init>()V

    .line 86
    .local v1, contextMenu:Lcom/google/android/apps/reader/widget/ItemContextMenu;
    invoke-virtual {v8, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 87
    invoke-virtual {v8, v1}, Landroid/webkit/WebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 89
    const/high16 v9, 0x200

    invoke-virtual {v8, v9}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 90
    invoke-virtual {v8, v11}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    .line 91
    invoke-virtual {v8, v11}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 98
    sget v9, Lcom/google/android/apps/reader/widget/ItemViewFactory;->API_LEVEL:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_b6

    move v3, v11

    .line 102
    .local v3, hardwareAccelerated:Z
    :goto_41
    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingLeft()I

    move-result v9

    if-gtz v9, :cond_59

    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingTop()I

    move-result v9

    if-gtz v9, :cond_59

    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingRight()I

    move-result v9

    if-gtz v9, :cond_59

    invoke-virtual {v8}, Landroid/webkit/WebView;->getPaddingBottom()I

    move-result v9

    if-lez v9, :cond_b8

    :cond_59
    move v6, v11

    .line 105
    .local v6, padded:Z
    :goto_5a
    if-nez v6, :cond_ba

    if-nez v3, :cond_ba

    move v2, v11

    .line 106
    .local v2, fadingEdge:Z
    :goto_5f
    invoke-virtual {v8, v2}, Landroid/webkit/WebView;->setVerticalFadingEdgeEnabled(Z)V

    .line 107
    invoke-virtual {v8, v2}, Landroid/webkit/WebView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 109
    invoke-virtual {v8}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    .line 112
    .local v7, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v7, v12}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 122
    invoke-virtual {v7, v11}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 124
    invoke-static {}, Lcom/google/android/apps/reader/widget/ItemViewFactory;->getPluginsSupported()Z

    move-result v9

    if-eqz v9, :cond_7e

    invoke-static {v0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->getPluginsEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 125
    invoke-virtual {v7, v11}, Landroid/webkit/WebSettings;->setPluginsEnabled(Z)V

    .line 131
    :cond_7e
    invoke-static {v0}, Lcom/google/android/apps/reader/preference/LocalPreferences;->getTextSize(Landroid/content/Context;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 133
    invoke-virtual {v7, v11}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 135
    invoke-static {v7}, Lcom/google/android/apps/reader/widget/ItemViewFactory;->enableSmoothTransition(Landroid/webkit/WebSettings;)V

    .line 137
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v5, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v5}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    .line 141
    new-instance v9, Lcom/google/android/apps/reader/widget/ItemViewFactory$SettingsProxy;

    invoke-direct {v9, v7}, Lcom/google/android/apps/reader/widget/ItemViewFactory$SettingsProxy;-><init>(Landroid/webkit/WebSettings;)V

    const-string v10, "settings"

    invoke-virtual {v8, v9, v10}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    new-instance v9, Lcom/google/android/apps/reader/widget/ItemViewFactory$DataProxy;

    invoke-direct {v9, v5}, Lcom/google/android/apps/reader/widget/ItemViewFactory$DataProxy;-><init>(Ljava/util/Map;)V

    const-string v10, "data"

    invoke-virtual {v8, v9, v10}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v9, Lcom/google/android/apps/reader/widget/ItemViewFactory$ViewProxy;

    invoke-direct {v9, v8}, Lcom/google/android/apps/reader/widget/ItemViewFactory$ViewProxy;-><init>(Landroid/webkit/WebView;)V

    const-string v10, "view"

    invoke-virtual {v8, v9, v10}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v8, v5}, Landroid/webkit/WebView;->setTag(Ljava/lang/Object;)V

    .line 151
    return-object v8

    .end local v2           #fadingEdge:Z
    .end local v3           #hardwareAccelerated:Z
    .end local v5           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #padded:Z
    .end local v7           #webSettings:Landroid/webkit/WebSettings;
    :cond_b6
    move v3, v12

    .line 98
    goto :goto_41

    .restart local v3       #hardwareAccelerated:Z
    :cond_b8
    move v6, v12

    .line 102
    goto :goto_5a

    .restart local v6       #padded:Z
    :cond_ba
    move v2, v12

    .line 105
    goto :goto_5f
.end method
