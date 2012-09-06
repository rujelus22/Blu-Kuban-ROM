.class final Lcom/google/android/youtube/app/b/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/b/a/e;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/b/a/e;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/youtube/app/b/a/f;->a:Lcom/google/android/youtube/app/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/f;->a:Lcom/google/android/youtube/app/b/a/e;

    invoke-static {v0}, Lcom/google/android/youtube/app/b/a/e;->a(Lcom/google/android/youtube/app/b/a/e;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 79
    :goto_5
    return-void

    .line 76
    :catch_6
    move-exception v0

    .line 77
    const-string v1, "IOException when starting MediaServer"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method
