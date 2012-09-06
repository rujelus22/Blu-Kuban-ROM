.class final Lcom/google/common/collect/gn;
.super Lcom/google/common/collect/gm;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/gg;


# instance fields
.field e:Lcom/google/common/collect/gg;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field f:Lcom/google/common/collect/gg;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/gg;)V
    .registers 5
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1113
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/gm;-><init>(Ljava/lang/Object;ILcom/google/common/collect/gg;)V

    .line 1118
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gn;->e:Lcom/google/common/collect/gg;

    .line 1131
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/gn;->f:Lcom/google/common/collect/gg;

    .line 1114
    return-void
.end method


# virtual methods
.method public final getNextEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/google/common/collect/gn;->e:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final getPreviousEvictable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/google/common/collect/gn;->f:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final setNextEvictable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/google/common/collect/gn;->e:Lcom/google/common/collect/gg;

    .line 1129
    return-void
.end method

.method public final setPreviousEvictable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/google/common/collect/gn;->f:Lcom/google/common/collect/gg;

    .line 1142
    return-void
.end method
