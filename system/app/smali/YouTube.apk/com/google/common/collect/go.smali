.class final Lcom/google/common/collect/go;
.super Lcom/google/common/collect/gm;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/gg;


# instance fields
.field volatile e:J

.field f:Lcom/google/common/collect/gg;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field g:Lcom/google/common/collect/gg;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/collect/gg;)V
    .registers 6
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 1066
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/gm;-><init>(Ljava/lang/Object;ILcom/google/common/collect/gg;)V

    .line 1071
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/common/collect/go;->e:J

    .line 1083
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/go;->f:Lcom/google/common/collect/gg;

    .line 1096
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->nullEntry()Lcom/google/common/collect/gg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/go;->g:Lcom/google/common/collect/gg;

    .line 1067
    return-void
.end method


# virtual methods
.method public final getExpirationTime()J
    .registers 3

    .prologue
    .line 1075
    iget-wide v0, p0, Lcom/google/common/collect/go;->e:J

    return-wide v0
.end method

.method public final getNextExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/google/common/collect/go;->f:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final getPreviousExpirable()Lcom/google/common/collect/gg;
    .registers 2

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/google/common/collect/go;->g:Lcom/google/common/collect/gg;

    return-object v0
.end method

.method public final setExpirationTime(J)V
    .registers 3
    .parameter

    .prologue
    .line 1080
    iput-wide p1, p0, Lcom/google/common/collect/go;->e:J

    .line 1081
    return-void
.end method

.method public final setNextExpirable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/google/common/collect/go;->f:Lcom/google/common/collect/gg;

    .line 1094
    return-void
.end method

.method public final setPreviousExpirable(Lcom/google/common/collect/gg;)V
    .registers 2
    .parameter

    .prologue
    .line 1106
    iput-object p1, p0, Lcom/google/common/collect/go;->g:Lcom/google/common/collect/gg;

    .line 1107
    return-void
.end method
