.class public final Lcom/google/goggles/UrlGroupProtos$UrlGroup;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UrlGroupProtos.java"

# interfaces
.implements Lcom/google/goggles/UrlGroupProtos$UrlGroupOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/UrlGroupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UrlGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    }
.end annotation


# static fields
.field public static final URL_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/UrlGroupProtos$UrlGroup;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private url_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/UrlGroupProtos$Url;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1003
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->defaultInstance:Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    .line 1004
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->defaultInstance:Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    invoke-direct {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->initFields()V

    .line 1005
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 642
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 679
    iput-byte v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->memoizedIsInitialized:B

    .line 702
    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->memoizedSerializedSize:I

    .line 643
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;Lcom/google/goggles/UrlGroupProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 637
    invoke-direct {p0, p1}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;-><init>(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 644
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 679
    iput-byte v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->memoizedIsInitialized:B

    .line 702
    iput v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->memoizedSerializedSize:I

    .line 644
    return-void
.end method

.method static synthetic access$1100(Lcom/google/goggles/UrlGroupProtos$UrlGroup;)Ljava/util/List;
    .registers 2
    .parameter

    .prologue
    .line 637
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/google/goggles/UrlGroupProtos$UrlGroup;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 637
    iput-object p1, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 1

    .prologue
    .line 648
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->defaultInstance:Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 677
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;

    .line 678
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 1

    .prologue
    .line 790
    #calls: Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->create()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->access$900()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/UrlGroupProtos$UrlGroup;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 2
    .parameter

    .prologue
    .line 793
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->newBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->mergeFrom(Lcom/google/goggles/UrlGroupProtos$UrlGroup;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 759
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->newBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    .line 760
    invoke-virtual {v0, p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 761
    #calls: Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->access$800(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    .line 763
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->newBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    .line 771
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 772
    #calls: Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->access$800(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    .line 774
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->newBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    #calls: Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->access$800(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 732
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->newBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    #calls: Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->access$800(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->newBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    #calls: Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->access$800(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 786
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->newBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->access$800(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->newBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    #calls: Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->access$800(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 754
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->newBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    #calls: Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->access$800(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 737
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->newBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    #calls: Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->access$800(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 743
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->newBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    #calls: Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->buildParsed()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    invoke-static {v0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;->access$800(Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;)Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/UrlGroupProtos$UrlGroup;
    .registers 2

    .prologue
    .line 652
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->defaultInstance:Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->getDefaultInstanceForType()Lcom/google/goggles/UrlGroupProtos$UrlGroup;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 704
    iget v2, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->memoizedSerializedSize:I

    .line 705
    const/4 v1, -0x1

    if-eq v2, v1, :cond_7

    .line 713
    :goto_6
    return v2

    :cond_7
    move v1, v0

    move v2, v0

    .line 708
    :goto_9
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 709
    const/4 v3, 0x1

    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    .line 708
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 712
    :cond_23
    iput v2, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->memoizedSerializedSize:I

    goto :goto_6
.end method

.method public getUrl(I)Lcom/google/goggles/UrlGroupProtos$Url;
    .registers 3
    .parameter

    .prologue
    .line 669
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$Url;

    return-object v0
.end method

.method public getUrlCount()I
    .registers 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUrlList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/goggles/UrlGroupProtos$Url;",
            ">;"
        }
    .end annotation

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;

    return-object v0
.end method

.method public getUrlOrBuilder(I)Lcom/google/goggles/UrlGroupProtos$UrlOrBuilder;
    .registers 3
    .parameter

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$UrlOrBuilder;

    return-object v0
.end method

.method public getUrlOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/goggles/UrlGroupProtos$UrlOrBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 681
    iget-byte v2, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->memoizedIsInitialized:B

    .line 682
    const/4 v3, -0x1

    if-eq v2, v3, :cond_c

    if-ne v2, v0, :cond_a

    .line 691
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 682
    goto :goto_9

    :cond_c
    move v2, v1

    .line 684
    :goto_d
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->getUrlCount()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 685
    invoke-virtual {p0, v2}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->getUrl(I)Lcom/google/goggles/UrlGroupProtos$Url;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/goggles/UrlGroupProtos$Url;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_21

    .line 686
    iput-byte v1, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->memoizedIsInitialized:B

    move v0, v1

    .line 687
    goto :goto_9

    .line 684
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 690
    :cond_24
    iput-byte v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->memoizedIsInitialized:B

    goto :goto_9
.end method

.method public newBuilderForType()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 2

    .prologue
    .line 791
    invoke-static {}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->newBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->newBuilderForType()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;
    .registers 2

    .prologue
    .line 795
    invoke-static {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->newBuilder(Lcom/google/goggles/UrlGroupProtos$UrlGroup;)Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->toBuilder()Lcom/google/goggles/UrlGroupProtos$UrlGroup$Builder;

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
    .line 720
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 696
    invoke-virtual {p0}, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->getSerializedSize()I

    .line 697
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 698
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/goggles/UrlGroupProtos$UrlGroup;->url_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 697
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 700
    :cond_1d
    return-void
.end method
