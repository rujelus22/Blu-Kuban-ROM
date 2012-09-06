.class public final Lcom/google/goggles/GogglesProtos$ImageData$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/goggles/GogglesProtos$ImageDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos$ImageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/GogglesProtos$ImageData;",
        "Lcom/google/goggles/GogglesProtos$ImageData$Builder;",
        ">;",
        "Lcom/google/goggles/GogglesProtos$ImageDataOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

.field private encodedImage_:Lcom/google/protobuf/ByteString;

.field private height_:I

.field private imageEncoding_:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

.field private imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

.field private offsetAlreadyApplied_:Z

.field private quality_:I

.field private width_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 868
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1080
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->JPEG:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->imageEncoding_:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    .line 1125
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->encodedImage_:Lcom/google/protobuf/ByteString;

    .line 1191
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;->ZERO_DEGREES:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    .line 1236
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    .line 869
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->maybeForceBuilderInitialization()V

    .line 870
    return-void
.end method

.method static synthetic access$700(Lcom/google/goggles/GogglesProtos$ImageData$Builder;)Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 863
    invoke-direct {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildParsed()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 1

    .prologue
    .line 863
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->create()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 917
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    .line 918
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$ImageData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 919
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 922
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 1

    .prologue
    .line 875
    new-instance v0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 873
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 3

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    .line 909
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$ImageData;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 910
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 912
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->build()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 926
    new-instance v2, Lcom/google/goggles/GogglesProtos$ImageData;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/GogglesProtos$ImageData;-><init>(Lcom/google/goggles/GogglesProtos$ImageData$Builder;Lcom/google/goggles/GogglesProtos$1;)V

    .line 927
    iget v3, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 928
    const/4 v1, 0x0

    .line 929
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_70

    .line 932
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->imageEncoding_:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    #setter for: Lcom/google/goggles/GogglesProtos$ImageData;->imageEncoding_:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$ImageData;->access$1002(Lcom/google/goggles/GogglesProtos$ImageData;Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;)Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    .line 933
    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 934
    or-int/lit8 v0, v0, 0x2

    .line 936
    :cond_1a
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->quality_:I

    #setter for: Lcom/google/goggles/GogglesProtos$ImageData;->quality_:I
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$ImageData;->access$1102(Lcom/google/goggles/GogglesProtos$ImageData;I)I

    .line 937
    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_26

    .line 938
    or-int/lit8 v0, v0, 0x4

    .line 940
    :cond_26
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->encodedImage_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/google/goggles/GogglesProtos$ImageData;->encodedImage_:Lcom/google/protobuf/ByteString;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$ImageData;->access$1202(Lcom/google/goggles/GogglesProtos$ImageData;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 941
    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_33

    .line 942
    or-int/lit8 v0, v0, 0x8

    .line 944
    :cond_33
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->width_:I

    #setter for: Lcom/google/goggles/GogglesProtos$ImageData;->width_:I
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$ImageData;->access$1302(Lcom/google/goggles/GogglesProtos$ImageData;I)I

    .line 945
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_40

    .line 946
    or-int/lit8 v0, v0, 0x10

    .line 948
    :cond_40
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->height_:I

    #setter for: Lcom/google/goggles/GogglesProtos$ImageData;->height_:I
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$ImageData;->access$1402(Lcom/google/goggles/GogglesProtos$ImageData;I)I

    .line 949
    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4d

    .line 950
    or-int/lit8 v0, v0, 0x20

    .line 952
    :cond_4d
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    #setter for: Lcom/google/goggles/GogglesProtos$ImageData;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$ImageData;->access$1502(Lcom/google/goggles/GogglesProtos$ImageData;Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;)Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    .line 953
    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5a

    .line 954
    or-int/lit8 v0, v0, 0x40

    .line 956
    :cond_5a
    iget-boolean v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->offsetAlreadyApplied_:Z

    #setter for: Lcom/google/goggles/GogglesProtos$ImageData;->offsetAlreadyApplied_:Z
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$ImageData;->access$1602(Lcom/google/goggles/GogglesProtos$ImageData;Z)Z

    .line 957
    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_67

    .line 958
    or-int/lit16 v0, v0, 0x80

    .line 960
    :cond_67
    iget-object v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    #setter for: Lcom/google/goggles/GogglesProtos$ImageData;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;
    invoke-static {v2, v1}, Lcom/google/goggles/GogglesProtos$ImageData;->access$1702(Lcom/google/goggles/GogglesProtos$ImageData;Lcom/google/goggles/GogglesProtos$CropRegion;)Lcom/google/goggles/GogglesProtos$CropRegion;

    .line 961
    #setter for: Lcom/google/goggles/GogglesProtos$ImageData;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/GogglesProtos$ImageData;->access$1802(Lcom/google/goggles/GogglesProtos$ImageData;I)I

    .line 962
    return-object v2

    :cond_70
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 879
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 880
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->JPEG:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->imageEncoding_:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    .line 881
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 882
    iput v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->quality_:I

    .line 883
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 884
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->encodedImage_:Lcom/google/protobuf/ByteString;

    .line 885
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 886
    iput v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->width_:I

    .line 887
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 888
    iput v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->height_:I

    .line 889
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 890
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;->ZERO_DEGREES:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    .line 891
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 892
    iput-boolean v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->offsetAlreadyApplied_:Z

    .line 893
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 894
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    .line 895
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 896
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->clear()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->clear()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCropRegion()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 2

    .prologue
    .line 1272
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    .line 1274
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1275
    return-object p0
.end method

.method public clearEncodedImage()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 2

    .prologue
    .line 1142
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1143
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$ImageData;->getEncodedImage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->encodedImage_:Lcom/google/protobuf/ByteString;

    .line 1145
    return-object p0
.end method

.method public clearHeight()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 2

    .prologue
    .line 1184
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1185
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->height_:I

    .line 1187
    return-object p0
.end method

.method public clearImageEncoding()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 2

    .prologue
    .line 1097
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1098
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->JPEG:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->imageEncoding_:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    .line 1100
    return-object p0
.end method

.method public clearImageOffsetFromRightSideUp()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1208
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1209
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;->ZERO_DEGREES:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    .line 1211
    return-object p0
.end method

.method public clearOffsetAlreadyApplied()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1229
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->offsetAlreadyApplied_:Z

    .line 1232
    return-object p0
.end method

.method public clearQuality()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 2

    .prologue
    .line 1118
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1119
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->quality_:I

    .line 1121
    return-object p0
.end method

.method public clearWidth()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 2

    .prologue
    .line 1163
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1164
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->width_:I

    .line 1166
    return-object p0
.end method

.method public clone()Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 3

    .prologue
    .line 900
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->create()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$ImageData;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->clone()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->clone()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->clone()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

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
    .line 863
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->clone()Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCropRegion()Lcom/google/goggles/GogglesProtos$CropRegion;
    .registers 2

    .prologue
    .line 1241
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$ImageData;
    .registers 2

    .prologue
    .line 904
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->getDefaultInstanceForType()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    return-object v0
.end method

.method public getEncodedImage()Lcom/google/protobuf/ByteString;
    .registers 2

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->encodedImage_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 1175
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->height_:I

    return v0
.end method

.method public getImageEncoding()Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;
    .registers 2

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->imageEncoding_:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    return-object v0
.end method

.method public getImageOffsetFromRightSideUp()Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1196
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    return-object v0
.end method

.method public getOffsetAlreadyApplied()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1220
    iget-boolean v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->offsetAlreadyApplied_:Z

    return v0
.end method

.method public getQuality()I
    .registers 2

    .prologue
    .line 1109
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->quality_:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 1154
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->width_:I

    return v0
.end method

.method public hasCropRegion()Z
    .registers 3

    .prologue
    .line 1238
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public hasEncodedImage()Z
    .registers 3

    .prologue
    .line 1127
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

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

.method public hasHeight()Z
    .registers 3

    .prologue
    .line 1172
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

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

.method public hasImageEncoding()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1082
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasImageOffsetFromRightSideUp()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1193
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

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

.method public hasOffsetAlreadyApplied()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1217
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

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

.method public hasQuality()Z
    .registers 3

    .prologue
    .line 1106
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

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

.method public hasWidth()Z
    .registers 3

    .prologue
    .line 1151
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

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

.method public final isInitialized()Z
    .registers 2

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->hasCropRegion()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 996
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->getCropRegion()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$CropRegion;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 998
    const/4 v0, 0x0

    .line 1001
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeCropRegion(Lcom/google/goggles/GogglesProtos$CropRegion;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 4
    .parameter

    .prologue
    .line 1260
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v1

    if-eq v0, v1, :cond_27

    .line 1262
    iget-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder(Lcom/google/goggles/GogglesProtos$CropRegion;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$CropRegion;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    .line 1268
    :goto_20
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1269
    return-object p0

    .line 1265
    :cond_27
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    goto :goto_20
.end method

.method public mergeFrom(Lcom/google/goggles/GogglesProtos$ImageData;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 966
    invoke-static {}, Lcom/google/goggles/GogglesProtos$ImageData;->getDefaultInstance()Lcom/google/goggles/GogglesProtos$ImageData;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 991
    :cond_6
    :goto_6
    return-object p0

    .line 967
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->hasImageEncoding()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 968
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->getImageEncoding()Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->setImageEncoding(Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    .line 970
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->hasQuality()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 971
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->getQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->setQuality(I)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    .line 973
    :cond_21
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->hasEncodedImage()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 974
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->getEncodedImage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->setEncodedImage(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    .line 976
    :cond_2e
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->hasWidth()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 977
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->setWidth(I)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    .line 979
    :cond_3b
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->hasHeight()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 980
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->setHeight(I)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    .line 982
    :cond_48
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->hasImageOffsetFromRightSideUp()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 983
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->getImageOffsetFromRightSideUp()Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->setImageOffsetFromRightSideUp(Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    .line 985
    :cond_55
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->hasOffsetAlreadyApplied()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 986
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->getOffsetAlreadyApplied()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->setOffsetAlreadyApplied(Z)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    .line 988
    :cond_62
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->hasCropRegion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 989
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$ImageData;->getCropRegion()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeCropRegion(Lcom/google/goggles/GogglesProtos$CropRegion;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1009
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1010
    sparse-switch v0, :sswitch_data_92

    .line 1015
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1017
    :sswitch_d
    return-object p0

    .line 1022
    :sswitch_e
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1023
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->encodedImage_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 1027
    :sswitch_1b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1028
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;->valueOf(I)Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    move-result-object v0

    .line 1029
    if-eqz v0, :cond_0

    .line 1030
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1031
    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->imageEncoding_:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    goto :goto_0

    .line 1036
    :sswitch_2e
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1037
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->quality_:I

    goto :goto_0

    .line 1041
    :sswitch_3b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1042
    invoke-static {v0}, Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;->valueOf(I)Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    move-result-object v0

    .line 1043
    if-eqz v0, :cond_0

    .line 1044
    iget v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1045
    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    goto :goto_0

    .line 1050
    :sswitch_4e
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1051
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->offsetAlreadyApplied_:Z

    goto :goto_0

    .line 1055
    :sswitch_5b
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1056
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->width_:I

    goto :goto_0

    .line 1060
    :sswitch_68
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1061
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->height_:I

    goto :goto_0

    .line 1065
    :sswitch_75
    invoke-static {}, Lcom/google/goggles/GogglesProtos$CropRegion;->newBuilder()Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    move-result-object v0

    .line 1066
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->hasCropRegion()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 1067
    invoke-virtual {p0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->getCropRegion()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$CropRegion;)Lcom/google/goggles/GogglesProtos$CropRegion$Builder;

    .line 1069
    :cond_86
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1070
    invoke-virtual {v0}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->buildPartial()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->setCropRegion(Lcom/google/goggles/GogglesProtos$CropRegion;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    goto/16 :goto_0

    .line 1010
    :sswitch_data_92
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x10 -> :sswitch_1b
        0x18 -> :sswitch_2e
        0x20 -> :sswitch_3b
        0x30 -> :sswitch_4e
        0x38 -> :sswitch_5b
        0x40 -> :sswitch_68
        0x4a -> :sswitch_75
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
    .line 863
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 863
    check-cast p1, Lcom/google/goggles/GogglesProtos$ImageData;

    invoke-virtual {p0, p1}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeFrom(Lcom/google/goggles/GogglesProtos$ImageData;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

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
    .line 863
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setCropRegion(Lcom/google/goggles/GogglesProtos$CropRegion$Builder;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1254
    invoke-virtual {p1}, Lcom/google/goggles/GogglesProtos$CropRegion$Builder;->build()Lcom/google/goggles/GogglesProtos$CropRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    .line 1256
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1257
    return-object p0
.end method

.method public setCropRegion(Lcom/google/goggles/GogglesProtos$CropRegion;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1244
    if-nez p1, :cond_8

    .line 1245
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1247
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->cropRegion_:Lcom/google/goggles/GogglesProtos$CropRegion;

    .line 1249
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1250
    return-object p0
.end method

.method public setEncodedImage(Lcom/google/protobuf/ByteString;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1133
    if-nez p1, :cond_8

    .line 1134
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1136
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1137
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->encodedImage_:Lcom/google/protobuf/ByteString;

    .line 1139
    return-object p0
.end method

.method public setHeight(I)Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1178
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1179
    iput p1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->height_:I

    .line 1181
    return-object p0
.end method

.method public setImageEncoding(Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1088
    if-nez p1, :cond_8

    .line 1089
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1091
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1092
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->imageEncoding_:Lcom/google/goggles/GogglesProtos$ImageData$ImageEncoding;

    .line 1094
    return-object p0
.end method

.method public setImageOffsetFromRightSideUp(Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;)Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1199
    if-nez p1, :cond_8

    .line 1200
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1202
    :cond_8
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1203
    iput-object p1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->imageOffsetFromRightSideUp_:Lcom/google/goggles/GogglesProtos$ImageData$CWOffsetFromRightSideUp;

    .line 1205
    return-object p0
.end method

.method public setOffsetAlreadyApplied(Z)Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 3
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1223
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1224
    iput-boolean p1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->offsetAlreadyApplied_:Z

    .line 1226
    return-object p0
.end method

.method public setQuality(I)Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1112
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1113
    iput p1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->quality_:I

    .line 1115
    return-object p0
.end method

.method public setWidth(I)Lcom/google/goggles/GogglesProtos$ImageData$Builder;
    .registers 3
    .parameter

    .prologue
    .line 1157
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->bitField0_:I

    .line 1158
    iput p1, p0, Lcom/google/goggles/GogglesProtos$ImageData$Builder;->width_:I

    .line 1160
    return-object p0
.end method
