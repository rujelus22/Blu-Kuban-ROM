.class Lcom/google/common/collect/TreeBasedTable$Factory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/am;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .registers 2
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/google/common/collect/TreeBasedTable$Factory;->comparator:Ljava/util/Comparator;

    .line 83
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/google/common/collect/TreeBasedTable$Factory;->get()Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/TreeMap;
    .registers 3

    .prologue
    .line 86
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/common/collect/TreeBasedTable$Factory;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
