.class public final Lcom/google/wireless/realtimechat/proto/Data$Content;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Data.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Data$ContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Content"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Content;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private linkUrl_:Ljava/lang/Object;

.field private location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

.field private photoUrl_:Ljava/lang/Object;

.field private text_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 2703
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$Content;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Content;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$Content;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Content;

    .line 2704
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Content;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Content;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->initFields()V

    .line 2705
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2064
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2201
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedIsInitialized:B

    .line 2230
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedSerializedSize:I

    .line 2065
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2059
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$Content;-><init>(Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2066
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2201
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedIsInitialized:B

    .line 2230
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedSerializedSize:I

    .line 2066
    return-void
.end method

.method static synthetic access$2902(Lcom/google/wireless/realtimechat/proto/Data$Content;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2059
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/wireless/realtimechat/proto/Data$Content;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2059
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/wireless/realtimechat/proto/Data$Content;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2059
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->linkUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/wireless/realtimechat/proto/Data$Content;Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2059
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/wireless/realtimechat/proto/Data$Content;Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2059
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/google/wireless/realtimechat/proto/Data$Content;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2059
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Content;
    .registers 1

    .prologue
    .line 2070
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Content;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Content;

    return-object v0
.end method

.method private getLinkUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2163
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->linkUrl_:Ljava/lang/Object;

    .line 2164
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2165
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2167
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->linkUrl_:Ljava/lang/Object;

    .line 2170
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

.method private getPhotoUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2131
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoUrl_:Ljava/lang/Object;

    .line 2132
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2133
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2135
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoUrl_:Ljava/lang/Object;

    .line 2138
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

.method private getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2099
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->text_:Ljava/lang/Object;

    .line 2100
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2101
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2103
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->text_:Ljava/lang/Object;

    .line 2106
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
    .line 2195
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->text_:Ljava/lang/Object;

    .line 2196
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoUrl_:Ljava/lang/Object;

    .line 2197
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->linkUrl_:Ljava/lang/Object;

    .line 2198
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 2199
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    .line 2200
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 1

    .prologue
    .line 2334
    #calls: Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->access$2700()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2059
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Content;
    .registers 2

    .prologue
    .line 2074
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Content;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Content;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2149
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->linkUrl_:Ljava/lang/Object;

    .line 2150
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2151
    check-cast v1, Ljava/lang/String;

    .line 2159
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2153
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2155
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2156
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2157
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->linkUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2159
    goto :goto_8
.end method

.method public getLocation()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object v0
.end method

.method public getPhotoMetadata()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;
    .registers 2

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2117
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoUrl_:Ljava/lang/Object;

    .line 2118
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2119
    check-cast v1, Ljava/lang/String;

    .line 2127
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2121
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2123
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2124
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2125
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2127
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2232
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedSerializedSize:I

    .line 2233
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 2257
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 2235
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 2236
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 2237
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2240
    :cond_1a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 2241
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getPhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2244
    :cond_29
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 2245
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getLinkUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2248
    :cond_39
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 2249
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2252
    :cond_48
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_58

    .line 2253
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2256
    :cond_58
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedSerializedSize:I

    move v1, v0

    .line 2257
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2085
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->text_:Ljava/lang/Object;

    .line 2086
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2087
    check-cast v1, Ljava/lang/String;

    .line 2095
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2089
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2091
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2092
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2093
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->text_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2095
    goto :goto_8
.end method

.method public hasLinkUrl()Z
    .registers 3

    .prologue
    .line 2146
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

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
    .line 2178
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPhotoMetadata()Z
    .registers 3

    .prologue
    .line 2188
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasPhotoUrl()Z
    .registers 3

    .prologue
    .line 2114
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

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

.method public hasText()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2082
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

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

    .line 2203
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedIsInitialized:B

    .line 2204
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2207
    :goto_8
    return v1

    .line 2204
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2206
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedIsInitialized:B

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
    .line 2264
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2212
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getSerializedSize()I

    .line 2213
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 2214
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2216
    :cond_13
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 2217
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getPhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2219
    :cond_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 2220
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getLinkUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2222
    :cond_2e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 2223
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2225
    :cond_3b
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 2226
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2228
    :cond_49
    return-void
.end method
