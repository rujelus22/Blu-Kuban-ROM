.class final Lcom/google/android/youtube/core/async/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/ao;

.field private final b:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final c:Lcom/google/android/youtube/core/async/l;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/ao;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/l;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ap;->a:Lcom/google/android/youtube/core/async/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ap;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 77
    iput-object p3, p0, Lcom/google/android/youtube/core/async/ap;->c:Lcom/google/android/youtube/core/async/l;

    .line 78
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ap;->c:Lcom/google/android/youtube/core/async/l;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ap;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 70
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ap;->c:Lcom/google/android/youtube/core/async/l;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ap;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
