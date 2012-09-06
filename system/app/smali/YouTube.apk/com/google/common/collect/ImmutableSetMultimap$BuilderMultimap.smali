.class Lcom/google/common/collect/ImmutableSetMultimap$BuilderMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 150
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMultimap;-><init>(Ljava/util/Map;)V

    .line 151
    return-void
.end method


# virtual methods
.method createCollection()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 153
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method
