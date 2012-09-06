.class public final Lcom/google/goggles/RestrictsProtos$ColorEnum;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RestrictsProtos.java"

# interfaces
.implements Lcom/google/goggles/RestrictsProtos$ColorEnumOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/RestrictsProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorEnum"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;,
        Lcom/google/goggles/RestrictsProtos$ColorEnum$Color;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/google/goggles/RestrictsProtos$ColorEnum;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1709
    new-instance v0, Lcom/google/goggles/RestrictsProtos$ColorEnum;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/RestrictsProtos$ColorEnum;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/RestrictsProtos$ColorEnum;->defaultInstance:Lcom/google/goggles/RestrictsProtos$ColorEnum;

    .line 1710
    sget-object v0, Lcom/google/goggles/RestrictsProtos$ColorEnum;->defaultInstance:Lcom/google/goggles/RestrictsProtos$ColorEnum;

    invoke-direct {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->initFields()V

    .line 1711
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1363
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 1518
    iput-byte v0, p0, Lcom/google/goggles/RestrictsProtos$ColorEnum;->memoizedIsInitialized:B

    .line 1532
    iput v0, p0, Lcom/google/goggles/RestrictsProtos$ColorEnum;->memoizedSerializedSize:I

    .line 1364
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;Lcom/google/goggles/RestrictsProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1358
    invoke-direct {p0, p1}, Lcom/google/goggles/RestrictsProtos$ColorEnum;-><init>(Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1365
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1518
    iput-byte v0, p0, Lcom/google/goggles/RestrictsProtos$ColorEnum;->memoizedIsInitialized:B

    .line 1532
    iput v0, p0, Lcom/google/goggles/RestrictsProtos$ColorEnum;->memoizedSerializedSize:I

    .line 1365
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 1

    .prologue
    .line 1369
    sget-object v0, Lcom/google/goggles/RestrictsProtos$ColorEnum;->defaultInstance:Lcom/google/goggles/RestrictsProtos$ColorEnum;

    return-object v0
.end method

.method private initFields()V
    .registers 1

    .prologue
    .line 1517
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;
    .registers 1

    .prologue
    .line 1616
    #calls: Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->create()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->access$1600()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/RestrictsProtos$ColorEnum;)Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1619
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->newBuilder()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->mergeFrom(Lcom/google/goggles/RestrictsProtos$ColorEnum;)Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1585
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->newBuilder()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    .line 1586
    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1587
    #calls: Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->access$1500(Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;)Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    .line 1589
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1596
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->newBuilder()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    .line 1597
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1598
    #calls: Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->access$1500(Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;)Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    .line 1600
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1552
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->newBuilder()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->access$1500(Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;)Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1558
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->newBuilder()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->access$1500(Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;)Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1606
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->newBuilder()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->access$1500(Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;)Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1612
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->newBuilder()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->access$1500(Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;)Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1574
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->newBuilder()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->access$1500(Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;)Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1580
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->newBuilder()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->access$1500(Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;)Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1563
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->newBuilder()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->access$1500(Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;)Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1569
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->newBuilder()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;->access$1500(Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;)Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/RestrictsProtos$ColorEnum;
    .registers 2

    .prologue
    .line 1373
    sget-object v0, Lcom/google/goggles/RestrictsProtos$ColorEnum;->defaultInstance:Lcom/google/goggles/RestrictsProtos$ColorEnum;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1358
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->getDefaultInstanceForType()Lcom/google/goggles/RestrictsProtos$ColorEnum;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 3

    .prologue
    .line 1534
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$ColorEnum;->memoizedSerializedSize:I

    .line 1535
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1539
    :goto_5
    return v0

    .line 1537
    :cond_6
    const/4 v0, 0x0

    .line 1538
    iput v0, p0, Lcom/google/goggles/RestrictsProtos$ColorEnum;->memoizedSerializedSize:I

    goto :goto_5
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1520
    iget-byte v1, p0, Lcom/google/goggles/RestrictsProtos$ColorEnum;->memoizedIsInitialized:B

    .line 1521
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 1524
    :goto_8
    return v0

    .line 1521
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 1523
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/RestrictsProtos$ColorEnum;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;
    .registers 2

    .prologue
    .line 1617
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->newBuilder()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1358
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->newBuilderForType()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;
    .registers 2

    .prologue
    .line 1621
    invoke-static {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->newBuilder(Lcom/google/goggles/RestrictsProtos$ColorEnum;)Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1358
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->toBuilder()Lcom/google/goggles/RestrictsProtos$ColorEnum$Builder;

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
    .line 1546
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1529
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$ColorEnum;->getSerializedSize()I

    .line 1530
    return-void
.end method
