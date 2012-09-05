.class Lcom/samsung/map/MapApplicationParameter;
.super Ljava/lang/Object;
.source "BluetoothMapObexServerSession.java"


# instance fields
.field private data:[B

.field i:I

.field parameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([B)V
    .registers 3
    .parameter "data"

    .prologue
    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/samsung/map/MapApplicationParameter;->data:[B

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/map/MapApplicationParameter;->parameters:Ljava/util/HashMap;

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    .line 128
    invoke-virtual {p0}, Lcom/samsung/map/MapApplicationParameter;->Parse()V

    .line 129
    return-void
.end method

.method private getByte()I
    .registers 4

    .prologue
    .line 152
    iget-object v1, p0, Lcom/samsung/map/MapApplicationParameter;->data:[B

    iget v2, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 153
    .local v0, b:I
    iget v1, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    .line 154
    return v0
.end method

.method private getDouble()I
    .registers 8

    .prologue
    .line 166
    iget-object v5, p0, Lcom/samsung/map/MapApplicationParameter;->data:[B

    iget v6, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    aget-byte v5, v5, v6

    and-int/lit16 v0, v5, 0xff

    .line 167
    .local v0, hhigh:I
    iget-object v5, p0, Lcom/samsung/map/MapApplicationParameter;->data:[B

    iget v6, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v1, v5, 0xff

    .line 168
    .local v1, hlow:I
    iget-object v5, p0, Lcom/samsung/map/MapApplicationParameter;->data:[B

    iget v6, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    and-int/lit16 v2, v5, 0xff

    .line 169
    .local v2, lhigh:I
    iget-object v5, p0, Lcom/samsung/map/MapApplicationParameter;->data:[B

    iget v6, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    add-int/lit8 v6, v6, 0x3

    aget-byte v5, v5, v6

    and-int/lit16 v3, v5, 0xff

    .line 170
    .local v3, llow:I
    shl-int/lit8 v5, v0, 0x18

    shl-int/lit8 v6, v1, 0x10

    add-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x8

    add-int/2addr v5, v6

    add-int v4, v5, v3

    .line 171
    .local v4, w:I
    iget v5, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    add-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    .line 172
    return v4
.end method

.method private getString(I)Ljava/lang/String;
    .registers 5
    .parameter "length"

    .prologue
    .line 176
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/map/MapApplicationParameter;->data:[B

    iget v2, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([BII)V

    .line 177
    .local v0, ret:Ljava/lang/String;
    iget v1, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    .line 178
    return-object v0
.end method

.method private getWord()I
    .registers 6

    .prologue
    .line 158
    iget-object v3, p0, Lcom/samsung/map/MapApplicationParameter;->data:[B

    iget v4, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    aget-byte v3, v3, v4

    and-int/lit16 v0, v3, 0xff

    .line 159
    .local v0, high:I
    iget-object v3, p0, Lcom/samsung/map/MapApplicationParameter;->data:[B

    iget v4, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v1, v3, 0xff

    .line 160
    .local v1, low:I
    iget v3, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    .line 161
    mul-int/lit16 v3, v0, 0x100

    add-int v2, v3, v1

    .line 162
    .local v2, w:I
    return v2
.end method


# virtual methods
.method Parse()V
    .registers 6

    .prologue
    .line 182
    :goto_0
    iget v3, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    iget-object v4, p0, Lcom/samsung/map/MapApplicationParameter;->data:[B

    array-length v4, v4

    if-ge v3, v4, :cond_f3

    .line 183
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getByte()I

    move-result v1

    .line 184
    .local v1, tag:I
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getByte()I

    move-result v0

    .line 185
    .local v0, length:I
    const/4 v2, 0x0

    .line 186
    .local v2, x:Ljava/lang/Object;
    packed-switch v1, :pswitch_data_f4

    .line 277
    :pswitch_13
    iget v3, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/samsung/map/MapApplicationParameter;->i:I

    .line 280
    .end local v2           #x:Ljava/lang/Object;
    :goto_18
    iget-object v3, p0, Lcom/samsung/map/MapApplicationParameter;->parameters:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    .restart local v2       #x:Ljava/lang/Object;
    :pswitch_22
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getWord()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 190
    .local v2, x:Ljava/lang/Integer;
    goto :goto_18

    .line 192
    .local v2, x:Ljava/lang/Object;
    :pswitch_2c
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getWord()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 194
    .local v2, x:Ljava/lang/Integer;
    goto :goto_18

    .line 196
    .local v2, x:Ljava/lang/Object;
    :pswitch_36
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getWord()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 198
    .local v2, x:Ljava/lang/Integer;
    goto :goto_18

    .line 200
    .local v2, x:Ljava/lang/Object;
    :pswitch_40
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getByte()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 202
    .local v2, x:Ljava/lang/Integer;
    goto :goto_18

    .line 204
    .local v2, x:Ljava/lang/Object;
    :pswitch_4a
    invoke-direct {p0, v0}, Lcom/samsung/map/MapApplicationParameter;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, x:Ljava/lang/String;
    goto :goto_18

    .line 208
    .local v2, x:Ljava/lang/Object;
    :pswitch_4f
    invoke-direct {p0, v0}, Lcom/samsung/map/MapApplicationParameter;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, x:Ljava/lang/String;
    goto :goto_18

    .line 212
    .local v2, x:Ljava/lang/Object;
    :pswitch_54
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getDouble()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 214
    .local v2, x:Ljava/lang/Integer;
    goto :goto_18

    .line 216
    .local v2, x:Ljava/lang/Object;
    :pswitch_5e
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getByte()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 218
    .local v2, x:Ljava/lang/Integer;
    goto :goto_18

    .line 220
    .local v2, x:Ljava/lang/Object;
    :pswitch_68
    invoke-direct {p0, v0}, Lcom/samsung/map/MapApplicationParameter;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, x:Ljava/lang/String;
    goto :goto_18

    .line 224
    .local v2, x:Ljava/lang/Object;
    :pswitch_6d
    invoke-direct {p0, v0}, Lcom/samsung/map/MapApplicationParameter;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, x:Ljava/lang/String;
    goto :goto_18

    .line 228
    .local v2, x:Ljava/lang/Object;
    :pswitch_72
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getByte()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 230
    .local v2, x:Ljava/lang/Integer;
    goto :goto_18

    .line 232
    .local v2, x:Ljava/lang/Object;
    :pswitch_7c
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getByte()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 234
    .local v2, x:Ljava/lang/Integer;
    goto :goto_18

    .line 236
    .local v2, x:Ljava/lang/Object;
    :pswitch_86
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getByte()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 238
    .local v2, x:Ljava/lang/Integer;
    goto :goto_18

    .line 240
    .local v2, x:Ljava/lang/Object;
    :pswitch_90
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getByte()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 242
    .local v2, x:Ljava/lang/Integer;
    goto/16 :goto_18

    .line 244
    .local v2, x:Ljava/lang/Object;
    :pswitch_9b
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getByte()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 246
    .local v2, x:Ljava/lang/Integer;
    goto/16 :goto_18

    .line 248
    .local v2, x:Ljava/lang/Object;
    :pswitch_a6
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getByte()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 250
    .local v2, x:Ljava/lang/Integer;
    goto/16 :goto_18

    .line 252
    .local v2, x:Ljava/lang/Object;
    :pswitch_b1
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getByte()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 254
    .local v2, x:Ljava/lang/Integer;
    goto/16 :goto_18

    .line 256
    .local v2, x:Ljava/lang/Object;
    :pswitch_bc
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getByte()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 258
    .local v2, x:Ljava/lang/Integer;
    goto/16 :goto_18

    .line 260
    .local v2, x:Ljava/lang/Object;
    :pswitch_c7
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getWord()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 262
    .local v2, x:Ljava/lang/Integer;
    goto/16 :goto_18

    .line 264
    .local v2, x:Ljava/lang/Object;
    :pswitch_d2
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getByte()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 266
    .local v2, x:Ljava/lang/Integer;
    goto/16 :goto_18

    .line 268
    .local v2, x:Ljava/lang/Object;
    :pswitch_dd
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getByte()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 270
    .local v2, x:Ljava/lang/Integer;
    goto/16 :goto_18

    .line 272
    .local v2, x:Ljava/lang/Object;
    :pswitch_e8
    new-instance v2, Ljava/lang/Integer;

    .end local v2           #x:Ljava/lang/Object;
    invoke-direct {p0}, Lcom/samsung/map/MapApplicationParameter;->getByte()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 274
    .local v2, x:Ljava/lang/Integer;
    goto/16 :goto_18

    .line 282
    .end local v0           #length:I
    .end local v1           #tag:I
    .end local v2           #x:Ljava/lang/Integer;
    :cond_f3
    return-void

    .line 186
    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_36
        :pswitch_40
        :pswitch_4a
        :pswitch_4f
        :pswitch_5e
        :pswitch_68
        :pswitch_6d
        :pswitch_72
        :pswitch_7c
        :pswitch_a6
        :pswitch_b1
        :pswitch_13
        :pswitch_9b
        :pswitch_bc
        :pswitch_54
        :pswitch_22
        :pswitch_c7
        :pswitch_e8
        :pswitch_86
        :pswitch_90
        :pswitch_13
        :pswitch_d2
        :pswitch_dd
    .end packed-switch
.end method

.method public getInt(II)I
    .registers 6
    .parameter "id"
    .parameter "def"

    .prologue
    .line 136
    iget-object v1, p0, Lcom/samsung/map/MapApplicationParameter;->parameters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_d

    .line 140
    .end local v0           #o:Ljava/lang/Object;
    .end local p2
    :goto_c
    return p2

    .restart local v0       #o:Ljava/lang/Object;
    .restart local p2
    :cond_d
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_c
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "id"
    .parameter "def"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/samsung/map/MapApplicationParameter;->parameters:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 145
    .local v0, o:Ljava/lang/Object;
    if-nez v0, :cond_d

    .line 148
    .end local v0           #o:Ljava/lang/Object;
    .end local p2
    :goto_c
    return-object p2

    .restart local v0       #o:Ljava/lang/Object;
    .restart local p2
    :cond_d
    check-cast v0, Ljava/lang/String;

    .end local v0           #o:Ljava/lang/Object;
    move-object p2, v0

    goto :goto_c
.end method
