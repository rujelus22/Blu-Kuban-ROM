.class Lcom/google/android/music/MediaPlaybackActivity$11$1;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MediaPlaybackActivity$11;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/MediaPlaybackActivity$11;


# direct methods
.method constructor <init>(Lcom/google/android/music/MediaPlaybackActivity$11;)V
    .registers 2
    .parameter

    .prologue
    .line 1962
    iput-object p1, p0, Lcom/google/android/music/MediaPlaybackActivity$11$1;->this$1:Lcom/google/android/music/MediaPlaybackActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/google/android/music/MediaPlaybackActivity$11$1;->this$1:Lcom/google/android/music/MediaPlaybackActivity$11;

    iget-object v0, v0, Lcom/google/android/music/MediaPlaybackActivity$11;->this$0:Lcom/google/android/music/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/google/android/music/MediaPlaybackActivity;->finish()V

    .line 1965
    return-void
.end method
