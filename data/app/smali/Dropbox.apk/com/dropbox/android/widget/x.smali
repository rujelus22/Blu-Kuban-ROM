.class final Lcom/dropbox/android/widget/x;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/widget/DbxVideoView;


# direct methods
.method constructor <init>(Lcom/dropbox/android/widget/DbxVideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/dropbox/android/widget/x;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/dropbox/android/widget/x;->a:Lcom/dropbox/android/widget/DbxVideoView;

    invoke-static {v0, p2}, Lcom/dropbox/android/widget/DbxVideoView;->e(Lcom/dropbox/android/widget/DbxVideoView;I)I

    .line 416
    return-void
.end method
