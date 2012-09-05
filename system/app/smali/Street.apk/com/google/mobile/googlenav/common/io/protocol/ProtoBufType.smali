.class public Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;
    }
.end annotation


# static fields
.field private static final NULL_DATA_TYPEINFOS:[Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;


# instance fields
.field private final typeName:Ljava/lang/String;

.field private final types:Lcom/google/mobile/googlenav/common/util/IntMap;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const/4 v1, 0x0

    const/16 v0, 0xa8

    new-array v0, v0, [Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;

    sput-object v0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->NULL_DATA_TYPEINFOS:[Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;

    move v0, v1

    :goto_8
    const/4 v2, 0x7

    if-gt v0, v2, :cond_2b

    const/16 v2, 0x10

    move v8, v2

    move v2, v1

    move v1, v8

    :goto_10
    const/16 v3, 0x25

    if-ge v1, v3, :cond_27

    sget-object v3, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->NULL_DATA_TYPEINFOS:[Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;

    add-int/lit8 v4, v2, 0x1

    new-instance v5, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;

    shl-int/lit8 v6, v0, 0x8

    add-int/2addr v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;-><init>(ILjava/lang/Object;)V

    aput-object v5, v3, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_10

    :cond_27
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_8

    :cond_2b
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-direct {v0}, Lcom/google/mobile/googlenav/common/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/mobile/googlenav/common/util/IntMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    return-void
.end method

.method private static getCacheTypeInfoForNullData(I)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;
    .registers 4

    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x15

    and-int/lit16 v1, p0, 0xff

    const/16 v2, 0x10

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->NULL_DATA_TYPEINFOS:[Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;

    aget-object v0, v1, v0

    return-object v0
.end method


# virtual methods
.method public addElement(IILjava/lang/Object;)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;
    .registers 6

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/mobile/googlenav/common/util/IntMap;

    if-nez p3, :cond_c

    invoke-static {p1}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->getCacheTypeInfoForNullData(I)Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;

    move-result-object v1

    :goto_8
    invoke-virtual {v0, p2, v1}, Lcom/google/mobile/googlenav/common/util/IntMap;->put(ILjava/lang/Object;)V

    return-object p0

    :cond_c
    new-instance v1, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;

    invoke-direct {v1, p1, p3}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;-><init>(ILjava/lang/Object;)V

    goto :goto_8
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_5

    move v0, v2

    :goto_4
    return v0

    :cond_5
    if-ne p0, p1, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_15

    move v0, v2

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/mobile/googlenav/common/util/IntMap;

    iget-object v1, p1, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-virtual {v0, v1}, Lcom/google/mobile/googlenav/common/util/IntMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public getData(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/mobile/googlenav/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;

    if-nez p0, :cond_c

    move-object v0, p0

    :goto_b
    return-object v0

    :cond_c
    #getter for: Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;->data:Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;->access$100(Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public getType(I)I
    .registers 3

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-virtual {v0, p1}, Lcom/google/mobile/googlenav/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;

    if-nez p0, :cond_d

    const/16 v0, 0x10

    :goto_c
    return v0

    :cond_d
    #getter for: Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;->type:I
    invoke-static {p0}, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;->access$000(Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType$TypeInfo;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_c
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/mobile/googlenav/common/util/IntMap;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->types:Lcom/google/mobile/googlenav/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/mobile/googlenav/common/util/IntMap;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtoBufType Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/mobile/googlenav/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
