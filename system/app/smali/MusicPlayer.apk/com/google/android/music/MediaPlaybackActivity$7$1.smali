.class Lcom/google/android/music/MediaPlaybackActivity$7$1;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity$7;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/MediaPlaybackActivity$7;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity$7;)V
    .registers 2
    .parameter

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$7$1;->this$1:Lcom/google/android/music/MediaPlaybackActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$7$1;->this$1:Lcom/google/android/music/MediaPlaybackActivity$7;

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackActivity$7;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/google/android/music/MediaPlaybackActivity;->finish()V

    .line 1263
    return-void
.end method
