.class final Lcom/google/common/collect/v;
.super Lcom/google/common/collect/t;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field final synthetic b:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method synthetic constructor <init>(Lcom/google/common/collect/AbstractMultimap;)V
    .registers 3
    .parameter

    .prologue
    .line 1277
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/v;-><init>(Lcom/google/common/collect/AbstractMultimap;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/collect/AbstractMultimap;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/google/common/collect/v;->b:Lcom/google/common/collect/AbstractMultimap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/t;-><init>(Lcom/google/common/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 1279
    invoke-static {p0, p1}, Lcom/google/common/collect/at;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 1282
    invoke-static {p0}, Lcom/google/common/collect/Sets;->a(Ljava/util/Set;)I

    move-result v0

    return v0
.end method
