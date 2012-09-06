.class public final Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AnnotationResultProtos.java"

# interfaces
.implements Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;",
        ">;",
        "Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformationOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private placeReference_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 928
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1024
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->placeReference_:Ljava/lang/Object;

    .line 929
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->maybeForceBuilderInitialization()V

    .line 930
    return-void
.end method

.method static synthetic access$800(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 923
    invoke-direct {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;
    .registers 1

    .prologue
    .line 923
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 963
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    .line 964
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 965
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 968
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;
    .registers 1

    .prologue
    .line 935
    new-instance v0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    invoke-direct {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 933
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 3

    .prologue
    .line 954
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    .line 955
    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 956
    invoke-static {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 958
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->build()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 972
    new-instance v2, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;-><init>(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;Lcom/google/goggles/AnnotationResultProtos$1;)V

    .line 973
    iget v3, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->bitField0_:I

    .line 974
    const/4 v1, 0x0

    .line 975
    and-int/lit8 v3, v3, 0x1

    if-ne v3, v0, :cond_17

    .line 978
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->placeReference_:Ljava/lang/Object;

    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->placeReference_:Ljava/lang/Object;
    invoke-static {v2, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->access$1102(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    #setter for: Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->access$1202(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;I)I

    .line 980
    return-object v2

    :cond_17
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;
    .registers 2

    .prologue
    .line 939
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 940
    const-string v0, ""

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->placeReference_:Ljava/lang/Object;

    .line 941
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->bitField0_:I

    .line 942
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->clear()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearPlaceReference()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;
    .registers 2

    .prologue
    .line 1048
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->bitField0_:I

    .line 1049
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->getPlaceReference()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->placeReference_:Ljava/lang/Object;

    .line 1051
    return-object p0
.end method

.method public clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;
    .registers 3

    .prologue
    .line 946
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->create()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->buildPartial()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

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
    .line 923
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->clone()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;
    .registers 2

    .prologue
    .line 950
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->getDefaultInstanceForType()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceReference()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->placeReference_:Ljava/lang/Object;

    .line 1030
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1031
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1032
    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->placeReference_:Ljava/lang/Object;

    .line 1035
    :goto_e
    return-object v0

    :cond_f
    check-cast v0, Ljava/lang/String;

    goto :goto_e
.end method

.method public hasPlaceReference()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1026
    iget v1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 992
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 984
    invoke-static {}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->getDefaultInstance()Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 988
    :cond_6
    :goto_6
    return-object p0

    .line 985
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->hasPlaceReference()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 986
    invoke-virtual {p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;->getPlaceReference()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->setPlaceReference(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1001
    sparse-switch v0, :sswitch_data_1c

    .line 1006
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1008
    :sswitch_d
    return-object p0

    .line 1013
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->bitField0_:I

    .line 1014
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->placeReference_:Ljava/lang/Object;

    goto :goto_0

    .line 1001
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
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
    .line 923
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 923
    check-cast p1, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;

    invoke-virtual {p0, p1}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeFrom(Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

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
    .line 923
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPlaceReference(Ljava/lang/String;)Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1039
    if-nez p1, :cond_8

    .line 1040
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1042
    :cond_8
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->bitField0_:I

    .line 1043
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->placeReference_:Ljava/lang/Object;

    .line 1045
    return-object p0
.end method

.method setPlaceReference(Lcom/google/protobuf/ByteString;)V
    .registers 3
    .parameter

    .prologue
    .line 1054
    iget v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->bitField0_:I

    .line 1055
    iput-object p1, p0, Lcom/google/goggles/AnnotationResultProtos$AnnotationResult$PlaceInformation$Builder;->placeReference_:Ljava/lang/Object;

    .line 1057
    return-void
.end method
