.class final Lcom/google/android/youtube/core/async/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/GDataRequest;

.field final synthetic b:Lcom/google/android/youtube/core/async/o;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/o;Lcom/google/android/youtube/core/async/GDataRequest;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/youtube/core/async/p;->b:Lcom/google/android/youtube/core/async/o;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/p;->a:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 111
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/p;->a:Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, v0, Lcom/google/android/youtube/core/async/z;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/async/z;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
