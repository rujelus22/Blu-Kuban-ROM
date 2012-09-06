.class final Lcom/google/android/youtube/core/cache/h;
.super Ljava/lang/ref/SoftReference;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 119
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/h;->a:Ljava/lang/Object;

    .line 120
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/cache/h;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/h;->a:Ljava/lang/Object;

    return-object v0
.end method
