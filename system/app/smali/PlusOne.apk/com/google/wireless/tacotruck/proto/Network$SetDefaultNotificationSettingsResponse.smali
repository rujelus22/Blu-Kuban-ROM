.class public final Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetDefaultNotificationSettingsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43578
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    .line 43579
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->initFields()V

    .line 43580
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 43372
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 43387
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->memoizedIsInitialized:B

    .line 43401
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->memoizedSerializedSize:I

    .line 43373
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43367
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 43374
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 43387
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->memoizedIsInitialized:B

    .line 43401
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->memoizedSerializedSize:I

    .line 43374
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;
    .registers 1

    .prologue
    .line 43378
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 43386
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;
    .registers 1

    .prologue
    .line 43485
    #calls: Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->access$60700()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 43421
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;->access$60600(Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43367
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;
    .registers 2

    .prologue
    .line 43382
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    .line 43403
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->memoizedSerializedSize:I

    .line 43404
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    move v1, v0

    .line 43408
    .end local v0           #size:I
    .local v1, size:I
    :goto_6
    return v1

    .line 43406
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_7
    const/4 v0, 0x0

    .line 43407
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 43408
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_6
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 43389
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->memoizedIsInitialized:B

    .line 43390
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 43393
    :goto_8
    return v1

    .line 43390
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 43392
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->memoizedIsInitialized:B

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
    .line 43415
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43398
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SetDefaultNotificationSettingsResponse;->getSerializedSize()I

    .line 43399
    return-void
.end method
