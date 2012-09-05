.class final Lcom/google/android/youtube/core/async/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/aa;

.field private final b:Lcom/google/android/youtube/core/async/GDataRequest;

.field private final c:Lcom/google/android/youtube/core/async/g;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/async/aa;Lcom/google/android/youtube/core/async/GDataRequest;Lcom/google/android/youtube/core/async/g;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ab;->a:Lcom/google/android/youtube/core/async/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Lcom/google/android/youtube/core/async/ab;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    .line 77
    iput-object p3, p0, Lcom/google/android/youtube/core/async/ab;->c:Lcom/google/android/youtube/core/async/g;

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
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ab;->c:Lcom/google/android/youtube/core/async/g;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ab;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 70
    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/android/youtube/core/async/ab;->c:Lcom/google/android/youtube/core/async/g;

    iget-object v1, p0, Lcom/google/android/youtube/core/async/ab;->b:Lcom/google/android/youtube/core/async/GDataRequest;

    invoke-interface {v0, v1, p2}, Lcom/google/android/youtube/core/async/g;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
