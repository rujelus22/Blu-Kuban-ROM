.class final Lcom/google/android/youtube/core/async/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/o;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/GDataRequest;

.field final synthetic b:Lcom/google/android/youtube/core/async/v;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/v;Lcom/google/android/youtube/core/async/GDataRequest;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/youtube/core/async/w;->b:Lcom/google/android/youtube/core/async/v;

    iput-object p2, p0, Lcom/google/android/youtube/core/async/w;->a:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 111
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/w;->a:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/async/GDataRequest;->c(Lcom/google/android/youtube/core/async/aj;)Z

    move-result v0

    return v0
.end method
