.class final Lcom/google/android/youtube/core/player/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/core/player/d;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/d;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/youtube/core/player/h;->b:Lcom/google/android/youtube/core/player/d;

    iput-object p2, p0, Lcom/google/android/youtube/core/player/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 243
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/h;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 244
    invoke-static {}, Lcom/google/android/youtube/core/L;->d()V

    .line 245
    return-void
.end method
