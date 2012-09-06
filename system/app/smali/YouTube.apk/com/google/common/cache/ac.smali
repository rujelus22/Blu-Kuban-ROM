.class Lcom/google/common/cache/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/cache/x;


# instance fields
.field final g:Ljava/lang/Object;

.field final h:I

.field final i:Lcom/google/common/cache/x;

.field volatile j:Lcom/google/common/cache/ag;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/x;)V
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
    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    invoke-static {}, Lcom/google/common/cache/LocalCache;->j()Lcom/google/common/cache/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/ac;->j:Lcom/google/common/cache/ag;

    .line 1060
    iput-object p1, p0, Lcom/google/common/cache/ac;->g:Ljava/lang/Object;

    .line 1061
    iput p2, p0, Lcom/google/common/cache/ac;->h:I

    .line 1062
    iput-object p3, p0, Lcom/google/common/cache/ac;->i:Lcom/google/common/cache/x;

    .line 1063
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .registers 2

    .prologue
    .line 1074
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHash()I
    .registers 2

    .prologue
    .line 1152
    iget v0, p0, Lcom/google/common/cache/ac;->h:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/google/common/cache/ac;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public getNext()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/google/common/cache/ac;->i:Lcom/google/common/cache/x;

    return-object v0
.end method

.method public getNextInAccessQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1084
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextInWriteQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousInAccessQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1094
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousInWriteQueue()Lcom/google/common/cache/x;
    .registers 2

    .prologue
    .line 1126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValueReference()Lcom/google/common/cache/ag;
    .registers 2

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/google/common/cache/ac;->j:Lcom/google/common/cache/ag;

    return-object v0
.end method

.method public getWriteTime()J
    .registers 2

    .prologue
    .line 1106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAccessTime(J)V
    .registers 4
    .parameter

    .prologue
    .line 1079
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextInAccessQueue(Lcom/google/common/cache/x;)V
    .registers 3
    .parameter

    .prologue
    .line 1089
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextInWriteQueue(Lcom/google/common/cache/x;)V
    .registers 3
    .parameter

    .prologue
    .line 1121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousInAccessQueue(Lcom/google/common/cache/x;)V
    .registers 3
    .parameter

    .prologue
    .line 1099
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousInWriteQueue(Lcom/google/common/cache/x;)V
    .registers 3
    .parameter

    .prologue
    .line 1131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setValueReference(Lcom/google/common/cache/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/google/common/cache/ac;->j:Lcom/google/common/cache/ag;

    .line 1148
    return-void
.end method

.method public setWriteTime(J)V
    .registers 4
    .parameter

    .prologue
    .line 1111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
