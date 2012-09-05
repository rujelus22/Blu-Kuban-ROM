.class public final Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserInfoResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

.field private static final serialVersionUID:J


# instance fields
.field private acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

.field private bitField0_:I

.field private device_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

.field private status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

.field private userExists_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39793
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;-><init>(Z)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    .line 39794
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->initFields()V

    .line 39795
    return-void
.end method

.method private constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 39189
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 39271
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->memoizedIsInitialized:B

    .line 39300
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->memoizedSerializedSize:I

    .line 39190
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;Lcom/google/wireless/realtimechat/proto/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39184
    invoke-direct {p0, p1}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;-><init>(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 39191
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 39271
    iput-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->memoizedIsInitialized:B

    .line 39300
    iput v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->memoizedSerializedSize:I

    .line 39191
    return-void
.end method

.method static synthetic access$54602(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;)Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39184
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object p1
.end method

.method static synthetic access$54702(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;Lcom/google/wireless/realtimechat/proto/Data$Participant;)Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39184
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object p1
.end method

.method static synthetic access$54802(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;)Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39184
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    return-object p1
.end method

.method static synthetic access$54902(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39184
    iput-boolean p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->userExists_:Z

    return p1
.end method

.method static synthetic access$55000(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39184
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$55002(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39184
    iput-object p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$55102(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39184
    iput p1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    .registers 1

    .prologue
    .line 39195
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 39265
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->OK:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    .line 39266
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Data$Participant;->getDefaultInstance()Lcom/google/wireless/realtimechat/proto/Data$Participant;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    .line 39267
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->EVERYONE:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    .line 39268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->userExists_:Z

    .line 39269
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;

    .line 39270
    return-void
.end method

.method public static newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 1

    .prologue
    .line 39404
    #calls: Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->create()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->access$54400()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 39407
    invoke-static {}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->newBuilder()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;->mergeFrom(Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;)Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAcl()Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;
    .registers 2

    .prologue
    .line 39230
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 39184
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;
    .registers 2

    .prologue
    .line 39199
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->defaultInstance:Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;

    return-object v0
.end method

.method public getDevice(I)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;
    .registers 3
    .parameter "index"

    .prologue
    .line 39257
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;

    return-object v0
.end method

.method public getDeviceCount()I
    .registers 2

    .prologue
    .line 39254
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDeviceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$DeviceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39247
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceOrBuilder(I)Lcom/google/wireless/realtimechat/proto/Client$DeviceInfoOrBuilder;
    .registers 3
    .parameter "index"

    .prologue
    .line 39261
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Client$DeviceInfoOrBuilder;

    return-object v0
.end method

.method public getDeviceOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/wireless/realtimechat/proto/Client$DeviceInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39251
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;

    return-object v0
.end method

.method public getParticipant()Lcom/google/wireless/realtimechat/proto/Data$Participant;
    .registers 2

    .prologue
    .line 39220
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 39302
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->memoizedSerializedSize:I

    .line 39303
    .local v1, size:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    move v2, v1

    .line 39327
    .end local v1           #size:I
    .local v2, size:I
    :goto_9
    return v2

    .line 39305
    .end local v2           #size:I
    .restart local v1       #size:I
    :cond_a
    const/4 v1, 0x0

    .line 39306
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-ne v3, v4, :cond_18

    .line 39307
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 39310
    :cond_18
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-ne v3, v6, :cond_29

    .line 39311
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    invoke-virtual {v3}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->getNumber()I

    move-result v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 39314
    :cond_29
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_39

    .line 39315
    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->userExists_:Z

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 39318
    :cond_39
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3a
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_52

    .line 39319
    iget-object v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v1, v3

    .line 39318
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 39322
    :cond_52
    iget v3, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_64

    .line 39323
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v4}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 39326
    :cond_64
    iput v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->memoizedSerializedSize:I

    move v2, v1

    .line 39327
    .end local v1           #size:I
    .restart local v2       #size:I
    goto :goto_9
.end method

.method public getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
    .registers 2

    .prologue
    .line 39210
    iget-object v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    return-object v0
.end method

.method public getUserExists()Z
    .registers 2

    .prologue
    .line 39240
    iget-boolean v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->userExists_:Z

    return v0
.end method

.method public hasAcl()Z
    .registers 3

    .prologue
    .line 39227
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->bitField0_:I

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

.method public hasParticipant()Z
    .registers 3

    .prologue
    .line 39217
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->bitField0_:I

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

.method public hasStatus()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 39207
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasUserExists()Z
    .registers 3

    .prologue
    .line 39237
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->bitField0_:I

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

    .line 39273
    iget-byte v0, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->memoizedIsInitialized:B

    .line 39274
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 39277
    :goto_8
    return v1

    .line 39274
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 39276
    :cond_b
    iput-byte v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->memoizedIsInitialized:B

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
    .line 39334
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

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 39282
    invoke-virtual {p0}, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->getSerializedSize()I

    .line 39283
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v2, :cond_11

    .line 39284
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->participant_:Lcom/google/wireless/realtimechat/proto/Data$Participant;

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39286
    :cond_11
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_20

    .line 39287
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->acl_:Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$SetAclsRequest$Acl;->getNumber()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 39289
    :cond_20
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2e

    .line 39290
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->userExists_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 39292
    :cond_2e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2f
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 39293
    iget-object v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->device_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 39292
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 39295
    :cond_45
    iget v1, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_55

    .line 39296
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/wireless/realtimechat/proto/Client$UserInfoResponse;->status_:Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;

    invoke-virtual {v2}, Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;->getNumber()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 39298
    :cond_55
    return-void
.end method
