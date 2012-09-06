.class public final Lcom/google/common/collect/bm;
.super Lcom/google/common/collect/a;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/a;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    .line 74
    return-void
.end method

.method public static e()Lcom/google/common/collect/bm;
    .registers 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/common/collect/bm;

    invoke-direct {v0}, Lcom/google/common/collect/bm;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic b()Lcom/google/common/collect/Q;
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/a;->b()Lcom/google/common/collect/Q;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/util/Set;
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/a;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .registers 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/a;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/common/collect/a;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/a;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 38
    invoke-super {p0}, Lcom/google/common/collect/a;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)V
    .registers 2
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/common/collect/a;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/google/common/collect/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
