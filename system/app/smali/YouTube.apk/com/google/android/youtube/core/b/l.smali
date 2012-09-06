.class final Lcom/google/android/youtube/core/b/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/o;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/youtube/core/b/k;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/b/k;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 837
    iput-object p1, p0, Lcom/google/android/youtube/core/b/l;->b:Lcom/google/android/youtube/core/b/k;

    iput-object p2, p0, Lcom/google/android/youtube/core/b/l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 837
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/core/b/l;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/youtube/core/async/GDataRequest;->c:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
