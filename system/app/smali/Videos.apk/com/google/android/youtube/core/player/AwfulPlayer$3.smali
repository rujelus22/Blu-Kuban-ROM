.class Lcom/google/android/youtube/core/player/AwfulPlayer$3;
.super Ljava/lang/Thread;
.source "AwfulPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/player/AwfulPlayer;->deleteFileBuffer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

.field final synthetic val$deletePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/AwfulPlayer;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$3;->this$0:Lcom/google/android/youtube/core/player/AwfulPlayer;

    iput-object p2, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$3;->val$deletePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 232
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/AwfulPlayer$3;->val$deletePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 233
    const-string v0, "deleted file buffer"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->v(Ljava/lang/String;)V

    .line 234
    return-void
.end method
