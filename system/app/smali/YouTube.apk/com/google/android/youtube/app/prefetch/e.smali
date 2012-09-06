.class final Lcom/google/android/youtube/app/prefetch/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/app/prefetch/d;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/prefetch/d;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/android/youtube/app/prefetch/e;->b:Lcom/google/android/youtube/app/prefetch/d;

    iput-object p2, p0, Lcom/google/android/youtube/app/prefetch/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/youtube/app/prefetch/e;->b:Lcom/google/android/youtube/app/prefetch/d;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/youtube/app/prefetch/e;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/google/android/youtube/app/prefetch/d;->a(Lcom/google/android/youtube/app/prefetch/d;Ljava/io/File;)V

    .line 307
    return-void
.end method
