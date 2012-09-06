.class public final Lcom/google/goggles/GogglesProtos$ImageRotation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesProtos$ImageRotationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageRotation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;,
        Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;
    }
.end annotation


# static fields
.field public static final IMAGE_OFFSET_FROM_RIGHT_SIDE_UP_FIELD_NUMBER:I = 0x2

.field public static final IMAGE_ROTATION_FIELD_NUMBER:I = 0x132038f

.field public static final OFFSET_ALREADY_APPLIED_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/google/goggles/GogglesProtos$ImageRotation;

.field public static final imageRotation:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<",
            "Lcom/google/goggles/GogglesProtos$Image;",
            "Lcom/google/goggles/GogglesProtos$ImageRotation;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private offsetAlreadyApplied_:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 2294
    new-instance v0, Lcom/google/goggles/GogglesProtos$ImageRotation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/goggles/GogglesProtos$ImageRotation;-><init>(Z)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation;->defaultInstance:Lcom/google/goggles/GogglesProtos$ImageRotation;

    .line 2295
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation;->defaultInstance:Lcom/google/goggles/GogglesProtos$ImageRotation;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation;->initFields()V

    .line 2303
    invoke-static {}, Lcom/google/goggles/GogglesProtos$Image;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$Image;

    move-result-object v0

    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v1

    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x132038f

    sget-object v5, Lcom/google/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-static/range {v0 .. v5}, Lcom/google/protobuf/GeneratedMessageLite;->newSingularGeneratedExtension(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object v0

    sput-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation;->imageRotation:Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-void
.end method

.method private constructor <init>(Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1923
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2008
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->memoizedIsInitialized:B

    .line 2028
    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->memoizedSerializedSize:I

    .line 1924
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;Lcom/google/goggles/GogglesProtos$1;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1918
    invoke-direct {p0, p1}, Lcom/google/goggles/GogglesProtos$ImageRotation;-><init>(Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 1925
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2008
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->memoizedIsInitialized:B

    .line 2028
    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->memoizedSerializedSize:I

    .line 1925
    return-void
.end method

.method static synthetic access$3002(Lcom/google/goggles/GogglesProtos$ImageRotation;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1918
    iput-boolean p1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->offsetAlreadyApplied_:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/google/goggles/GogglesProtos$ImageRotation;Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;)Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1918
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/google/goggles/GogglesProtos$ImageRotation;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1918
    iput p1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 1

    .prologue
    .line 1929
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation;->defaultInstance:Lcom/google/goggles/GogglesProtos$ImageRotation;

    return-object v0
.end method

.method private initFields()V
    .registers 2

    .prologue
    .line 2005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->offsetAlreadyApplied_:Z

    .line 2006
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->ZERO_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    .line 2007
    return-void
.end method

.method public static newBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    .registers 1

    .prologue
    .line 2120
    #calls: Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->create()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->access$2800()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/google/goggles/GogglesProtos$ImageRotation;)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    .registers 2
    .parameter

    .prologue
    .line 2123
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$ImageRotation;)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2089
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    .line 2090
    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2091
    #calls: Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageRotation;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->access$2700(Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;)Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    .line 2093
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2100
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    .line 2101
    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2102
    #calls: Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageRotation;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->access$2700(Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;)Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    .line 2104
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2056
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageRotation;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->access$2700(Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;)Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2062
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageRotation;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->access$2700(Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;)Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2110
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageRotation;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->access$2700(Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;)Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2116
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    #calls: Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageRotation;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->access$2700(Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;)Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2078
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageRotation;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->access$2700(Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;)Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2084
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageRotation;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->access$2700(Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;)Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2067
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageRotation;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->access$2700(Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;)Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2073
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    #calls: Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageRotation;
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;->access$2700(Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;)Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$ImageRotation;
    .registers 2

    .prologue
    .line 1933
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation;->defaultInstance:Lcom/google/goggles/GogglesProtos$ImageRotation;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$ImageRotation;

    move-result-object v0

    return-object v0
.end method

.method public getImageOffsetFromRightSideUp()Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;
    .registers 2

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    return-object v0
.end method

.method public getOffsetAlreadyApplied()Z
    .registers 2

    .prologue
    .line 1991
    iget-boolean v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->offsetAlreadyApplied_:Z

    return v0
.end method

.method public getSerializedSize()I
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2030
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->memoizedSerializedSize:I

    .line 2031
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 2043
    :goto_7
    return v0

    .line 2033
    :cond_8
    const/4 v0, 0x0

    .line 2034
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_16

    .line 2035
    iget-boolean v1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->offsetAlreadyApplied_:Z

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2038
    :cond_16
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_27

    .line 2039
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    invoke-virtual {v1}, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->getNumber()I

    move-result v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2042
    :cond_27
    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->memoizedSerializedSize:I

    goto :goto_7
.end method

.method public hasImageOffsetFromRightSideUp()Z
    .registers 3

    .prologue
    .line 1998
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->bitField0_:I

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

.method public hasOffsetAlreadyApplied()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1988
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->bitField0_:I

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

    .line 2010
    iget-byte v1, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->memoizedIsInitialized:B

    .line 2011
    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_9

    .line 2014
    :goto_8
    return v0

    .line 2011
    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    .line 2013
    :cond_b
    iput-byte v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->memoizedIsInitialized:B

    goto :goto_8
.end method

.method public newBuilderForType()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    .registers 2

    .prologue
    .line 2121
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageRotation;->newBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation;->newBuilderForType()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;
    .registers 2

    .prologue
    .line 2125
    invoke-static {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation;->newBuilder(Lcom/google/goggles/GogglesProtos$ImageRotation;)Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 1918
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation;->toBuilder()Lcom/google/goggles/GogglesProtos$ImageRotation$Builder;

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
    .line 2050
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
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2019
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageRotation;->getSerializedSize()I

    .line 2020
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    .line 2021
    iget-boolean v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->offsetAlreadyApplied_:Z

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2023
    :cond_10
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1f

    .line 2024
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2026
    :cond_1f
    return-void
.end method
