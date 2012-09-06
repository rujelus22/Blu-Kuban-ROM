.class public Lcom/google/googlenav/aP;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/aR;

.field private final b:Lcom/google/googlenav/aQ;

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private final g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/aQ;ILjava/lang/String;I[B)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/aP;->f:Z

    .line 48
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/fg;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/google/googlenav/aP;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 65
    iput-object p1, p0, Lcom/google/googlenav/aP;->b:Lcom/google/googlenav/aQ;

    .line 66
    iput p4, p0, Lcom/google/googlenav/aP;->c:I

    .line 67
    iput-object p3, p0, Lcom/google/googlenav/aP;->d:Ljava/lang/String;

    .line 69
    const/16 v0, 0x23

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 70
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    .line 71
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlenav/aP;->e:Ljava/lang/String;

    .line 72
    const/4 v1, 0x0

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 77
    :cond_2b
    iget-object v0, p0, Lcom/google/googlenav/aP;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/googlenav/aR;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 54
    const/4 v2, 0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/aP;-><init>(Lcom/google/googlenav/aQ;ILjava/lang/String;I[B)V

    .line 55
    iput-object p2, p0, Lcom/google/googlenav/aP;->a:Lcom/google/googlenav/aR;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/google/googlenav/aR;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p3}, Lcom/google/googlenav/aP;-><init>(Ljava/lang/String;Lcom/google/googlenav/aR;)V

    .line 60
    iput-boolean p2, p0, Lcom/google/googlenav/aP;->f:Z

    .line 61
    return-void
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/imageservice/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/googlenav/common/util/c;->a([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?fmt=JPEG&maxW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 88
    const/16 v0, 0x27

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/googlenav/aP;->g:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v0

    .line 94
    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 95
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 96
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 15
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 115
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/fg;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v11

    .line 120
    invoke-virtual {p0}, Lcom/google/googlenav/aP;->A_()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 145
    :cond_e
    return v9

    .line 125
    :cond_f
    invoke-virtual {v11, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v12

    move v1, v10

    .line 127
    :goto_14
    if-ge v1, v12, :cond_e

    .line 128
    invoke-virtual {v11, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 129
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 130
    const/4 v0, 0x6

    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v4

    .line 131
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    const/16 v5, 0xc8

    if-eq v0, v5, :cond_53

    move v5, v9

    .line 136
    :goto_2e
    if-nez v1, :cond_3e

    iget-object v0, p0, Lcom/google/googlenav/aP;->a:Lcom/google/googlenav/aR;

    if-eqz v0, :cond_3e

    .line 137
    iget-object v6, p0, Lcom/google/googlenav/aP;->a:Lcom/google/googlenav/aR;

    iget-object v7, p0, Lcom/google/googlenav/aP;->d:Ljava/lang/String;

    if-eqz v5, :cond_55

    const/4 v0, 0x0

    :goto_3b
    invoke-interface {v6, v7, v0}, Lcom/google/googlenav/aR;->a(Ljava/lang/String;[B)V

    .line 140
    :cond_3e
    iget-object v0, p0, Lcom/google/googlenav/aP;->b:Lcom/google/googlenav/aQ;

    if-eqz v0, :cond_50

    .line 141
    iget-object v0, p0, Lcom/google/googlenav/aP;->b:Lcom/google/googlenav/aQ;

    iget v6, p0, Lcom/google/googlenav/aP;->c:I

    iget-object v7, p0, Lcom/google/googlenav/aP;->e:Ljava/lang/String;

    const/4 v8, 0x7

    invoke-virtual {v2, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/google/googlenav/aQ;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;[BZILjava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_53
    move v5, v10

    .line 131
    goto :goto_2e

    :cond_55
    move-object v0, v4

    .line 137
    goto :goto_3b
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/google/googlenav/aP;->f:Z

    return v0
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public k_()Z
    .registers 2

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method
