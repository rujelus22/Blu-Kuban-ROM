.class Lcom/google/common/collect/ImmutableSetMultimap$SortedKeyBuilderMultimap;
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
    .line 166
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMultimap;-><init>(Ljava/util/Map;)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/google/common/collect/ImmutableSetMultimap$SortedKeyBuilderMultimap;->putAll(Lcom/google/common/collect/hu;)Z

    .line 168
    return-void
.end method


# virtual methods
.method createCollection()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 170
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method
