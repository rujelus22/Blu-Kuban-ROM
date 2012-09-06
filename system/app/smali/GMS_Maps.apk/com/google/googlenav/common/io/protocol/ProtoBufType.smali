.class public Lcom/google/googlenav/common/io/protocol/ProtoBufType;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MASK_MODIFIER:I = 0xff00

.field public static final MASK_TYPE:I = 0xff

.field public static final NEXT_TYPE_VALUE:I = 0x25

.field private static final NULL_DATA_TYPEINFOS:[Lcom/google/googlenav/common/io/protocol/a; = null

.field public static final OPTIONAL:I = 0x200

.field public static final REPEATED:I = 0x400

.field public static final REQUIRED:I = 0x100

.field public static final START_TYPE_VALUE:I = 0x10

.field public static final TYPES_BIT_RANGE:I = 0x8

.field public static final TYPES_VALUE_RANGE:I = 0x15

.field public static final TYPE_BOOL:I = 0x18

.field public static final TYPE_BYTES:I = 0x23

.field public static final TYPE_DATA:I = 0x19

.field public static final TYPE_DOUBLE:I = 0x11

.field public static final TYPE_ENUM:I = 0x1e

.field public static final TYPE_FIXED32:I = 0x17

.field public static final TYPE_FIXED64:I = 0x16

.field public static final TYPE_FLOAT:I = 0x12

.field public static final TYPE_GROUP:I = 0x1a

.field public static final TYPE_INT32:I = 0x15

.field public static final TYPE_INT64:I = 0x13

.field public static final TYPE_MESSAGE:I = 0x1b

.field public static final TYPE_SFIXED32:I = 0x1f

.field public static final TYPE_SFIXED64:I = 0x20

.field public static final TYPE_SINT32:I = 0x21

.field public static final TYPE_SINT64:I = 0x22

.field public static final TYPE_STRING:I = 0x24

.field public static final TYPE_TEXT:I = 0x1c

.field public static final TYPE_UINT32:I = 0x1d

.field public static final TYPE_UINT64:I = 0x14

.field public static final TYPE_UNDEFINED:I = 0x10


# instance fields
.field private final typeName:Ljava/lang/String;

.field private final types:Lcom/google/googlenav/common/util/h;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 61
    const/16 v1, 0xa8

    new-array v1, v1, [Lcom/google/googlenav/common/io/protocol/a;

    sput-object v1, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->NULL_DATA_TYPEINFOS:[Lcom/google/googlenav/common/io/protocol/a;

    move v3, v0

    move v1, v0

    .line 66
    :goto_9
    const/4 v0, 0x7

    if-gt v3, v0, :cond_29

    .line 67
    const/16 v0, 0x10

    :goto_e
    const/16 v2, 0x25

    if-ge v0, v2, :cond_25

    .line 68
    sget-object v4, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->NULL_DATA_TYPEINFOS:[Lcom/google/googlenav/common/io/protocol/a;

    add-int/lit8 v2, v1, 0x1

    new-instance v5, Lcom/google/googlenav/common/io/protocol/a;

    shl-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/googlenav/common/io/protocol/a;-><init>(ILjava/lang/Object;)V

    aput-object v5, v4, v1

    .line 67
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_e

    .line 66
    :cond_25
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_9

    .line 71
    :cond_29
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/google/googlenav/common/util/h;

    invoke-direct {v0}, Lcom/google/googlenav/common/util/h;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/googlenav/common/util/h;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lcom/google/googlenav/common/util/h;

    invoke-direct {v0}, Lcom/google/googlenav/common/util/h;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/googlenav/common/util/h;

    .line 124
    iput-object p1, p0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    .line 125
    return-void
.end method

.method private static getCacheTypeInfoForNullData(I)Lcom/google/googlenav/common/io/protocol/a;
    .registers 3
    .parameter

    .prologue
    .line 134
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x15

    .line 137
    and-int/lit16 v1, p0, 0xff

    add-int/lit8 v1, v1, -0x10

    .line 140
    add-int/2addr v0, v1

    .line 141
    sget-object v1, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->NULL_DATA_TYPEINFOS:[Lcom/google/googlenav/common/io/protocol/a;

    aget-object v0, v1, v0

    return-object v0
.end method


# virtual methods
.method public addElement(IILjava/lang/Object;)Lcom/google/googlenav/common/io/protocol/ProtoBufType;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    iget-object v1, p0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/googlenav/common/util/h;

    if-nez p3, :cond_c

    invoke-static {p1}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->getCacheTypeInfoForNullData(I)Lcom/google/googlenav/common/io/protocol/a;

    move-result-object v0

    :goto_8
    invoke-virtual {v1, p2, v0}, Lcom/google/googlenav/common/util/h;->a(ILjava/lang/Object;)V

    .line 160
    return-object p0

    .line 157
    :cond_c
    new-instance v0, Lcom/google/googlenav/common/io/protocol/a;

    invoke-direct {v0, p1, p3}, Lcom/google/googlenav/common/io/protocol/a;-><init>(ILjava/lang/Object;)V

    goto :goto_8
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 245
    if-nez p1, :cond_4

    .line 257
    :cond_3
    :goto_3
    return v0

    .line 248
    :cond_4
    if-ne p0, p1, :cond_8

    .line 250
    const/4 v0, 0x1

    goto :goto_3

    .line 251
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 255
    check-cast p1, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    .line 257
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/googlenav/common/util/h;

    iget-object v1, p1, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/util/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public getData(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/util/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/a;

    .line 198
    if-nez v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    invoke-static {v0}, Lcom/google/googlenav/common/io/protocol/a;->b(Lcom/google/googlenav/common/io/protocol/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public getModifiers(I)I
    .registers 4
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/util/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/a;

    .line 188
    if-nez v0, :cond_d

    const/16 v0, 0x600

    :goto_c
    return v0

    :cond_d
    invoke-static {v0}, Lcom/google/googlenav/common/io/protocol/a;->a(Lcom/google/googlenav/common/io/protocol/a;)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    goto :goto_c
.end method

.method public getType(I)I
    .registers 3
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/util/h;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/a;

    .line 178
    if-nez v0, :cond_d

    const/16 v0, 0x10

    :goto_c
    return v0

    :cond_d
    invoke-static {v0}, Lcom/google/googlenav/common/io/protocol/a;->a(Lcom/google/googlenav/common/io/protocol/a;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_c
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/googlenav/common/util/h;

    if-eqz v0, :cond_b

    .line 266
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0}, Lcom/google/googlenav/common/util/h;->hashCode()I

    move-result v0

    .line 268
    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a
.end method

.method public isValidProto(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0}, Lcom/google/googlenav/common/util/h;->b()Lcom/google/googlenav/common/util/i;

    move-result-object v4

    .line 216
    :cond_8
    invoke-virtual {v4}, Lcom/google/googlenav/common/util/i;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 217
    invoke-virtual {v4}, Lcom/google/googlenav/common/util/i;->b()I

    move-result v5

    .line 218
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->getModifiers(I)I

    move-result v0

    .line 219
    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_22

    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-nez v3, :cond_22

    move v0, v1

    .line 236
    :goto_21
    return v0

    .line 222
    :cond_22
    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    .line 223
    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2e

    if-le v6, v2, :cond_2e

    move v0, v1

    .line 224
    goto :goto_21

    .line 226
    :cond_2e
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v0

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_8

    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    if-eqz v0, :cond_8

    .line 228
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    move v3, v1

    .line 229
    :goto_45
    if-ge v3, v6, :cond_8

    .line 230
    invoke-virtual {p1, v5, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->isValidProto(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v7

    if-nez v7, :cond_53

    move v0, v1

    .line 231
    goto :goto_21

    .line 229
    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    :cond_56
    move v0, v2

    .line 236
    goto :goto_21
.end method

.method newIntMapForProtoBuf()Lcom/google/googlenav/common/util/h;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/googlenav/common/util/h;

    invoke-virtual {v0}, Lcom/google/googlenav/common/util/h;->a()Lcom/google/googlenav/common/util/h;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtoBufType Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
