.class Lcom/sec/android/app/music/TrackBrowserActivity$35;
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
    .line 2291
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$35;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 2294
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 2296
    .local v1, service:Lcom/sec/android/app/music/ICorePlayerService;
    :try_start_2
    invoke-interface {v1}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2297
    invoke-interface {v1}, Lcom/sec/android/app/music/ICorePlayerService;->pause()V

    .line 2304
    :goto_b
    return-void

    .line 2299
    :cond_c
    invoke-interface {v1}, Lcom/sec/android/app/music/ICorePlayerService;->play()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_b

    .line 2301
    :catch_10
    move-exception v0

    .line 2302
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method