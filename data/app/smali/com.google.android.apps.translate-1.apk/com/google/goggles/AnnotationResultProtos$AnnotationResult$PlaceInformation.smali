.class public final Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AnnotationResultProtos.java"

# interfaces
.implements Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AnnotationResultProtos$AnnotationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaceInformation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;
    }
.end annotation


# static fields
.field public static final PLACE_REFERENCE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private placeReference_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 1063
    new-instance v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    .line 1064
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    invoke-direct {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->initFields()V

    .line 1065
    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 762
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 811
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->memoizedIsInitialized:B

    .line 828
    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->memoizedSerializedSize:I

    .line 763
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;Lcom/google/goggles/AnnotationResultProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 757
    invoke-direct {p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;-><init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 764
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 811
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->memoizedIsInitialized:B

    .line 828
    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->memoizedSerializedSize:I

    .line 764
    return-void
.end method

.method static synthetic access$1102(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 757
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->placeReference_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 757
    iput p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 1

    .prologue
    .line 768
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    return-object v0
.end method

.method private getPlaceReferenceBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    .prologue
    .line 797
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->placeReference_:Ljava/lang/Object;

    .line 798
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 799
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 801
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->placeReference_:Ljava/lang/Object;

    .line 804
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_e
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 809
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->placeReference_:Ljava/lang/Object;

    .line 810
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;
    .registers 1

    .prologue
    .line 916
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->access$900()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;
    .registers 2
    .parameter

    .prologue
    .line 919
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 885
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    .line 886
    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 887
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->access$800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    .line 889
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 896
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    .line 897
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 898
    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->access$800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    .line 900
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 852
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->access$800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 858
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->access$800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 906
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->access$800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 912
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->access$800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->access$800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 880
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->access$800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 863
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->access$800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 869
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    #calls: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->access$800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 2

    .prologue
    .line 772
    sget-object v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->defaultInstance:Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceReference()Ljava/lang/String;
    .registers 3

    .prologue
    .line 783
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->placeReference_:Ljava/lang/Object;

    .line 784
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 785
    check-cast v0, Ljava/lang/String;

    .line 793
    :goto_8
    return-object v0

    .line 787
    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 789
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 790
    invoke-static {v0}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 791
    iput-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->placeReference_:Ljava/lang/Object;

    :cond_17
    move-object v0, v1

    .line 793
    goto :goto_8
.end method

.method public getSerializedSize()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 830
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->memoizedSerializedSize:I

    .line 831
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 839
    :goto_6
    return v0

    .line 833
    :cond_7
    const/4 v0, 0x0

    .line 834
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_17

    .line 835
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->getPlaceReferenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 838
    :cond_17
    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->memoizedSerializedSize:I

    goto :goto_6
.end method

.method public hasPlaceReference()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 780
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 813
    iget-byte v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->memoizedIsInitialized:B

    .line 814
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 817
    :goto_8
    return v0

    .line 814
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 816
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;
    .registers 2

    .prologue
    .line 917
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilderForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;
    .registers 2

    .prologue
    .line 921
    invoke-static {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->newBuilder(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->toBuilder()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

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
    .line 846
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 822
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->getSerializedSize()I

    .line 823
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_11

    .line 824
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->getPlaceReferenceBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 826
    :cond_11
    return-void
.end method
