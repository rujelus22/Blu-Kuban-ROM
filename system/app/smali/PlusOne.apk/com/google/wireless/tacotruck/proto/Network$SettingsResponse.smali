.class public final Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Network.java"

# interfaces
.implements Lcom/google/wireless/tacotruck/proto/Network$SettingsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private isChild_:Z

.field private latestAppVersion_:I

.field private mandatoryAppVersion_:I

.field private me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18880
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    .line 18881
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->initFields()V

    .line 18882
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 18352
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 18423
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->memoizedIsInitialized:B

    .line 18452
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->memoizedSerializedSize:I

    .line 18353
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;Lcom/google/wireless/tacotruck/proto/Network$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18347
    invoke-direct {p0, p1}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;-><init>(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 18354
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 18423
    iput-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->memoizedIsInitialized:B

    .line 18452
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->memoizedSerializedSize:I

    .line 18354
    return-void
.end method

.method static synthetic access$25002(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;Lcom/google/wireless/tacotruck/proto/Data$Person;)Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18347
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object p1
.end method

.method static synthetic access$25102(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18347
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->latestAppVersion_:I

    return p1
.end method

.method static synthetic access$25202(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18347
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->mandatoryAppVersion_:I

    return p1
.end method

.method static synthetic access$25302(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;)Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18347
    iput-object p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    return-object p1
.end method

.method static synthetic access$25402(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18347
    iput-boolean p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->isChild_:Z

    return p1
.end method

.method static synthetic access$25502(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18347
    iput p1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;
    .registers 1

    .prologue
    .line 18358
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 18417
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$Person;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$Person;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    .line 18418
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->latestAppVersion_:I

    .line 18419
    iput v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->mandatoryAppVersion_:I

    .line 18420
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;->getDefaultInstance()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    .line 18421
    iput-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->isChild_:Z

    .line 18422
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    .registers 1

    .prologue
    .line 18556
    #calls: Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->create()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->access$24800()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 18492
    invoke-static {}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->newBuilder()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;

    #calls: Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->buildParsed()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;->access$24700(Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse$Builder;)Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 18347
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;
    .registers 2

    .prologue
    .line 18362
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->defaultInstance:Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;

    return-object v0
.end method

.method public getIsChild()Z
    .registers 2

    .prologue
    .line 18413
    iget-boolean v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->isChild_:Z

    return v0
.end method

.method public getLatestAppVersion()I
    .registers 2

    .prologue
    .line 18383
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->latestAppVersion_:I

    return v0
.end method

.method public getMandatoryAppVersion()I
    .registers 2

    .prologue
    .line 18393
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->mandatoryAppVersion_:I

    return v0
.end method

.method public getMe()Lcom/google/wireless/tacotruck/proto/Data$Person;
    .registers 2

    .prologue
    .line 18373
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 18454
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->memoizedSerializedSize:I

    .line 18455
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 18479
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 18457
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 18458
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_18

    .line 18459
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18462
    :cond_18
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_25

    .line 18463
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->latestAppVersion_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 18466
    :cond_25
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_33

    .line 18467
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->mandatoryAppVersion_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 18470
    :cond_33
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    .line 18471
    iget-object v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 18474
    :cond_42
    iget v2, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_52

    .line 18475
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->isChild_:Z

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 18478
    :cond_52
    iput v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->memoizedSerializedSize:I

    move v1, v0

    .line 18479
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public getUserPreferences()Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;
    .registers 2

    .prologue
    .line 18403
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    return-object v0
.end method

.method public hasIsChild()Z
    .registers 3

    .prologue
    .line 18410
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

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

.method public hasLatestAppVersion()Z
    .registers 3

    .prologue
    .line 18380
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

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

.method public hasMandatoryAppVersion()Z
    .registers 3

    .prologue
    .line 18390
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

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

.method public hasMe()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 18370
    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUserPreferences()Z
    .registers 3

    .prologue
    .line 18400
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 18425
    iget-byte v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->memoizedIsInitialized:B

    .line 18426
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 18429
    :goto_8
    return v1

    .line 18426
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 18428
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->memoizedIsInitialized:B

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
    .line 18486
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

    .line 18434
    invoke-virtual {p0}, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->getSerializedSize()I

    .line 18435
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 18436
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->me_:Lcom/google/wireless/tacotruck/proto/Data$Person;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18438
    :cond_11
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1c

    .line 18439
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->latestAppVersion_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 18441
    :cond_1c
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_28

    .line 18442
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->mandatoryAppVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 18444
    :cond_28
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_35

    .line 18445
    iget-object v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->userPreferences_:Lcom/google/wireless/tacotruck/proto/Data$UserPreferences;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 18447
    :cond_35
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_43

    .line 18448
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/wireless/tacotruck/proto/Network$SettingsResponse;->isChild_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 18450
    :cond_43
    return-void
.end method
