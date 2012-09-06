.class final Lcom/google/android/youtube/core/cache/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/core/cache/d;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/cache/d;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/e;->b:Lcom/google/android/youtube/core/cache/d;

    iput-object p2, p0, Lcom/google/android/youtube/core/cache/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/e;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
