.class final Lcom/google/android/youtube/core/client/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/client/l;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/client/l;)V
    .registers 2
    .parameter

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/google/android/youtube/core/client/o;->a:Lcom/google/android/youtube/core/client/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 1008
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p1, Lcom/google/android/youtube/core/async/GDataRequest;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const-string v1, "default"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
