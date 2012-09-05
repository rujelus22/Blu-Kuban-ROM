.class public final Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReportAbuseRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;,
        Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

.field private id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22541
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    .line 22542
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->initFields()V

    .line 22543
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 22142
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 22240
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->memoizedIsInitialized:B

    .line 22260
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->memoizedSerializedSize:I

    .line 22143
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22137
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;-><init>(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 22144
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22240
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->memoizedIsInitialized:B

    .line 22260
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->memoizedSerializedSize:I

    .line 22144
    return-void
.end method

.method static synthetic access$30702(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22137
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$30802(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;)Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22137
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    return-object p1
.end method

.method static synthetic access$30902(Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22137
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
    .registers 1

    .prologue
    .line 22148
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    return-object v0
.end method

.method private getIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 22215
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->id_:Ljava/lang/Object;

    .line 22216
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 22217
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 22219
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->id_:Ljava/lang/Object;

    .line 22222
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
    .line 22237
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->id_:Ljava/lang/Object;

    .line 22238
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->PLATFORM:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    .line 22239
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    .registers 1

    .prologue
    .line 22352
    #calls: Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;->access$30500()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContentType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;
    .registers 2

    .prologue
    .line 22233
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 22137
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;
    .registers 2

    .prologue
    .line 22152
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 22201
    iget-object v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->id_:Ljava/lang/Object;

    .line 22202
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 22203
    check-cast v1, Ljava/lang/String;

    .line 22211
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 22205
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 22207
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 22208
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 22209
    iput-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->id_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 22211
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 22262
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->memoizedSerializedSize:I

    .line 22263
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 22275
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 22265
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 22266
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_19

    .line 22267
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22270
    :cond_19
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2a

    .line 22271
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 22274
    :cond_2a
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->memoizedSerializedSize:I

    move v1, v0

    .line 22275
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public hasContentType()Z
    .registers 3

    .prologue
    .line 22230
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->bitField0_:I

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

.method public hasId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 22198
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->bitField0_:I

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

    .line 22242
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->memoizedIsInitialized:B

    .line 22243
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 22246
    :goto_8
    return v1

    .line 22243
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 22245
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->memoizedIsInitialized:B

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
    .line 22282
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 22251
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getSerializedSize()I

    .line 22252
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 22253
    invoke-direct {p0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 22255
    :cond_12
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_21

    .line 22256
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest;->contentType_:Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;

    invoke-virtual {v0}, Lcom/google/wireless/tacotruck/proto/Network$ReportAbuseRequest$ContentType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 22258
    :cond_21
    return-void
.end method
