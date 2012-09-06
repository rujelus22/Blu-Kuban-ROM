.class public final Lcom/google/goggles/BookmarkProtos$Bookmark;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "BookmarkProtos.java"

# interfaces
.implements Lcom/google/goggles/BookmarkProtos$BookmarkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/BookmarkProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bookmark"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;,
        Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;,
        Lcom/google/goggles/BookmarkProtos$Bookmark$OperationOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage",
        "<",
        "Lcom/google/goggles/BookmarkProtos$Bookmark;",
        ">;",
        "Lcom/google/goggles/BookmarkProtos$BookmarkOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUTO_OPEN_FIELD_NUMBER:I = 0x7

.field public static final CREATE_TIME_SEC_FIELD_NUMBER:I = 0x3

.field public static final LATITUDE_FIELD_NUMBER:I = 0x5

.field public static final LONGITUDE_FIELD_NUMBER:I = 0x6

.field public static final OBJECT_ID_FIELD_NUMBER:I = 0x1

.field public static final OPERATION_FIELD_NUMBER:I = 0x4

.field public static final OWNER_ACCOUNT_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/BookmarkProtos$Bookmark;

.field private static final serialVersionUID:J


# instance fields
.field private autoOpen_:Z

.field private bitField0_:I

.field private createTimeSec_:J

.field private latitude_:D

.field private longitude_:D

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private objectId_:Ljava/lang/Object;

.field private operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

.field private ownerAccount_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1291
    new-instance v0, Lcom/google/goggles/BookmarkProtos$Bookmark;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/BookmarkProtos$Bookmark;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/BookmarkProtos$Bookmark;->defaultInstance:Lcom/google/goggles/BookmarkProtos$Bookmark;

    .line 1292
    sget-object v0, Lcom/google/goggles/BookmarkProtos$Bookmark;->defaultInstance:Lcom/google/goggles/BookmarkProtos$Bookmark;

    invoke-direct {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->initFields()V

    .line 1293
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 48
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>(Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;)V

    .line 693
    iput-byte v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->memoizedIsInitialized:B

    .line 756
    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->memoizedSerializedSize:I

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;Lcom/google/goggles/BookmarkProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark;-><init>(Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 50
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    .line 693
    iput-byte v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->memoizedIsInitialized:B

    .line 756
    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->memoizedSerializedSize:I

    .line 50
    return-void
.end method

.method static synthetic access$1002(Lcom/google/goggles/BookmarkProtos$Bookmark;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->objectId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/goggles/BookmarkProtos$Bookmark;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->ownerAccount_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/goggles/BookmarkProtos$Bookmark;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->createTimeSec_:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/google/goggles/BookmarkProtos$Bookmark;Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;)Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/goggles/BookmarkProtos$Bookmark;D)D
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->latitude_:D

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/google/goggles/BookmarkProtos$Bookmark;D)D
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->longitude_:D

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/google/goggles/BookmarkProtos$Bookmark;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->autoOpen_:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/google/goggles/BookmarkProtos$Bookmark;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/goggles/BookmarkProtos$Bookmark;->defaultInstance:Lcom/google/goggles/BookmarkProtos$Bookmark;

    return-object v0
.end method

