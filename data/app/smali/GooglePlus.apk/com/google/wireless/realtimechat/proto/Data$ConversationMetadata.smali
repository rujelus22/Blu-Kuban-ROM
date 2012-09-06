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
    .line 1544
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    .line 1545
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->initFields()V

    .line 1546
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 957
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1084
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedIsInitialized:B

    .line 1110
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedSerializedSize:I

    .line 958
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 952
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;-><init>(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 959
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1084
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedIsInitialized:B

    .line 1110
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedSerializedSize:I

    .line 959
    return-void
.end method

.method static synthetic access$1302(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 952
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 952
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 952
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$1602(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 952
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->joinCode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 952
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    .registers 1

    .prologue
    .line 963
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    return-object v0
.end method

.method private getJoinCodeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 1067
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->joinCode_:Ljava/lang/Object;

    .line 1068
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 1069
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1071
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->joinCode_:Ljava/lang/Object;

    .line 1074
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
    .line 1079
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->PUBLIC:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    .line 1080
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 1081
    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    .line 1082
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->joinCode_:Ljava/lang/Object;

    .line 1083
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 1

    .prologue
    .line 1215
    #calls: Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;->access$1100()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 1218
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
    .line 952
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
    .registers 2

    .prologue
    .line 967
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;

    return-object v0
.end method

.method public getJoinCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1053
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->joinCode_:Ljava/lang/Object;

    .line 1054
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1055
    check-cast v1, Ljava/lang/String;

    .line 1063
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 1057
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1059
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1060
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1061
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->joinCode_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 1063
    goto :goto_8
.end method

.method public getLocation()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 1112
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedSerializedSize:I

    .line 1113
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_a

    move v3, v2

    .line 1138
    .end local v2           #size:I
    .local v3, size:I
    :goto_9
    return v3

    .line 1115
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_a
    const/4 v2, 0x0

    .line 1116
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1c

    .line 1117
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->getNumber()I

    move-result v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 1120
    :cond_1c
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v4, v6, :cond_29

    .line 1121
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {v6, v4}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1125
    :cond_29
    const/4 v0, 0x0

    .line 1126
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2b
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v1, v4, :cond_41

    .line 1127
    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v0, v4

    .line 1126
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 1130
    :cond_41
    add-int/2addr v2, v0

    .line 1131
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getTagList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 1133
    iget v4, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v4, v7, :cond_5c

    .line 1134
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getJoinCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1137
    :cond_5c
    iput v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedSerializedSize:I

    move v3, v2

    .line 1138
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_9
.end method

.method public getTag(I)Ljava/lang/String;
    .registers 3
    .parameter "index"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTagCount()I
    .registers 2

    .prologue
    .line 1040
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
    .line 1037
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public getVisibility()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;
    .registers 2

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    return-object v0
.end method

.method public hasJoinCode()Z
    .registers 3

    .prologue
    .line 1050
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
    .line 1026
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

    .line 1016
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

    .line 1086
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedIsInitialized:B

    .line 1087
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 1090
    :goto_8
    return v1

    .line 1087
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 1089
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 2

    .prologue
    .line 1216
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->toBuilder()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;
    .registers 2

    .prologue
    .line 1220
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;)Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1145
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

    .line 1095
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getSerializedSize()I

    .line 1096
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    .line 1097
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->visibility_:Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata$ConversationVisibility;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1099
    :cond_15
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_20

    .line 1100
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1102
    :cond_20
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_36

    .line 1103
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->tag_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1102
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1105
    :cond_36
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_43

    .line 1106
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;->getJoinCodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1108
    :cond_43
    return-void
.end method
