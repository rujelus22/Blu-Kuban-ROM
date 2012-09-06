.class public final Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "A2a.java"

# interfaces
.implements Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/A2a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HangoutOnPostData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

.field public static final messageSetExtension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lproto2/bridge/MessageSet;",
            "Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private isActive_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private roomId_:Ljava/lang/Object;

.field private totalOtherParticipantsCount_:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 4081
    new-instance v0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;-><init>(Z)V

    sput-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    .line 4082
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->initFields()V

    .line 4090
    invoke-static {}, Lproto2/bridge/MessageSet;->getDefaultInstance()Lproto2/bridge/MessageSet;

    move-result-object v0

    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    move-result-object v1

    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1a0b6fa

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->messageSetExtension:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 3674
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 3745
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->memoizedIsInitialized:B

    .line 3768
    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->memoizedSerializedSize:I

    .line 3675
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;Lcom/google/apps/tacotown/proto/A2a$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3669
    invoke-direct {p0, p1}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;-><init>(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 3676
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3745
    iput-byte v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->memoizedIsInitialized:B

    .line 3768
    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->memoizedSerializedSize:I

    .line 3676
    return-void
.end method

.method static synthetic access$4802(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3669
    iput-boolean p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->isActive_:Z

    return p1
.end method

.method static synthetic access$4902(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3669
    iput-object p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->roomId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5002(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3669
    iput p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->totalOtherParticipantsCount_:I

    return p1
.end method

.method static synthetic access$5102(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3669
    iput p1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;
    .registers 1

    .prologue
    .line 3680
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    return-object v0
.end method

.method private getRoomIdBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 3719
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->roomId_:Ljava/lang/Object;

    .line 3720
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 3721
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3723
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->roomId_:Ljava/lang/Object;

    .line 3726
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
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3741
    iput-boolean v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->isActive_:Z

    .line 3742
    const-string v0, ""

    iput-object v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->roomId_:Ljava/lang/Object;

    .line 3743
    iput v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->totalOtherParticipantsCount_:I

    .line 3744
    return-void
.end method

.method public static newBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
    .registers 1

    .prologue
    .line 3864
    #calls: Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->create()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->access$4600()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;)Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 3867
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->newBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;->mergeFrom(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;)Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;
    .registers 2

    .prologue
    .line 3684
    sget-object v0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->defaultInstance:Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 3669
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->getDefaultInstanceForType()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;

    move-result-object v0

    return-object v0
.end method

.method public getIsActive()Z
    .registers 2

    .prologue
    .line 3695
    iget-boolean v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->isActive_:Z

    return v0
.end method

.method public getRoomId()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3705
    iget-object v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->roomId_:Ljava/lang/Object;

    .line 3706
    .local v1, ref:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 3707
    check-cast v1, Ljava/lang/String;

    .line 3715
    .end local v1           #ref:Ljava/lang/Object;
    :goto_8
    return-object v1

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_9
    move-object v0, v1

    .line 3709
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3711
    .local v0, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3712
    .local v2, s:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3713
    iput-object v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->roomId_:Ljava/lang/Object;

    :cond_18
    move-object v1, v2

    .line 3715
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3770
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->memoizedSerializedSize:I

    .line 3771
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_9

    move v1, v0

    .line 3787
    .end local v0           #size:I
    .local v1, size:I
    :goto_8
    return v1

    .line 3773
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_9
    const/4 v0, 0x0

    .line 3774
    iget v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_17

    .line 3775
    iget-boolean v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->isActive_:Z

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 3778
    :cond_17
    iget v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_26

    .line 3779
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->getRoomIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 3782
    :cond_26
    iget v2, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_35

    .line 3783
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->totalOtherParticipantsCount_:I

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 3786
    :cond_35
    iput v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->memoizedSerializedSize:I

    move v1, v0

    .line 3787
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_8
.end method

.method public getTotalOtherParticipantsCount()I
    .registers 2

    .prologue
    .line 3737
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->totalOtherParticipantsCount_:I

    return v0
.end method

.method public hasIsActive()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 3692
    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasRoomId()Z
    .registers 3

    .prologue
    .line 3702
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->bitField0_:I

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

.method public hasTotalOtherParticipantsCount()Z
    .registers 3

    .prologue
    .line 3734
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 3747
    iget-byte v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->memoizedIsInitialized:B

    .line 3748
    .local v0, isInitialized:B
    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    .line 3751
    :goto_8
    return v1

    .line 3748
    :cond_9
    const/4 v1, 0x0

    goto :goto_8

    .line 3750
    :cond_b
    iput-byte v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
    .registers 2

    .prologue
    .line 3865
    invoke-static {}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->newBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3669
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->newBuilderForType()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;
    .registers 2

    .prologue
    .line 3869
    invoke-static {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->newBuilder(Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;)Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 3669
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->toBuilder()Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData$Builder;

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
    .line 3794
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

    .line 3756
    invoke-virtual {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->getSerializedSize()I

    .line 3757
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 3758
    iget-boolean v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->isActive_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3760
    :cond_10
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1d

    .line 3761
    invoke-direct {p0}, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->getRoomIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 3763
    :cond_1d
    iget v0, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2a

    .line 3764
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/apps/tacotown/proto/A2a$HangoutOnPostData;->totalOtherParticipantsCount_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3766
    :cond_2a
    return-void
.end method
