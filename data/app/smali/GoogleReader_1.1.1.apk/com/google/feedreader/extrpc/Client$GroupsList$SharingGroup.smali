.class public final Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroupOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$GroupsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharingGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    }
.end annotation


# static fields
.field public static final GROUPID_FIELD_NUMBER:I = 0x1

.field public static final ISREADONLY_FIELD_NUMBER:I = 0x2

.field public static final ISSHARING_FIELD_NUMBER:I = 0x4

.field public static final NAME_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private groupId_:J

.field private isReadOnly_:Z

.field private isSharing_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 13998
    new-instance v0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->defaultInstance:Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    .line 13999
    sget-object v0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->defaultInstance:Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->initFields()V

    .line 14000
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 13530
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 13612
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->memoizedIsInitialized:B

    .line 13642
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->memoizedSerializedSize:I

    .line 13531
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13525
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;-><init>(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 13532
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13612
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->memoizedIsInitialized:B

    .line 13642
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->memoizedSerializedSize:I

    .line 13532
    return-void
.end method

.method static synthetic access$16902(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13525
    iput-wide p1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->groupId_:J

    return-wide p1
.end method

.method static synthetic access$17002(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13525
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isReadOnly_:Z

    return p1
.end method

.method static synthetic access$17102(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13525
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17202(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13525
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isSharing_:Z

    return p1
.end method

.method static synthetic access$17302(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13525
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 1

    .prologue
    .line 13536
    sget-object v0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->defaultInstance:Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    return-object v0
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 13585
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->name_:Ljava/lang/Object;

    .line 13586
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 13587
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 13589
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->name_:Ljava/lang/Object;

    move-object v2, v0

    .line 13592
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_f
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_10
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_f
.end method

.method private initFields()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 13607
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->groupId_:J

    .line 13608
    iput-boolean v2, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isReadOnly_:Z

    .line 13609
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->name_:Ljava/lang/Object;

    .line 13610
    iput-boolean v2, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isSharing_:Z

    .line 13611
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 1

    .prologue
    .line 13742
    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->create()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->access$16700()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 13745
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13711
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    .line 13712
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 13713
    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->access$16600(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v1

    .line 13715
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13722
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    .line 13723
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 13724
    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->access$16600(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v1

    .line 13726
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13678
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->access$16600(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13684
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->access$16600(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13732
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->access$16600(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13738
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->access$16600(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13700
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->access$16600(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13706
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->access$16600(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13689
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->access$16600(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 13695
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;->access$16600(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;
    .registers 2

    .prologue
    .line 13540
    sget-object v0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->defaultInstance:Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 13525
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()J
    .registers 3

    .prologue
    .line 13551
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->groupId_:J

    return-wide v0
.end method

.method public getIsReadOnly()Z
    .registers 2

    .prologue
    .line 13561
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isReadOnly_:Z

    return v0
.end method

.method public getIsSharing()Z
    .registers 2

    .prologue
    .line 13603
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isSharing_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 6

    .prologue
    .line 13571
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->name_:Ljava/lang/Object;

    .line 13572
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 13573
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 13581
    :goto_9
    return-object v4

    .line 13575
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 13577
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 13578
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 13579
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->name_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 13581
    goto :goto_9
.end method

.method public getSerializedSize()I
    .registers 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 13644
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->memoizedSerializedSize:I

    .line 13645
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    move v1, v0

    .line 13665
    .end local v0           #size:I
    .local v1, size:I
    :goto_9
    return v1

    .line 13647
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_a
    const/4 v0, 0x0

    .line 13648
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v4, :cond_18

    .line 13649
    iget-wide v2, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->groupId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13652
    :cond_18
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v5, :cond_25

    .line 13653
    iget-boolean v2, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isReadOnly_:Z

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13656
    :cond_25
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v6, :cond_35

    .line 13657
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 13660
    :cond_35
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_44

    .line 13661
    iget-boolean v2, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isSharing_:Z

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 13664
    :cond_44
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->memoizedSerializedSize:I

    move v1, v0

    .line 13665
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_9
.end method

.method public hasGroupId()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 13548
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hasIsReadOnly()Z
    .registers 3

    .prologue
    .line 13558
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->bitField0_:I

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

.method public hasIsSharing()Z
    .registers 3

    .prologue
    .line 13600
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->bitField0_:I

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

.method public hasName()Z
    .registers 3

    .prologue
    .line 13568
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->bitField0_:I

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
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 13614
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->memoizedIsInitialized:B

    .line 13615
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v2, :cond_b

    move v1, v2

    .line 13622
    :goto_a
    return v1

    :cond_b
    move v1, v3

    .line 13615
    goto :goto_a

    .line 13617
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->hasGroupId()Z

    move-result v1

    if-nez v1, :cond_17

    .line 13618
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->memoizedIsInitialized:B

    move v1, v3

    .line 13619
    goto :goto_a

    .line 13621
    :cond_17
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->memoizedIsInitialized:B

    move v1, v2

    .line 13622
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 2

    .prologue
    .line 13743
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->newBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13525
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;
    .registers 2

    .prologue
    .line 13747
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->newBuilder(Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;)Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 13525
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->toBuilder()Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup$Builder;

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
    .line 13672
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

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

    .line 13627
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->getSerializedSize()I

    .line 13628
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_11

    .line 13629
    iget-wide v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->groupId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 13631
    :cond_11
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1c

    .line 13632
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isReadOnly_:Z

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13634
    :cond_1c
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2a

    .line 13635
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 13637
    :cond_2a
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_37

    .line 13638
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$GroupsList$SharingGroup;->isSharing_:Z

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 13640
    :cond_37
    return-void
.end method
