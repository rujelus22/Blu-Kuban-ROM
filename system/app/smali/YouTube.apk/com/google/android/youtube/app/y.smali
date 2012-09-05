.class final Lcom/google/android/youtube/app/y;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:[Ljava/io/File;

.field final synthetic b:Lcom/google/android/youtube/app/YouTubeApplication;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/YouTubeApplication;[Ljava/io/File;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/android/youtube/app/y;->b:Lcom/google/android/youtube/app/YouTubeApplication;

    iput-object p2, p0, Lcom/google/android/youtube/app/y;->a:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 260
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 261
    iget-object v1, p0, Lcom/google/android/youtube/app/y;->a:[Ljava/io/File;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_11

    aget-object v3, v1, v0

    .line 262
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 264
    :cond_11
    return-void
.end method