.method private getObjectIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->objectId_:Ljava/lang/Object;

    .line 592
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 593
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 595
    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->objectId_:Ljava/lang/Object;

    .line 598
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getOwnerAccountBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 623
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->ownerAccount_:Ljava/lang/Object;

    .line 624
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 625
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 627
    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->ownerAccount_:Ljava/lang/Object;

    .line 630
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 685
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->objectId_:Ljava/lang/Object;

    .line 686
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->ownerAccount_:Ljava/lang/Object;

    .line 687
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->createTimeSec_:J

    .line 688
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;->getDefaultInstance()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    .line 689
    iput-wide v2, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->latitude_:D

    .line 690
    iput-wide v2, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->longitude_:D

    .line 691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->autoOpen_:Z

    .line 692
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 1

    .prologue
    .line 869
    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->create()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->access$800()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/BookmarkProtos$Bookmark;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 2
    .parameter

    .prologue
    .line 872
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeFrom(Lcom/google/goggles/BookmarkProtos$Bookmark;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 838
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    .line 839
    invoke-virtual {v0, p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 840
    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->access$700(Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    .line 842
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    .line 850
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 851
    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->access$700(Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    .line 853
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 805
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->access$700(Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 811
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->access$700(Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 859
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->access$700(Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->access$700(Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->access$700(Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 833
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->access$700(Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 816
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->access$700(Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 822
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    #calls: Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->buildParsed()Lcom/google/goggles/BookmarkProtos$Bookmark;
    invoke-static {v0}, Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;->access$700(Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;)Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAutoOpen()Z
    .registers 2

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->autoOpen_:Z

    return v0
.end method

.method public getCreateTimeSec()J
    .registers 3

    .prologue
    .line 641
    iget-wide v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->createTimeSec_:J

    return-wide v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/BookmarkProtos$Bookmark;
    .registers 2

    .prologue
    .line 58
    sget-object v0, Lcom/google/goggles/BookmarkProtos$Bookmark;->defaultInstance:Lcom/google/goggles/BookmarkProtos$Bookmark;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getDefaultInstanceForType()Lcom/google/goggles/BookmarkProtos$Bookmark;

    move-result-object v0

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 661
    iget-wide v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->latitude_:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 671
    iget-wide v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->longitude_:D

    return-wide v0
.end method

.method public getObjectId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 577
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->objectId_:Ljava/lang/Object;

    .line 578
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 579
    check-cast v0, Ljava/lang/String;

    .line 587
    :goto_8
    return-object v0

    .line 581
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 583
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 585
    iput-object v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->objectId_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 587
    goto :goto_8
.end method

.method public getOperation()Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;
    .registers 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    return-object v0
.end method

.method public getOwnerAccount()Ljava/lang/String;
    .registers 3

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->ownerAccount_:Ljava/lang/Object;

    .line 610
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 611
    check-cast v0, Ljava/lang/String;

    .line 619
    :goto_8
    return-object v0

    .line 613
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 615
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 617
    iput-object v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->ownerAccount_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 619
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 758
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->memoizedSerializedSize:I

    .line 759
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 792
    :goto_8
    return v0

    .line 761
    :cond_9
    const/4 v0, 0x0

    .line 762
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_19

    .line 763
    invoke-direct {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getObjectIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 766
    :cond_19
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_28

    .line 767
    invoke-direct {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getOwnerAccountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 770
    :cond_28
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_36

    .line 771
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->createTimeSec_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 774
    :cond_36
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_45

    .line 775
    iget-object v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 778
    :cond_45
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_55

    .line 779
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->latitude_:D

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 782
    :cond_55
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_65

    .line 783
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->longitude_:D

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 786
    :cond_65
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_75

    .line 787
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->autoOpen_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 790
    :cond_75
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->extensionsSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 791
    iput v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public hasAutoOpen()Z
    .registers 3

    .prologue
    .line 678
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

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
    .line 638
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

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
    .line 658
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

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
    .line 668
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

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

    .line 574
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

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
    .line 648
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

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
    .line 606
    iget v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 695
    iget-byte v2, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->memoizedIsInitialized:B

    .line 696
    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    if-ne v2, v0, :cond_b

    :goto_9
    move v1, v0

    .line 723
    :goto_a
    return v1

    :cond_b
    move v0, v1

    .line 696
    goto :goto_9

    .line 698
    :cond_d
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->hasObjectId()Z

    move-result v2

    if-nez v2, :cond_16

    .line 699
    iput-byte v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->memoizedIsInitialized:B

    goto :goto_a

    .line 702
    :cond_16
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->hasOwnerAccount()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 703
    iput-byte v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->memoizedIsInitialized:B

    goto :goto_a

    .line 706
    :cond_1f
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->hasCreateTimeSec()Z

    move-result v2

    if-nez v2, :cond_28

    .line 707
    iput-byte v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->memoizedIsInitialized:B

    goto :goto_a

    .line 710
    :cond_28
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->hasOperation()Z

    move-result v2

    if-nez v2, :cond_31

    .line 711
    iput-byte v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->memoizedIsInitialized:B

    goto :goto_a

    .line 714
    :cond_31
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->hasAutoOpen()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 715
    iput-byte v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->memoizedIsInitialized:B

    goto :goto_a

    .line 718
    :cond_3a
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->extensionsAreInitialized()Z

    move-result v2

    if-nez v2, :cond_43

    .line 719
    iput-byte v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->memoizedIsInitialized:B

    goto :goto_a

    .line 722
    :cond_43
    iput-byte v0, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->memoizedIsInitialized:B

    move v1, v0

    .line 723
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 2

    .prologue
    .line 870
    invoke-static {}, Lcom/google/goggles/BookmarkProtos$Bookmark;->newBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->newBuilderForType()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;
    .registers 2

    .prologue
    .line 874
    invoke-static {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->newBuilder(Lcom/google/goggles/BookmarkProtos$Bookmark;)Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->toBuilder()Lcom/google/goggles/BookmarkProtos$Bookmark$Builder;

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
    .line 799
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 728
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getSerializedSize()I

    .line 730
    invoke-virtual {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->newExtensionWriter()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;

    move-result-object v0

    .line 732
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 733
    invoke-direct {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getObjectIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 735
    :cond_17
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_24

    .line 736
    invoke-direct {p0}, Lcom/google/goggles/BookmarkProtos$Bookmark;->getOwnerAccountBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 738
    :cond_24
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_30

    .line 739
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->createTimeSec_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 741
    :cond_30
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3d

    .line 742
    iget-object v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->operation_:Lcom/google/goggles/BookmarkProtos$Bookmark$Operation;

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 744
    :cond_3d
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4b

    .line 745
    const/4 v1, 0x5

    iget-wide v2, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->latitude_:D

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 747
    :cond_4b
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_59

    .line 748
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->longitude_:D

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 750
    :cond_59
    iget v1, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_67

    .line 751
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/goggles/BookmarkProtos$Bookmark;->autoOpen_:Z

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 753
    :cond_67
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage$ExtensionWriter;->writeUntil(ILcom/google/protobuf/CodedOutputStream;)V

    .line 754
    return-void
.end method
