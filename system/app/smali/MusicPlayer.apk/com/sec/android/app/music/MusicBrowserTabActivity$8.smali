.class Lcom/sec/android/app/music/MusicBrowserTabActivity$8;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicBrowserTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/MusicBrowserTabActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 418
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$8;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter "item"

    .prologue
    .line 422
    const-string v1, "http://waprd.telstra.com/redirect?target=music-g"

    .line 424
    .local v1, uri:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 425
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    const-string v2, "http://waprd.telstra.com/redirect?target=music-g"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 427
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 431
    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$8;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->startActivity(Landroid/content/Intent;)V

    .line 432
    iget-object v2, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$8;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicBrowserTabActivity;->finish()V

    .line 434
    const/4 v2, 0x0

    return v2
.end method
