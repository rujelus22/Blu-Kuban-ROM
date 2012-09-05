.class Lcom/sec/android/app/music/TrackBrowserActivity$33;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;->registerNowPlayingButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 2264
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$33;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 2267
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$33;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const-class v2, Lcom/sec/android/app/music/MusicPlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2268
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2269
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$33;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 2270
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$33;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mIsNowPlayingList:Z
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$2100(Lcom/sec/android/app/music/TrackBrowserActivity;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2271
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$33;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const v1, 0x7f040005

    const v2, 0x7f040006

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->overridePendingTransition(II)V

    .line 2273
    :cond_26
    return-void
.end method
