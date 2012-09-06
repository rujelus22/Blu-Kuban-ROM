.class public final Lcom/google/feedreader/extrpc/Client$SharingAclContent;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Client.java"

# interfaces
.implements Lcom/google/feedreader/extrpc/Client$SharingAclContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SharingAclContent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    }
.end annotation


# static fields
.field public static final ISEDITINGDISABLED_FIELD_NUMBER:I = 0x3

.field public static final MEMBERID_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/feedreader/extrpc/Client$SharingAclContent;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private isEditingDisabled_:Z

.field private memberId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30841
    new-instance v0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;-><init>(Z)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    .line 30842
    sget-object v0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->initFields()V

    .line 30843
    return-void
.end method

.method private constructor <init>(Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;)V
    .registers 3
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 30368
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 30443
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memoizedIsInitialized:B

    .line 30474
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memoizedSerializedSize:I

    .line 30369
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;Lcom/google/feedreader/extrpc/Client$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30363
    invoke-direct {p0, p1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;-><init>(Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 30370
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 30443
    iput-byte v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memoizedIsInitialized:B

    .line 30474
    iput v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memoizedSerializedSize:I

    .line 30370
    return-void
.end method

.method static synthetic access$38402(Lcom/google/feedreader/extrpc/Client$SharingAclContent;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30363
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$38500(Lcom/google/feedreader/extrpc/Client$SharingAclContent;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30363
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memberId_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$38502(Lcom/google/feedreader/extrpc/Client$SharingAclContent;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30363
    iput-object p1, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memberId_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$38602(Lcom/google/feedreader/extrpc/Client$SharingAclContent;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30363
    iput-boolean p1, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->isEditingDisabled_:Z

    return p1
.end method

.method static synthetic access$38702(Lcom/google/feedreader/extrpc/Client$SharingAclContent;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30363
    iput p1, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 1

    .prologue
    .line 30374
    sget-object v0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    return-object v0
.end method

.method private getTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 30403
    iget-object v1, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->type_:Ljava/lang/Object;

    .line 30404
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 30405
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 30407
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->type_:Ljava/lang/Object;

    move-object v2, v0

    .line 30410
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
    .registers 2

    .prologue
    .line 30439
    const-string v0, ""

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->type_:Ljava/lang/Object;

    .line 30440
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memberId_:Ljava/util/List;

    .line 30441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->isEditingDisabled_:Z

    .line 30442
    return-void
.end method

.method public static newBuilder()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 1

    .prologue
    .line 30575
    #calls: Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->create()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->access$38200()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/feedreader/extrpc/Client$SharingAclContent;)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 2
    .parameter "prototype"

    .prologue
    .line 30578
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->mergeFrom(Lcom/google/feedreader/extrpc/Client$SharingAclContent;)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30544
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    .line 30545
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 30546
    #calls: Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->access$38100(Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v1

    .line 30548
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30555
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    .line 30556
    .local v0, builder:Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 30557
    #calls: Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->access$38100(Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v1

    .line 30559
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30511
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->access$38100(Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30517
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->access$38100(Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30565
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->access$38100(Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30571
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    #calls: Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    invoke-static {v0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->access$38100(Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30533
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->access$38100(Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30539
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->access$38100(Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30522
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->access$38100(Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 3
    .parameter "data"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 30528
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    #calls: Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->buildParsed()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;->access$38100(Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;)Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SharingAclContent;
    .registers 2

    .prologue
    .line 30378
    sget-object v0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->defaultInstance:Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 30363
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->getDefaultInstanceForType()Lcom/google/feedreader/extrpc/Client$SharingAclContent;

    move-result-object v0

    return-object v0
.end method

.method public getIsEditingDisabled()Z
    .registers 2

    .prologue
    .line 30435
    iget-boolean v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->isEditingDisabled_:Z

    return v0
.end method

.method public getMemberId(I)J
    .registers 4
    .parameter "index"

    .prologue
    .line 30425
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memberId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMemberIdCount()I
    .registers 2

    .prologue
    .line 30422
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memberId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMemberIdList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30419
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memberId_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 30476
    iget v2, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memoizedSerializedSize:I

    .line 30477
    .local v2, size:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    move v3, v2

    .line 30498
    .end local v2           #size:I
    .local v3, size:I
    :goto_7
    return v3

    .line 30479
    .end local v3           #size:I
    .restart local v2       #size:I
    :cond_8
    const/4 v2, 0x0

    .line 30480
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_18

    .line 30481
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v2, v4

    .line 30485
    :cond_18
    const/4 v0, 0x0

    .line 30486
    .local v0, dataSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memberId_:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_36

    .line 30487
    iget-object v4, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memberId_:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v4

    add-int/2addr v0, v4

    .line 30486
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 30490
    :cond_36
    add-int/2addr v2, v0

    .line 30491
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->getMemberIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 30493
    iget v4, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_51

    .line 30494
    const/4 v4, 0x3

    iget-boolean v5, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->isEditingDisabled_:Z

    invoke-static {v4, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v2, v4

    .line 30497
    :cond_51
    iput v2, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memoizedSerializedSize:I

    move v3, v2

    .line 30498
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_7
.end method

.method public getType()Ljava/lang/String;
    .registers 6

    .prologue
    .line 30389
    iget-object v2, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->type_:Ljava/lang/Object;

    .line 30390
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 30391
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 30399
    :goto_9
    return-object v4

    .line 30393
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_a
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 30395
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 30396
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 30397
    iput-object v3, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->type_:Ljava/lang/Object;

    :cond_1a
    move-object v4, v3

    .line 30399
    goto :goto_9
.end method

.method public hasIsEditingDisabled()Z
    .registers 3

    .prologue
    .line 30432
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->bitField0_:I

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

.method public hasType()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 30386
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30445
    iget-byte v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memoizedIsInitialized:B

    .line 30446
    .local v0, isInitialized:B
    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    if-ne v0, v3, :cond_b

    move v1, v3

    .line 30457
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 30446
    goto :goto_a

    .line 30448
    :cond_d
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->hasType()Z

    move-result v1

    if-nez v1, :cond_17

    .line 30449
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memoizedIsInitialized:B

    move v1, v2

    .line 30450
    goto :goto_a

    .line 30452
    :cond_17
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->hasIsEditingDisabled()Z

    move-result v1

    if-nez v1, :cond_21

    .line 30453
    iput-byte v2, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memoizedIsInitialized:B

    move v1, v2

    .line 30454
    goto :goto_a

    .line 30456
    :cond_21
    iput-byte v3, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memoizedIsInitialized:B

    move v1, v3

    .line 30457
    goto :goto_a
.end method

.method public newBuilderForType()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 2

    .prologue
    .line 30576
    invoke-static {}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->newBuilder()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30363
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->newBuilderForType()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;
    .registers 2

    .prologue
    .line 30580
    invoke-static {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->newBuilder(Lcom/google/feedreader/extrpc/Client$SharingAclContent;)Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 30363
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->toBuilder()Lcom/google/feedreader/extrpc/Client$SharingAclContent$Builder;

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
    .line 30505
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
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 30462
    invoke-virtual {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->getSerializedSize()I

    .line 30463
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_12

    .line 30464
    invoke-direct {p0}, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 30466
    :cond_12
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memberId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    .line 30467
    iget-object v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->memberId_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 30466
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 30469
    :cond_2f
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_3b

    .line 30470
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/feedreader/extrpc/Client$SharingAclContent;->isEditingDisabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 30472
    :cond_3b
    return-void
.end method
