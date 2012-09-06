.class public final Lcom/google/android/youtube/app/prefetch/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Ljava/util/Comparator;


# instance fields
.field private final a:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    new-instance v0, Lcom/google/android/youtube/app/prefetch/i;

    invoke-direct {v0}, Lcom/google/android/youtube/app/prefetch/i;-><init>()V

    sput-object v0, Lcom/google/android/youtube/app/prefetch/h;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 5
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_10

    const/4 v0, 0x1

    :goto_a
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Z)V

    .line 23
    iput-wide p1, p0, Lcom/google/android/youtube/app/prefetch/h;->a:J

    .line 24
    return-void

    .line 22
    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/app/prefetch/Prefetch$Source;Ljava/util/List;)Ljava/util/Set;
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/google/android/youtube/app/prefetch/h;->b:Ljava/util/Comparator;

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    .line 41
    const-wide/16 v0, 0x0

    .line 42
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v1, v0

    :goto_17
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/prefetch/Prefetch;

    .line 43
    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_38

    iget-wide v5, v0, Lcom/google/android/youtube/app/prefetch/Prefetch;->c:J

    add-long/2addr v5, v1

    iget-wide v7, p0, Lcom/google/android/youtube/app/prefetch/h;->a:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_38

    .line 44
    iget-wide v5, v0, Lcom/google/android/youtube/app/prefetch/Prefetch;->c:J

    add-long/2addr v1, v5

    .line 45
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_38
    move-wide v0, v1

    move-wide v1, v0

    goto :goto_17

    .line 49
    :cond_3b
    return-object v3
.end method
