.class Lcom/google/android/music/MusicPlaybackService$1$1;
.super Ljava/lang/Object;
.source "MusicPlaybackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/MusicPlaybackService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/MusicPlaybackService$1;

.field final synthetic val$peviewPlayType:I

.field final synthetic val$previewDuration:J

.field final synthetic val$previewUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/music/MusicPlaybackService$1;Ljava/lang/String;IJ)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/google/android/music/MusicPlaybackService$1$1;->this$1:Lcom/google/android/music/MusicPlaybackService$1;

    iput-object p2, p0, Lcom/google/android/music/MusicPlaybackService$1$1;->val$previewUrl:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/music/MusicPlaybackService$1$1;->val$peviewPlayType:I

    iput-wide p4, p0, Lcom/google/android/music/MusicPlaybackService$1$1;->val$previewDuration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$1$1;->this$1:Lcom/google/android/music/MusicPlaybackService$1;

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    iget-object v1, p0, Lcom/google/android/music/MusicPlaybackService$1$1;->val$previewUrl:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/music/MusicPlaybackService$1$1;->val$peviewPlayType:I

    iget-wide v3, p0, Lcom/google/android/music/MusicPlaybackService$1$1;->val$previewDuration:J

    #calls: Lcom/google/android/music/MusicPlaybackService;->setPreviewValues(Ljava/lang/String;IJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/MusicPlaybackService;->access$100(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;IJ)V

    .line 215
    iget-object v0, p0, Lcom/google/android/music/MusicPlaybackService$1$1;->this$1:Lcom/google/android/music/MusicPlaybackService$1;

    iget-object v0, v0, Lcom/google/android/music/MusicPlaybackService$1;->this$0:Lcom/google/android/music/MusicPlaybackService;

    const-string v1, "com.android.music.metachanged"

    #calls: Lcom/google/android/music/MusicPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/music/MusicPlaybackService;->access$200(Lcom/google/android/music/MusicPlaybackService;Ljava/lang/String;)V

    .line 216
    return-void
.end method
