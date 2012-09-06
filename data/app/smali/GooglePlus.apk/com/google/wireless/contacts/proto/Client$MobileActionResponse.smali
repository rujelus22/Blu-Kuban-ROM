.class public final Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/contacts/proto/Client$MobileActionResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileActionResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;,
        Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private responseCode_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 7285
    new-instance v0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    .line 7286
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->initFields()V

    .line 7287
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6967
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 7041
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->memoizedIsInitialized:B

    .line 7058
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->memoizedSerializedSize:I

    .line 6968
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;Lcom/google/wireless/contacts/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6962
    invoke-direct {p0, p1}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;-><init>(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6969
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7041
    iput-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->memoizedIsInitialized:B

    .line 7058
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->memoizedSerializedSize:I

    .line 6969
    return-void
.end method

.method static synthetic access$9402(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6962
    iput-object p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    return-object p1
.end method

.method static synthetic access$9502(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6962
    iput p1, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    .registers 1

    .prologue
    .line 6973
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 7039
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;->SUCCESS:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    iput-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    .line 7040
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
    .registers 1

    .prologue
    .line 7146
    #calls: Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->create()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->access$9200()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 7149
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->mergeFrom(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7104
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    #calls: Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->buildParsed()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    invoke-static {v0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;->access$9100(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 6962
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;
    .registers 2

    .prologue
    .line 6977
    sget-object v0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->defaultInstance:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;

    return-object v0
.end method

.method public getResponseCode()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;
    .registers 2

    .prologue
    .line 7035
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 7060
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->memoizedSerializedSize:I

    .line 7061
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    move v1, v0

    .line 7069
    .end local v0           #size:I
    .local v1, size:I
    :goto_7
    return v1

    .line 7063
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_8
    const/4 v0, 0x0

    .line 7064
    iget v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1a

    .line 7065
    iget-object v2, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    invoke-virtual {v2}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;->getNumber()I

    move-result v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7068
    :cond_1a
    iput v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 7069
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_7
.end method

.method public hasResponseCode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 7032
    iget v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->bitField0_:I

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

    .line 7043
    iget-byte v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->memoizedIsInitialized:B

    .line 7044
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 7047
    :goto_8
    return v1

    .line 7044
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 7046
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6962
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
    .registers 2

    .prologue
    .line 7147
    invoke-static {}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->newBuilder()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 6962
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->toBuilder()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;
    .registers 2

    .prologue
    .line 7151
    invoke-static {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->newBuilder(Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;)Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$Builder;

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
    .line 7076
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 7052
    invoke-virtual {p0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->getSerializedSize()I

    .line 7053
    iget v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_13

    .line 7054
    iget-object v0, p0, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse;->responseCode_:Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;

    invoke-virtual {v0}, Lcom/google/wireless/contacts/proto/Client$MobileActionResponse$ResponseCode;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 7056
    :cond_13
    return-void
.end method
