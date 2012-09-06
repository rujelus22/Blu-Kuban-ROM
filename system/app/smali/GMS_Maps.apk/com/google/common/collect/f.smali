.class Lcom/google/common/collect/f;
.super Lcom/google/common/collect/a;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/google/common/collect/a;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/collect/a;-><init>(Ljava/util/Map;Lcom/google/common/collect/a;Lcom/google/common/collect/b;)V

    .line 367
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/google/common/collect/a;Lcom/google/common/collect/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 364
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/f;-><init>(Ljava/util/Map;Lcom/google/common/collect/a;)V

    return-void
.end method


# virtual methods
.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 364
    invoke-super {p0}, Lcom/google/common/collect/a;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 364
    invoke-super {p0}, Lcom/google/common/collect/a;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
