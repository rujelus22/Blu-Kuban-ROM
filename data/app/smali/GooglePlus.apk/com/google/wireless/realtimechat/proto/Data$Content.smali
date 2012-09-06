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
    .line 2709
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Data$Content;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Data$Content;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Data$Content;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Content;

    .line 2710
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Content;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Content;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->initFields()V

    .line 2711
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2070
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2207
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedIsInitialized:B

    .line 2236
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedSerializedSize:I

    .line 2071
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;Lcom/google/wireless/realtimechat/proto/Data$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2065
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Data$Content;-><init>(Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2072
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2207
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedIsInitialized:B

    .line 2236
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedSerializedSize:I

    .line 2072
    return-void
.end method

.method static synthetic access$2902(Lcom/google/wireless/realtimechat/proto/Data$Content;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2065
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/google/wireless/realtimechat/proto/Data$Content;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2065
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/google/wireless/realtimechat/proto/Data$Content;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2065
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->linkUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/wireless/realtimechat/proto/Data$Content;Lcom/google/wireless/realtimechat/proto/Data$Location;)Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2065
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/google/wireless/realtimechat/proto/Data$Content;Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;)Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2065
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/google/wireless/realtimechat/proto/Data$Content;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2065
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Content;
    .registers 1

    .prologue
    .line 2076
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Content;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Content;

    return-object v0
.end method

.method private getLinkUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 2169
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->linkUrl_:Ljava/lang/Object;

    .line 2170
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2171
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2173
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->linkUrl_:Ljava/lang/Object;

    .line 2176
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
    .line 2137
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoUrl_:Ljava/lang/Object;

    .line 2138
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2139
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2141
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoUrl_:Ljava/lang/Object;

    .line 2144
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
    .line 2105
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->text_:Ljava/lang/Object;

    .line 2106
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 2107
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2109
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->text_:Ljava/lang/Object;

    .line 2112
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
    .line 2201
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->text_:Ljava/lang/Object;

    .line 2202
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoUrl_:Ljava/lang/Object;

    .line 2203
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->linkUrl_:Ljava/lang/Object;

    .line 2204
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Location;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    .line 2205
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    .line 2206
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 1

    .prologue
    .line 2340
    #calls: Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->create()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->access$2700()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Data$Content;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 2343
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Data$Content;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 2065
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Content;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Data$Content;
    .registers 2

    .prologue
    .line 2080
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$Content;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Data$Content;

    return-object v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2155
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->linkUrl_:Ljava/lang/Object;

    .line 2156
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2157
    check-cast v1, Ljava/lang/String;

    .line 2165
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2159
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2161
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2162
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2163
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->linkUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2165
    goto :goto_8
.end method

.method public getLocation()Lcom/google/wireless/realtimechat/proto/Data$Location;
    .registers 2

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    return-object v0
.end method

.method public getPhotoMetadata()Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;
    .registers 2

    .prologue
    .line 2197
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    return-object v0
.end method

.method public getPhotoUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2123
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoUrl_:Ljava/lang/Object;

    .line 2124
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2125
    check-cast v1, Ljava/lang/String;

    .line 2133
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2127
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2129
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2130
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2131
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoUrl_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2133
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2238
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedSerializedSize:I

    .line 2239
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 2263
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 2241
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 2242
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 2243
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2246
    :cond_1a
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_29

    .line 2247
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getPhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2250
    :cond_29
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_39

    .line 2251
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getLinkUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2254
    :cond_39
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_48

    .line 2255
    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2258
    :cond_48
    iget v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_58

    .line 2259
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2262
    :cond_58
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedSerializedSize:I

    move v1, v0

    .line 2263
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2091
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->text_:Ljava/lang/Object;

    .line 2092
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 2093
    check-cast v1, Ljava/lang/String;

    .line 2101
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 2095
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2097
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2098
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2099
    iput-object v2, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->text_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 2101
    goto :goto_8
.end method

.method public hasLinkUrl()Z
    .registers 3

    .prologue
    .line 2152
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
    .line 2184
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
    .line 2194
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
    .line 2120
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

    .line 2088
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

    .line 2209
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedIsInitialized:B

    .line 2210
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 2213
    :goto_8
    return v1

    .line 2210
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 2212
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2065
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->newBuilderForType()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 2

    .prologue
    .line 2341
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Content;->newBuilder()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 2065
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->toBuilder()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;
    .registers 2

    .prologue
    .line 2345
    invoke-static {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->newBuilder(Lcom/google/wireless/realtimechat/proto/Data$Content;)Lcom/google/wireless/realtimechat/proto/Data$Content$Builder;

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
    .line 2270
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

    .line 2218
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getSerializedSize()I

    .line 2219
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 2220
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2222
    :cond_13
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_20

    .line 2223
    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getPhotoUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2225
    :cond_20
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2e

    .line 2226
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/wireless/realtimechat/proto/Data$Content;->getLinkUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2228
    :cond_2e
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3b

    .line 2229
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->location_:Lcom/google/wireless/realtimechat/proto/Data$Location;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2231
    :cond_3b
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_49

    .line 2232
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Data$Content;->photoMetadata_:Lcom/google/wireless/realtimechat/proto/Data$PhotoMetadata;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2234
    :cond_49
    return-void
.end method
