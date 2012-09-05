.class Lcom/sec/android/app/music/MusicBrowserTabActivity$18;
.super Ljava/lang/Object;
.source "MusicBrowserTabActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/MusicBrowserTabActivity;->registerNowPlayingButtons()V
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
    .line 1462
    iput-object p1, p0, Lcom/sec/android/app/music/MusicBrowserTabActivity$18;->this$0:Lcom/sec/android/app/music/MusicBrowserTabActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1465
    sget-object v1, Lcom/sec/android/app/music/MusicUtils;->sService:Lcom/sec/android/app/music/ICorePlayerService;

    .line 1467
    .local v1, service:Lcom/sec/android/app/music/ICorePlayerService;
    :try_start_2
    invoke-interface {v1}, Lcom/sec/android/app/music/ICorePlayerService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1468
    invoke-interface {v1}, Lcom/sec/android/app/music/ICorePlayerService;->pause()V

    .line 1475
    :goto_b
    return-void

    .line 1470
    :cond_c
    invoke-interface {v1}, Lcom/sec/android/app/music/ICorePlayerService;->play()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_b

    .line 1472
    :catch_10
    move-exception v0

    .line 1473
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b
.end method
