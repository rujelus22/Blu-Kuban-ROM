.class public LO/b;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final c:I

.field private d:[Lcom/google/googlenav/ai;

.field private final e:LO/c;


# direct methods
.method public constructor <init>(ILcom/google/googlenav/common/io/protocol/ProtoBuf;LO/c;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LO/b;->a:Ljava/lang/Object;

    .line 40
    iput p1, p0, LO/b;->c:I

    .line 41
    iput-object p2, p0, LO/b;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 42
    iput-object p3, p0, LO/b;->e:LO/c;

    .line 43
    return-void
.end method


# virtual methods
.method public Z()V
    .registers 3

    .prologue
    .line 121
    iget-object v1, p0, LO/b;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_3
    iget-object v0, p0, LO/b;->d:[Lcom/google/googlenav/ai;

    if-nez v0, :cond_11

    .line 123
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlenav/ai;

    iput-object v0, p0, LO/b;->d:[Lcom/google/googlenav/ai;

    .line 124
    iget-object v0, p0, LO/b;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 126
    :cond_11
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public a()I
    .registers 2

    .prologue
    .line 47
    const/16 v0, 0x67

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 62
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/c;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 65
    const/4 v1, 0x2

    iget v2, p0, LO/b;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 66
    const/4 v1, 0x1

    iget-object v2, p0, LO/b;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 67
    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 68
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 72
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/c;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 75
    iget-object v3, p0, LO/b;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 76
    :try_start_e
    new-array v0, v2, [Lcom/google/googlenav/ai;

    iput-object v0, p0, LO/b;->d:[Lcom/google/googlenav/ai;

    .line 77
    const/4 v0, 0x0

    :goto_13
    if-ge v0, v2, :cond_25

    .line 78
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 79
    iget-object v5, p0, LO/b;->d:[Lcom/google/googlenav/ai;

    invoke-static {v4}, Lcom/google/googlenav/ai;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ai;

    move-result-object v4

    aput-object v4, v5, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 82
    :cond_25
    iget-object v0, p0, LO/b;->e:LO/c;

    if-eqz v0, :cond_2e

    .line 83
    iget-object v0, p0, LO/b;->e:LO/c;

    invoke-interface {v0}, LO/c;->a()V

    .line 85
    :cond_2e
    iget-object v0, p0, LO/b;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 86
    monitor-exit v3

    .line 87
    return v6

    .line 86
    :catchall_35
    move-exception v0

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_35

    throw v0
.end method

.method public i()[Lcom/google/googlenav/ai;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, LO/b;->d:[Lcom/google/googlenav/ai;

    return-object v0
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method
