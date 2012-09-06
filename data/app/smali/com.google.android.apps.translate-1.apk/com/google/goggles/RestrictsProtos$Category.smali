.class public final Lcom/google/goggles/RestrictsProtos$Category;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "RestrictsProtos.java"

# interfaces
.implements Lcom/google/goggles/RestrictsProtos$CategoryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/RestrictsProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/RestrictsProtos$Category$Builder;,
        Lcom/google/goggles/RestrictsProtos$Category$Domain;
    }
.end annotation


# static fields
.field public static final DISPLAY_NAME_FIELD_NUMBER:I = 0x4

.field public static final DOMAIN_FIELD_NUMBER:I = 0x1

.field public static final DOMAIN_SPECIFIC_ID_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/google/goggles/RestrictsProtos$Category;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private displayName_:Ljava/lang/Object;

.field private domainSpecificId_:I

.field private domain_:Lcom/google/goggles/RestrictsProtos$Category$Domain;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private name_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1348
    new-instance v0, Lcom/google/goggles/RestrictsProtos$Category;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/RestrictsProtos$Category;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/RestrictsProtos$Category;->defaultInstance:Lcom/google/goggles/RestrictsProtos$Category;

    .line 1349
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Category;->defaultInstance:Lcom/google/goggles/RestrictsProtos$Category;

    invoke-direct {v0}, Lcom/google/goggles/RestrictsProtos$Category;->initFields()V

    .line 1350
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/RestrictsProtos$Category$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 803
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 948
    iput-byte v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->memoizedIsInitialized:B

    .line 974
    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->memoizedSerializedSize:I

    .line 804
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/RestrictsProtos$Category$Builder;Lcom/google/goggles/RestrictsProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 798
    invoke-direct {p0, p1}, Lcom/google/goggles/RestrictsProtos$Category;-><init>(Lcom/google/goggles/RestrictsProtos$Category$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 805
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 948
    iput-byte v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->memoizedIsInitialized:B

    .line 974
    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->memoizedSerializedSize:I

    .line 805
    return-void
.end method

.method static synthetic access$1002(Lcom/google/goggles/RestrictsProtos$Category;Lcom/google/goggles/RestrictsProtos$Category$Domain;)Lcom/google/goggles/RestrictsProtos$Category$Domain;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/goggles/RestrictsProtos$Category;->domain_:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/goggles/RestrictsProtos$Category;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/goggles/RestrictsProtos$Category;->name_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/goggles/RestrictsProtos$Category;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/google/goggles/RestrictsProtos$Category;->displayName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/goggles/RestrictsProtos$Category;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 798
    iput p1, p0, Lcom/google/goggles/RestrictsProtos$Category;->domainSpecificId_:I

    return p1
.end method

.method static synthetic access$1402(Lcom/google/goggles/RestrictsProtos$Category;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 798
    iput p1, p0, Lcom/google/goggles/RestrictsProtos$Category;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/RestrictsProtos$Category;
    .registers 1

    .prologue
    .line 809
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Category;->defaultInstance:Lcom/google/goggles/RestrictsProtos$Category;

    return-object v0
.end method

.method private getDisplayNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 921
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->displayName_:Ljava/lang/Object;

    .line 922
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 923
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 925
    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->displayName_:Ljava/lang/Object;

    .line 928
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private getNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 889
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->name_:Ljava/lang/Object;

    .line 890
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 891
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 893
    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->name_:Ljava/lang/Object;

    .line 896
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 943
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Category$Domain;->PRETTY_NAME:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->domain_:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    .line 944
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->name_:Ljava/lang/Object;

    .line 945
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->displayName_:Ljava/lang/Object;

    .line 946
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->domainSpecificId_:I

    .line 947
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 1

    .prologue
    .line 1074
    #calls: Lcom/google/goggles/RestrictsProtos$Category$Builder;->create()Lcom/google/goggles/RestrictsProtos$Category$Builder;
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->access$800()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/RestrictsProtos$Category;)Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 2
    .parameter

    .prologue
    .line 1077
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->mergeFrom(Lcom/google/goggles/RestrictsProtos$Category;)Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/RestrictsProtos$Category;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1043
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    .line 1044
    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1045
    #calls: Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Category;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->access$700(Lcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    .line 1047
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Category;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1054
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    .line 1055
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1056
    #calls: Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Category;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->access$700(Lcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    .line 1058
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/RestrictsProtos$Category;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1010
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Category$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Category;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->access$700(Lcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Category;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1016
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Category$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Category;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->access$700(Lcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/RestrictsProtos$Category;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1064
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Category$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Category;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->access$700(Lcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Category;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1070
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Category;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->access$700(Lcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/RestrictsProtos$Category;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1032
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Category$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Category;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->access$700(Lcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Category;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1038
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Category$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Category;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->access$700(Lcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/RestrictsProtos$Category;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1021
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Category$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Category;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->access$700(Lcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/RestrictsProtos$Category;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1027
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/RestrictsProtos$Category$Builder;

    #calls: Lcom/google/goggles/RestrictsProtos$Category$Builder;->buildParsed()Lcom/google/goggles/RestrictsProtos$Category;
    invoke-static {v0}, Lcom/google/goggles/RestrictsProtos$Category$Builder;->access$700(Lcom/google/goggles/RestrictsProtos$Category$Builder;)Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/RestrictsProtos$Category;
    .registers 2

    .prologue
    .line 813
    sget-object v0, Lcom/google/goggles/RestrictsProtos$Category;->defaultInstance:Lcom/google/goggles/RestrictsProtos$Category;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category;->getDefaultInstanceForType()Lcom/google/goggles/RestrictsProtos$Category;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 907
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->displayName_:Ljava/lang/Object;

    .line 908
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 909
    check-cast v0, Ljava/lang/String;

    .line 917
    :goto_8
    return-object v0

    .line 911
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 913
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 914
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 915
    iput-object v1, p0, Lcom/google/goggles/RestrictsProtos$Category;->displayName_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 917
    goto :goto_8
.end method

.method public getDomain()Lcom/google/goggles/RestrictsProtos$Category$Domain;
    .registers 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->domain_:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    return-object v0
.end method

.method public getDomainSpecificId()I
    .registers 2

    .prologue
    .line 939
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->domainSpecificId_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 875
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->name_:Ljava/lang/Object;

    .line 876
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 877
    check-cast v0, Ljava/lang/String;

    .line 885
    :goto_8
    return-object v0

    .line 879
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 881
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 882
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 883
    iput-object v1, p0, Lcom/google/goggles/RestrictsProtos$Category;->name_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 885
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 976
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->memoizedSerializedSize:I

    .line 977
    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 997
    :goto_8
    return v0

    .line 979
    :cond_9
    const/4 v0, 0x0

    .line 980
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Category;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1b

    .line 981
    iget-object v1, p0, Lcom/google/goggles/RestrictsProtos$Category;->domain_:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    invoke-virtual {v1}, Lcom/google/goggles/RestrictsProtos$Category$Domain;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 984
    :cond_1b
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Category;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2a

    .line 985
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Category;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 988
    :cond_2a
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Category;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3a

    .line 989
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/goggles/RestrictsProtos$Category;->domainSpecificId_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 992
    :cond_3a
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Category;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_49

    .line 993
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Category;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 996
    :cond_49
    iput v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->memoizedSerializedSize:I

    goto :goto_8
.end method

.method public hasDisplayName()Z
    .registers 3

    .prologue
    .line 904
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->bitField0_:I

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

.method public hasDomain()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 862
    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Category;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasDomainSpecificId()Z
    .registers 3

    .prologue
    .line 936
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->bitField0_:I

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
    .line 872
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->bitField0_:I

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
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 950
    iget-byte v1, p0, Lcom/google/goggles/RestrictsProtos$Category;->memoizedIsInitialized:B

    .line 951
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 954
    :goto_8
    return v0

    .line 951
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 953
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 2

    .prologue
    .line 1075
    invoke-static {}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilderForType()Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;
    .registers 2

    .prologue
    .line 1079
    invoke-static {p0}, Lcom/google/goggles/RestrictsProtos$Category;->newBuilder(Lcom/google/goggles/RestrictsProtos$Category;)Lcom/google/goggles/RestrictsProtos$Category$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 798
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category;->toBuilder()Lcom/google/goggles/RestrictsProtos$Category$Builder;

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
    .line 1004
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 959
    invoke-virtual {p0}, Lcom/google/goggles/RestrictsProtos$Category;->getSerializedSize()I

    .line 960
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_15

    .line 961
    iget-object v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->domain_:Lcom/google/goggles/RestrictsProtos$Category$Domain;

    invoke-virtual {v0}, Lcom/google/goggles/RestrictsProtos$Category$Domain;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 963
    :cond_15
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_22

    .line 964
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Category;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 966
    :cond_22
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_30

    .line 967
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/goggles/RestrictsProtos$Category;->domainSpecificId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 969
    :cond_30
    iget v0, p0, Lcom/google/goggles/RestrictsProtos$Category;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_3d

    .line 970
    invoke-direct {p0}, Lcom/google/goggles/RestrictsProtos$Category;->getDisplayNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 972
    :cond_3d
    return-void
.end method
