.class public Lcom/android/browser/BrowserBookmarkSetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BrowserBookmarkSetReceiver.java"


# instance fields
.field tmpSettings:Lcom/android/browser/BrowserSettings;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserBookmarkSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 51
    .local v10, intentAction:Ljava/lang/String;
    const-string v1, "android.intent.action.OMACP_BROWSER_SET_BOOKMARK"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 52
    const-string v1, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, title:Ljava/lang/String;
    const-string v1, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 54
    .local v11, originUrl:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/browser/UrlUtils;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 60
    .local v13, unfilteredUrl:Ljava/lang/String;
    move-object v3, v13

    .line 62
    .local v3, url:Ljava/lang/String;
    :try_start_21
    new-instance v14, Ljava/net/URI;

    invoke-direct {v14, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 63
    .local v14, uriObj:Ljava/net/URI;
    invoke-virtual {v14}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v12

    .line 65
    .local v12, scheme:Ljava/lang/String;
    const-string v1, "about"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    const-string v1, "data"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    const-string v1, "javascript"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    const-string v1, "file"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    const-string v1, "content"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7b

    const-string v1, "rtsp"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_57
    .catch Ljava/net/URISyntaxException; {:try_start_21 .. :try_end_57} :catch_73

    move-result v1

    if-nez v1, :cond_7b

    .line 75
    :try_start_5a
    new-instance v8, Landroid/net/WebAddress;

    invoke-direct {v8, v13}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V
    :try_end_5f
    .catch Landroid/net/ParseException; {:try_start_5a .. :try_end_5f} :catch_85
    .catch Ljava/net/URISyntaxException; {:try_start_5a .. :try_end_5f} :catch_73

    .line 80
    .local v8, address:Landroid/net/WebAddress;
    :try_start_5f
    invoke-virtual {v8}, Landroid/net/WebAddress;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_90

    .line 81
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, ""

    const-string v5, ""

    invoke-direct {v1, v2, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_73
    .catch Ljava/net/URISyntaxException; {:try_start_5f .. :try_end_73} :catch_73

    .line 86
    .end local v8           #address:Landroid/net/WebAddress;
    .end local v12           #scheme:Ljava/lang/String;
    .end local v14           #uriObj:Ljava/net/URI;
    :catch_73
    move-exception v9

    .line 87
    .local v9, e:Ljava/net/URISyntaxException;
    const-string v1, "BrowserBookmarkReceiver"

    const-string v2, "** onReceive : URI syntax error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .end local v9           #e:Ljava/net/URISyntaxException;
    :cond_7b
    :goto_7b
    const/4 v2, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/android/browser/Bookmarks;->addBookmark(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;J)V

    .line 96
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    .end local v11           #originUrl:Ljava/lang/String;
    .end local v13           #unfilteredUrl:Ljava/lang/String;
    :goto_84
    return-void

    .line 76
    .restart local v3       #url:Ljava/lang/String;
    .restart local v4       #title:Ljava/lang/String;
    .restart local v11       #originUrl:Ljava/lang/String;
    .restart local v12       #scheme:Ljava/lang/String;
    .restart local v13       #unfilteredUrl:Ljava/lang/String;
    .restart local v14       #uriObj:Ljava/net/URI;
    :catch_85
    move-exception v9

    .line 77
    .local v9, e:Landroid/net/ParseException;
    :try_start_86
    new-instance v1, Ljava/net/URISyntaxException;

    const-string v2, ""

    const-string v5, ""

    invoke-direct {v1, v2, v5}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 84
    .end local v9           #e:Landroid/net/ParseException;
    .restart local v8       #address:Landroid/net/WebAddress;
    :cond_90
    invoke-virtual {v8}, Landroid/net/WebAddress;->toString()Ljava/lang/String;
    :try_end_93
    .catch Ljava/net/URISyntaxException; {:try_start_86 .. :try_end_93} :catch_73

    move-result-object v3

    goto :goto_7b

    .line 94
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #title:Ljava/lang/String;
    .end local v8           #address:Landroid/net/WebAddress;
    .end local v11           #originUrl:Ljava/lang/String;
    .end local v12           #scheme:Ljava/lang/String;
    .end local v13           #unfilteredUrl:Ljava/lang/String;
    .end local v14           #uriObj:Ljava/net/URI;
    :cond_95
    const-string v1, "BrowserBookmarkReceiver"

    const-string v2, "** onReceive : Wrong intents are received.."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84
.end method
