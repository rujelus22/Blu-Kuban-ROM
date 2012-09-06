.class public Lcom/google/googlenav/bt;
.super Lac/a;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final c:Lcom/google/googlenav/bu;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/google/googlenav/bt;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/bt;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/googlenav/bu;)V
    .registers 3
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 40
    sget-boolean v0, Lcom/google/googlenav/bt;->a:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_f
    iput-object p1, p0, Lcom/google/googlenav/bt;->c:Lcom/google/googlenav/bu;

    .line 42
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 46
    const/16 v0, 0x3c

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 56
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/iv;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 57
    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 59
    invoke-virtual {v0, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 60
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 61
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 62
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 66
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/iv;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bt;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/googlenav/bt;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/bt;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    if-nez v0, :cond_15

    .line 75
    iget-object v0, p0, Lcom/google/googlenav/bt;->c:Lcom/google/googlenav/bu;

    iget-object v1, p0, Lcom/google/googlenav/bt;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-interface {v0, v1}, Lcom/google/googlenav/bu;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 79
    :goto_14
    return-void

    .line 77
    :cond_15
    iget-object v0, p0, Lcom/google/googlenav/bt;->c:Lcom/google/googlenav/bu;

    invoke-interface {v0}, Lcom/google/googlenav/bu;->a()V

    goto :goto_14
.end method

.method public m_()V
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/googlenav/bt;->c:Lcom/google/googlenav/bu;

    invoke-interface {v0}, Lcom/google/googlenav/bu;->a()V

    .line 89
    return-void
.end method
