.class public LaF/a;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:J

.field private b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private c:Z

.field private d:I

.field private e:LaF/b;


# direct methods
.method public constructor <init>(JLcom/google/googlenav/common/io/protocol/ProtoBuf;LaF/b;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 41
    iput-wide p1, p0, LaF/a;->a:J

    .line 42
    iput-object p3, p0, LaF/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, LaF/a;->c:Z

    .line 44
    iput-object p4, p0, LaF/a;->e:LaF/b;

    .line 45
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 49
    const/16 v0, 0x61

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x5

    .line 54
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/fp;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 55
    const/4 v1, 0x1

    iget-wide v2, p0, LaF/a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 56
    iget-object v1, p0, LaF/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 57
    const/4 v1, 0x2

    iget-object v2, p0, LaF/a;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 59
    :cond_20
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 60
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 64
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/fp;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 65
    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-nez v3, :cond_14

    .line 66
    iput-boolean v0, p0, LaF/a;->c:Z

    .line 67
    const/4 v0, -0x1

    iput v0, p0, LaF/a;->d:I

    .line 72
    :goto_13
    return v1

    .line 69
    :cond_14
    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    iput v2, p0, LaF/a;->d:I

    .line 70
    iget v2, p0, LaF/a;->d:I

    if-nez v2, :cond_1f

    move v0, v1

    :cond_1f
    iput-boolean v0, p0, LaF/a;->c:Z

    goto :goto_13
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public l_()V
    .registers 4

    .prologue
    .line 90
    iget-boolean v0, p0, LaF/a;->c:Z

    if-eqz v0, :cond_19

    .line 91
    const-string v0, "s"

    .line 96
    :goto_6
    const/16 v1, 0x55

    const-string v2, "dr"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, LaF/a;->e:LaF/b;

    if-eqz v0, :cond_18

    .line 99
    iget-object v0, p0, LaF/a;->e:LaF/b;

    iget-boolean v1, p0, LaF/a;->c:Z

    invoke-interface {v0, v1}, LaF/b;->a(Z)V

    .line 101
    :cond_18
    return-void

    .line 93
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "e"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, LaF/a;->d:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, LaF/a;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_47
    const-string v0, ""

    goto :goto_3e
.end method

.method public m_()V
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, LaF/a;->e:LaF/b;

    if-eqz v0, :cond_9

    .line 83
    iget-object v0, p0, LaF/a;->e:LaF/b;

    invoke-interface {v0}, LaF/b;->a()V

    .line 85
    :cond_9
    return-void
.end method
