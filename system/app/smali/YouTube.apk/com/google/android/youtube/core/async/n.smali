.class final Lcom/google/android/youtube/core/async/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/GDataRequest;

.field final synthetic b:Lcom/google/android/youtube/core/async/m;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/m;Lcom/google/android/youtube/core/async/GDataRequest;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/youtube/core/async/n;->b:Lcom/google/android/youtube/core/async/m;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/n;->a:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 88
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/n;->a:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/async/GDataRequest;->b(Lcom/google/android/youtube/core/async/z;)Z

    move-result v0

    return v0
.end method
