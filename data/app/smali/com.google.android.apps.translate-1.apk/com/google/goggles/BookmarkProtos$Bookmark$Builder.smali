.class public final Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
.source "BookmarkProtos.java"

# interfaces
.implements Lcom/google/goggles/BookmarkProtos$BookmarkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/BookmarkProtos$Bookmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder",
        "<",
        "Lcom/google/goggles/BookmarkProtos$Bookmark;",
        "Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;",
        ">;",
        "Lcom/google/goggles/BookmarkProtos$BookmarkOrBuilder;"
    }
.end annotation


# instance fields
.field private autoOpen_:Z

.field private bitField0_:I

.field private createTimeSec_:J

.field private latitude_:D

.field private longitude_:D

.field private objectId_:Ljava/lang/Object;

.field private operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

.field private ownerAccount_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 880
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;-><init>()V

    .line 1089
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->objectId_:Ljava/lang/Object;

    .line 1125
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->ownerAccount_:Ljava/lang/Object;

    .line 1182
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    .line 881
    invoke-direct {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->maybeForceBuilderInitialization()V

    .line 882
    return-void
.end method

.method static synthetic access$700(Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 1

    .prologue
    .line 876
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->create()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 927
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->buildPartial()Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    .line 928
    invoke-virtual {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 929
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 932
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 1

    .prologue
    .line 887
    new-instance v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    invoke-direct {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 885
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 3

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->buildPartial()Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    .line 919
    invoke-virtual {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 920
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 922
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->build()Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 936
    new-instance v2, Lcom/google/goggles/BookmarkProtos$Bookmark;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark;-><init>(Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;Lcom/google/goggles/BookmarkProtos$1;)V

    .line 937
    iget v3, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 938
    const/4 v1, 0x0

    .line 939
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_63

    .line 942
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->objectId_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/BookmarkProtos$Bookmark;->objectId_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->access$1002(Lcom/google/goggles/BookmarkProtos$Bookmark;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 944
    or-int/lit8 v0, v0, 0x2

    .line 946
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->ownerAccount_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/BookmarkProtos$Bookmark;->ownerAccount_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->access$1102(Lcom/google/goggles/BookmarkProtos$Bookmark;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 948
    or-int/lit8 v0, v0, 0x4

    .line 950
    :cond_26
    iget-wide v4, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->createTimeSec_:J

    #setter for: Lcom/google/goggles/BookmarkProtos$Bookmark;->createTimeSec_:J
    invoke-static {v2, v4, v5}, Lcom/google/goggles/BookmarkProtos$Bookmark;->access$1202(Lcom/google/goggles/BookmarkProtos$Bookmark;J)J

    .line 951
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 952
    or-int/lit8 v0, v0, 0x8

    .line 954
    :cond_33
    iget-object v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    #setter for: Lcom/google/goggles/BookmarkProtos$Bookmark;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    invoke-static {v2, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->access$1302(Lcom/google/goggles/BookmarkProtos$Bookmark;Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    .line 955
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_40

    .line 956
    or-int/lit8 v0, v0, 0x10

    .line 958
    :cond_40
    iget-wide v4, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->latitude_:D

    #setter for: Lcom/google/goggles/BookmarkProtos$Bookmark;->latitude_:D
    invoke-static {v2, v4, v5}, Lcom/google/goggles/BookmarkProtos$Bookmark;->access$1402(Lcom/google/goggles/BookmarkProtos$Bookmark;D)D

    .line 959
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4d

    .line 960
    or-int/lit8 v0, v0, 0x20

    .line 962
    :cond_4d
    iget-wide v4, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->longitude_:D

    #setter for: Lcom/google/goggles/BookmarkProtos$Bookmark;->longitude_:D
    invoke-static {v2, v4, v5}, Lcom/google/goggles/BookmarkProtos$Bookmark;->access$1502(Lcom/google/goggles/BookmarkProtos$Bookmark;D)D

    .line 963
    and-int/lit8 v1, v3, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_5a

    .line 964
    or-int/lit8 v0, v0, 0x40

    .line 966
    :cond_5a
    iget-boolean v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->autoOpen_:Z

    #setter for: Lcom/google/goggles/BookmarkProtos$Bookmark;->autoOpen_:Z
    invoke-static {v2, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->access$1602(Lcom/google/goggles/BookmarkProtos$Bookmark;Z)Z

    .line 967
    #setter for: Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->access$1702(Lcom/google/goggles/BookmarkProtos$Bookmark;I)I

    .line 968
    return-object v2

    :cond_63
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->buildPartial()Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 891
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;

    .line 892
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->objectId_:Ljava/lang/Object;

    .line 893
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 894
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->ownerAccount_:Ljava/lang/Object;

    .line 895
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 896
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->createTimeSec_:J

    .line 897
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 898
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    .line 899
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 900
    iput-wide v2, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->latitude_:D

    .line 901
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 902
    iput-wide v2, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->longitude_:D

    .line 903
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 904
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->autoOpen_:Z

    .line 905
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 906
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->clear()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->clear()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->clear()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAutoOpen()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 2

    .prologue
    .line 1281
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1282
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->autoOpen_:Z

    .line 1284
    return-object p0
.end method

.method public clearCreateTimeSec()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 3

    .prologue
    .line 1175
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1176
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->createTimeSec_:J

    .line 1178
    return-object p0
.end method

.method public clearLatitude()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 3

    .prologue
    .line 1239
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1240
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->latitude_:D

    .line 1242
    return-object p0
.end method

.method public clearLongitude()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 3

    .prologue
    .line 1260
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1261
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->longitude_:D

    .line 1263
    return-object p0
.end method

.method public clearObjectId()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 2

    .prologue
    .line 1113
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1114
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getObjectId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->objectId_:Ljava/lang/Object;

    .line 1116
    return-object p0
.end method

.method public clearOperation()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 2

    .prologue
    .line 1218
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    .line 1220
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1221
    return-object p0
.end method

.method public clearOwnerAccount()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 2

    .prologue
    .line 1149
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1150
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getOwnerAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->ownerAccount_:Ljava/lang/Object;

    .line 1152
    return-object p0
.end method

.method public clone()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 3

    .prologue
    .line 910
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->create()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->buildPartial()Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeFrom(Lcom/google/goggles/BookmarkProtos$Bookmark;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->clone()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->clone()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .registers 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->clone()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->clone()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->clone()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAutoOpen()Z
    .registers 2

    .prologue
    .line 1272
    iget-boolean v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->autoOpen_:Z

    return v0
.end method

.method public getCreateTimeSec()J
    .registers 3

    .prologue
    .line 1166
    iget-wide v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->createTimeSec_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 2

    .prologue
    .line 914
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->getDefaultInstanceForType()Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 876
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->getDefaultInstanceForType()Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 1230
    iget-wide v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->latitude_:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 1251
    iget-wide v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->longitude_:D

    return-wide v0
.end method

.method public getObjectId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->objectId_:Ljava/lang/Object;

    .line 1095
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1096
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1097
    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->objectId_:Ljava/lang/Object;

    .line 1100
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public getOperation()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    return-object v0
.end method

.method public getOwnerAccount()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->ownerAccount_:Ljava/lang/Object;

    .line 1131
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1132
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1133
    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->ownerAccount_:Ljava/lang/Object;

    .line 1136
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasAutoOpen()Z
    .registers 3

    .prologue
    .line 1269
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasCreateTimeSec()Z
    .registers 3

    .prologue
    .line 1163
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

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

.method public hasLatitude()Z
    .registers 3

    .prologue
    .line 1227
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

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

.method public hasLongitude()Z
    .registers 3

    .prologue
    .line 1248
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasObjectId()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1091
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasOperation()Z
    .registers 3

    .prologue
    .line 1184
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

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

.method public hasOwnerAccount()Z
    .registers 3

    .prologue
    .line 1127
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 999
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->hasObjectId()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1023
    :cond_7
    :goto_7
    return v0

    .line 1003
    :cond_8
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->hasOwnerAccount()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1007
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->hasCreateTimeSec()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1011
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->hasOperation()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1015
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->hasAutoOpen()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1019
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->extensionsAreInitialized()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1023
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public mergeFrom(Lcom/google/goggles/BookmarkProtos$Bookmark;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 4
    .parameter

    .prologue
    .line 972
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 995
    :goto_6
    return-object p0

    .line 973
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->hasObjectId()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 974
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->setObjectId(Ljava/lang/String;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    .line 976
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->hasOwnerAccount()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 977
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getOwnerAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->setOwnerAccount(Ljava/lang/String;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    .line 979
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->hasCreateTimeSec()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 980
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getCreateTimeSec()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->setCreateTimeSec(J)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    .line 982
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->hasOperation()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 983
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getOperation()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeOperation(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    .line 985
    :cond_3b
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->hasLatitude()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 986
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->setLatitude(D)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    .line 988
    :cond_48
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->hasLongitude()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 989
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->setLongitude(D)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    .line 991
    :cond_55
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->hasAutoOpen()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 992
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getAutoOpen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->setAutoOpen(Z)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    .line 994
    :cond_62
    invoke-virtual {p0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeExtensionFields(Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;)V

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1031
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1032
    sparse-switch v0, :sswitch_data_78

    .line 1037
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1039
    :sswitch_d
    return-object p0

    .line 1044
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1045
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->objectId_:Ljava/lang/Object;

    goto :goto_0

    .line 1049
    :sswitch_1b
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1050
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->ownerAccount_:Ljava/lang/Object;

    goto :goto_0

    .line 1054
    :sswitch_28
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1055
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->createTimeSec_:J

    goto :goto_0

    .line 1059
    :sswitch_35
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    .line 1060
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->hasOperation()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1061
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->getOperation()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeFrom(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    .line 1063
    :cond_46
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1064
    invoke-virtual {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildPartial()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->setOperation(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    goto :goto_0

    .line 1068
    :sswitch_51
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1069
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->latitude_:D

    goto :goto_0

    .line 1073
    :sswitch_5e
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1074
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->longitude_:D

    goto :goto_0

    .line 1078
    :sswitch_6b
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1079
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->autoOpen_:Z

    goto :goto_0

    .line 1032
    :sswitch_data_78
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1b
        0x18 -> :sswitch_28
        0x22 -> :sswitch_35
        0x29 -> :sswitch_51
        0x31 -> :sswitch_5e
        0x38 -> :sswitch_6b
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 876
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 876
    check-cast p1, Lcom/google/goggles/BookmarkProtos$Bookmark;

    invoke-virtual {p0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeFrom(Lcom/google/goggles/BookmarkProtos$Bookmark;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 876
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeOperation(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1206
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1208
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->newBuilder(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->mergeFrom(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->buildPartial()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    .line 1214
    :goto_20
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1215
    return-object p0

    .line 1211
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    goto :goto_20
.end method

.method public setAutoOpen(Z)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1275
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1276
    iput-boolean p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->autoOpen_:Z

    .line 1278
    return-object p0
.end method

.method public setCreateTimeSec(J)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1169
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1170
    iput-wide p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->createTimeSec_:J

    .line 1172
    return-object p0
.end method

.method public setLatitude(D)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1233
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1234
    iput-wide p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->latitude_:D

    .line 1236
    return-object p0
.end method

.method public setLongitude(D)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1254
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1255
    iput-wide p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->longitude_:D

    .line 1257
    return-object p0
.end method

.method public setObjectId(Ljava/lang/String;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1104
    if-nez p1, :cond_8

    .line 1105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1107
    :cond_8
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1108
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->objectId_:Ljava/lang/Object;

    .line 1110
    return-object p0
.end method

.method setObjectId(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1119
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1120
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->objectId_:Ljava/lang/Object;

    .line 1122
    return-void
.end method

.method public setOperation(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1200
    invoke-virtual {p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation$Builder;->build()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    .line 1202
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1203
    return-object p0
.end method

.method public setOperation(Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1190
    if-nez p1, :cond_8

    .line 1191
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1193
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    .line 1195
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1196
    return-object p0
.end method

.method public setOwnerAccount(Ljava/lang/String;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1140
    if-nez p1, :cond_8

    .line 1141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1143
    :cond_8
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1144
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->ownerAccount_:Ljava/lang/Object;

    .line 1146
    return-object p0
.end method

.method setOwnerAccount(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1155
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->bitField0_:I

    .line 1156
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->ownerAccount_:Ljava/lang/Object;

    .line 1158
    return-void
.end method
