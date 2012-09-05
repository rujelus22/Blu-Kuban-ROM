.class public Lcom/android/browser/BookmarksWidgetProxy;
.super Landroid/content/BroadcastReceiver;
.source "BookmarksWidgetProxy.java"


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
    const-string v0, "show_browser"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "show_browser"

    const-class v2, Lcom/android/browser/BrowserActivity;

    invoke-direct {v0, v1, v3, p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BookmarksWidgetProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 41
    :goto_19
    return-void

    .line 37
    :cond_1a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BookmarksWidgetProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_19
.end method

.method startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 45
    const/high16 v1, 0x1000

    :try_start_2
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_9

    .line 50
    :goto_8
    return-void

    .line 47
    :catch_9
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "BookmarksWidgetProxy"

    const-string v2, "Failed to start intent activity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method
