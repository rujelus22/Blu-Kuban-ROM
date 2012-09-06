.class public final Lcom/google/common/util/concurrent/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/common/collect/Ordering;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1236
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/e;

    invoke-direct {v1}, Lcom/google/common/util/concurrent/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Ordering;->onResultOf(Lcom/google/common/base/v;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/d;->a:Lcom/google/common/collect/Ordering;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/common/util/concurrent/f;
    .registers 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 91
    invoke-static {}, Lcom/google/common/util/concurrent/k;->a()Lcom/google/common/util/concurrent/k;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/k;->a(Ljava/lang/Object;)Z

    .line 93
    return-object v0
.end method
