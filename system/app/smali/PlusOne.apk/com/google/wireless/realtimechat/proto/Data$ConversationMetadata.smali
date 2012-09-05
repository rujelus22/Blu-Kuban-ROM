.class public final Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;,
        Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private joinCode_:Ljava/lang/Object;

.field private location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private tag_:Lcom/google/protobuf/LazyStringList;

.field private visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1538
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 1539
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->initFields()V

    .line 1540
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 951
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1078
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedIsInitialized:B

    .line 1104
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedSerializedSize:I

    .line 952
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 946
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;-><init>(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 953
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1078
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedIsInitialized:B

    .line 1104
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedSerializedSize:I

    .line 953
    return-void
.end method

.method static synthetic access$1302(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 946
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 946
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 946
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 946
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 946
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->joinCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 946
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    .registers 1

    .prologue
    .line 957
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    return-object v0
.end method

.method private getJoinCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1061
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->joinCode_:Ljava/lang/Object;

    .line 1062
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1063
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1065
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->joinCode_:Ljava/lang/Object;

    .line 1068
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 1073
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->PUBLIC:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 1074
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 1075
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    .line 1076
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->joinCode_:Ljava/lang/Object;

    .line 1077
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 1

    .prologue
    .line 1209
    #calls: Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->access$1100()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1212
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 946
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    .registers 2

    .prologue
    .line 961
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    return-object v0
.end method

.method public getJoinCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1047
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->joinCode_:Ljava/lang/Object;

    .line 1048
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1049
    check-cast v1, Ljava/lang/String;

    .line 1057
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1051
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1053
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1054
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1055
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->joinCode_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1057
    goto :goto_8
.end method

.method public getLocation()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1106
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedSerializedSize:I

    .line 1107
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 1132
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 1109
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 1110
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1c

    .line 1111
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->getNumber()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1114
    :cond_1c
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_29

    .line 1115
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1119
    :cond_29
    const/4 v0, 0x0

    .line 1120
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2b
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_41

    .line 1121
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1120
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 1124
    :cond_41
    add-int/2addr v2, v0

    .line 1125
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getTagList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 1127
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_5c

    .line 1128
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getJoinCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1131
    :cond_5c
    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedSerializedSize:I

    move v3, v2

    .line 1132
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_9
.end method

.method public getTag(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTagCount()I
    .registers 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getTagList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getVisibility()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    .registers 2

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    return-object v0
.end method

.method public hasJoinCode()Z
    .registers 3

    .prologue
    .line 1044
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasLocation()Z
    .registers 3

    .prologue
    .line 1020
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasVisibility()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1010
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1080
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedIsInitialized:B

    .line 1081
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1084
    :goto_8
    return v1

    .line 1081
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1083
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1139
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1089
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getSerializedSize()I

    .line 1090
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 1091
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1093
    :cond_15
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 1094
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1096
    :cond_20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 1097
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1096
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1099
    :cond_36
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_43

    .line 1100
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getJoinCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1102
    :cond_43
    return-void
.end method
