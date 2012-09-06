.class Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;
.super Lcom/google/common/collect/ImmutableMap$SerializedForm;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .registers 3
    .parameter

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    .line 751
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;->comparator:Ljava/util/Comparator;

    .line 752
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 754
    new-instance v0, Lcom/google/common/collect/dy;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/common/collect/dy;-><init>(Ljava/util/Comparator;)V

    .line 755
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableSortedMap$SerializedForm;->createMap(Lcom/google/common/collect/dm;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
