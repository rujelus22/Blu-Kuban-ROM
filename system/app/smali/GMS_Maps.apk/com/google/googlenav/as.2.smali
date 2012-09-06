.class public Lcom/google/googlenav/aS;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Lat/B;

.field private final b:I

.field private final c:I

.field private final d:I

.field private volatile e:Z

.field private f:Lcom/google/googlenav/aT;

.field private g:I

.field private h:[Lcom/google/googlenav/aU;


# direct methods
.method public constructor <init>(Lat/B;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/aS;->e:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    .line 65
    iput-object p1, p0, Lcom/google/googlenav/aS;->a:Lat/B;

    .line 66
    iput v1, p0, Lcom/google/googlenav/aS;->b:I

    .line 67
    iput v1, p0, Lcom/google/googlenav/aS;->c:I

    .line 68
    iput p2, p0, Lcom/google/googlenav/aS;->d:I

    .line 69
    return-void
.end method

.method public constructor <init>(Lat/B;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/aS;->e:Z

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    .line 55
    iput-object p1, p0, Lcom/google/googlenav/aS;->a:Lat/B;

    .line 56
    iput p2, p0, Lcom/google/googlenav/aS;->b:I

    .line 57
    iput p3, p0, Lcom/google/googlenav/aS;->c:I

    .line 58
    iput p4, p0, Lcom/google/googlenav/aS;->d:I

    .line 59
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 14
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 200
    invoke-virtual {p1, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 202
    new-array v0, v3, [Lcom/google/googlenav/aU;

    iput-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    move v1, v2

    .line 203
    :goto_d
    if-ge v1, v3, :cond_42

    .line 204
    invoke-virtual {p1, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 207
    invoke-virtual {v4, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v4

    .line 208
    invoke-static {v9, v2, v0}, Lcom/google/googlenav/d;->a(IILcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v5

    .line 210
    invoke-static {v9, v10, v0}, Lcom/google/googlenav/d;->a(IILcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v6

    .line 212
    invoke-virtual {v0, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-virtual {v0, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 216
    :goto_2d
    new-instance v7, Lcom/google/googlenav/aU;

    new-array v8, v9, [Ljava/lang/String;

    aput-object v5, v8, v2

    aput-object v6, v8, v10

    invoke-direct {v7, v4, v8, v0}, Lcom/google/googlenav/aU;-><init>(I[Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 218
    iget-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    aput-object v7, v0, v1

    .line 203
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 212
    :cond_40
    const/4 v0, 0x0

    goto :goto_2d

    .line 220
    :cond_42
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 147
    const/16 v0, 0x32

    return v0
.end method

.method public a(I)Lcom/google/googlenav/aU;
    .registers 3
    .parameter

    .prologue
    .line 135
    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    array-length v0, v0

    if-lt p1, v0, :cond_9

    .line 136
    :cond_7
    const/4 v0, 0x0

    .line 138
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    aget-object v0, v0, p1

    goto :goto_8
.end method

.method public a(Lcom/google/googlenav/aT;)V
    .registers 2
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/google/googlenav/aS;->f:Lcom/google/googlenav/aT;

    .line 224
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 152
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/fk;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 155
    iget-object v1, p0, Lcom/google/googlenav/aS;->a:Lat/B;

    invoke-static {v1}, Lat/C;->d(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 158
    iget-object v1, p0, Lcom/google/googlenav/aS;->a:Lat/B;

    iget v2, p0, Lcom/google/googlenav/aS;->b:I

    iget v3, p0, Lcom/google/googlenav/aS;->c:I

    iget v4, p0, Lcom/google/googlenav/aS;->d:I

    invoke-static {v1, v2, v3, v4}, Lat/C;->a(Lat/B;III)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 160
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 162
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 165
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 166
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 170
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/fk;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 173
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/aS;->g:I

    .line 175
    iget v1, p0, Lcom/google/googlenav/aS;->g:I

    packed-switch v1, :pswitch_data_1a

    .line 186
    :goto_12
    iput-boolean v2, p0, Lcom/google/googlenav/aS;->e:Z

    .line 187
    return v2

    .line 177
    :pswitch_15
    invoke-direct {p0, v0}, Lcom/google/googlenav/aS;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_12

    .line 175
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method public i()I
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/googlenav/aS;->h:[Lcom/google/googlenav/aU;

    array-length v0, v0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public l_()V
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/googlenav/aS;->f:Lcom/google/googlenav/aT;

    if-eqz v0, :cond_9

    .line 195
    iget-object v0, p0, Lcom/google/googlenav/aS;->f:Lcom/google/googlenav/aT;

    invoke-interface {v0, p0}, Lcom/google/googlenav/aT;->a(Lcom/google/googlenav/aS;)V

    .line 197
    :cond_9
    return-void
.end method
