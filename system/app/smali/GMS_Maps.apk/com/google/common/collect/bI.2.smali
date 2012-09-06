.class Lcom/google/common/collect/bI;
.super Lcom/google/common/collect/z;
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

    invoke-direct {p0, v0}, Lcom/google/common/collect/z;-><init>(Ljava/util/Map;)V

    .line 151
    return-void
.end method


# virtual methods
.method c()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 153
    invoke-static {}, Lcom/google/common/collect/dm;->b()Ljava/util/LinkedHashSet;

    move-result-object v0

    return-object v0
.end method
