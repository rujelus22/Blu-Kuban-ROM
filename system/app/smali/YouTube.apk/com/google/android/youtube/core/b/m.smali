.class final Lcom/google/android/youtube/core/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/o;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/b/j;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/b/j;)V
    .registers 2
    .parameter

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/google/android/youtube/core/b/m;->a:Lcom/google/android/youtube/core/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1164
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, "default"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
