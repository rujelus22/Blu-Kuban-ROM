.class public Lcom/android/browser/widget/BookmarkWidgetProxy;
.super Landroid/content/BroadcastReceiver;
.source "BookmarkWidgetProxy.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 32
    const-string v0, "com.android.browser.widget.CHANGE_FOLDER"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 33
    invoke-static {p1, p2}, Lcom/android/browser/widget/BookmarkThumbnailWidgetService;->changeFolder(Landroid/content/Context;Landroid/content/Intent;)V

    .line 43
    :goto_10
    return-void

    .line 34
    :cond_11
    const-string v0, "show_browser"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "show_browser"

    const-class v2, Lcom/android/browser/BrowserActivity;

    invoke-direct {v0, v1, v3, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/widget/BookmarkWidgetProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_10

    .line 39
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/android/browser/widget/BookmarkWidgetProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_10
.end method

.method startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 47
    const/high16 v1, 0x1000

    :try_start_2
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    .line 52
    :goto_8
    return-void

    .line 49
    :catch_9
    move-exception v0

    .line 50
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BookmarkWidgetProxy"

    const-string v2, "Failed to start intent activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method
