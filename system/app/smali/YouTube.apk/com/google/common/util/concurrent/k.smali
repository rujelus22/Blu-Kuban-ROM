.class public final Lcom/google/common/util/concurrent/k;
.super Lcom/google/common/util/concurrent/AbstractFuture;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/util/concurrent/k;
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/common/util/concurrent/k;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/k;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .registers 3
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .registers 3
    .parameter

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/google/common/util/concurrent/AbstractFuture;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method
