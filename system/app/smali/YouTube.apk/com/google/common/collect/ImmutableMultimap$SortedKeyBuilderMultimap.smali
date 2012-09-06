.class Lcom/google/common/collect/ImmutableMultimap$SortedKeyBuilderMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Ljava/util/Comparator;Lcom/google/common/collect/hu;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 140
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMultimap;-><init>(Ljava/util/Map;)V

    .line 141
    invoke-virtual {p0, p2}, Lcom/google/common/collect/ImmutableMultimap$SortedKeyBuilderMultimap;->putAll(Lcom/google/common/collect/hu;)Z

    .line 142
    return-void
.end method


# virtual methods
.method createCollection()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
