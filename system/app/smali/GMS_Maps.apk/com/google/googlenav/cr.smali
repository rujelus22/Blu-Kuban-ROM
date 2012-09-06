.class public Lcom/google/googlenav/cr;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/google/googlenav/cs;

.field private d:Z

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJJLcom/google/googlenav/cs;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/googlenav/cr;->a:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/google/googlenav/cr;->b:I

    .line 69
    iput-wide p3, p0, Lcom/google/googlenav/cr;->e:J

    .line 70
    iput-wide p5, p0, Lcom/google/googlenav/cr;->f:J

    .line 71
    iput-object p7, p0, Lcom/google/googlenav/cr;->c:Lcom/google/googlenav/cs;

    .line 72
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 76
    const/16 v0, 0x5c

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 10
    .parameter

    .prologue
    const-wide/high16 v6, -0x8000

    const/4 v5, 0x1

    .line 97
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/hV;->k:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 100
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbq/a;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 103
    iget-object v2, p0, Lcom/google/googlenav/cr;->a:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 106
    const/4 v2, 0x2

    iget v3, p0, Lcom/google/googlenav/cr;->b:I

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 109
    iget-wide v2, p0, Lcom/google/googlenav/cr;->e:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_28

    .line 110
    const/4 v2, 0x4

    iget-wide v3, p0, Lcom/google/googlenav/cr;->e:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 114
    :cond_28
    iget-wide v2, p0, Lcom/google/googlenav/cr;->f:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_34

    .line 115
    const/4 v2, 0x5

    iget-wide v3, p0, Lcom/google/googlenav/cr;->f:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 119
    :cond_34
    invoke-virtual {v0, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 122
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 123
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 127
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/hV;->l:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_e
    iput-boolean v0, p0, Lcom/google/googlenav/cr;->d:Z

    .line 134
    iget-boolean v0, p0, Lcom/google/googlenav/cr;->d:Z

    if-nez v0, :cond_14

    .line 143
    :cond_14
    return v1

    .line 131
    :cond_15
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/googlenav/cr;->c:Lcom/google/googlenav/cs;

    if-eqz v0, :cond_b

    .line 149
    iget-object v0, p0, Lcom/google/googlenav/cr;->c:Lcom/google/googlenav/cs;

    iget-boolean v1, p0, Lcom/google/googlenav/cr;->d:Z

    invoke-interface {v0, v1}, Lcom/google/googlenav/cs;->a(Z)V

    .line 151
    :cond_b
    return-void
.end method
