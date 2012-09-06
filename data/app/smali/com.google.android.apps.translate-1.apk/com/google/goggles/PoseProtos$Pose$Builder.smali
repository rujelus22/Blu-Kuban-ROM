.class public final Lcom/google/goggles/PoseProtos$Pose$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "PoseProtos.java"

# interfaces
.implements Lcom/google/goggles/PoseProtos$PoseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/PoseProtos$Pose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/goggles/PoseProtos$Pose;",
        "Lcom/google/goggles/PoseProtos$Pose$Builder;",
        ">;",
        "Lcom/google/goggles/PoseProtos$PoseOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private location_:Lcom/google/goggles/LocationProtos$Location;

.field private orientation_:Lcom/google/goggles/OrientationProtos$Orientation;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 319
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->getDefaultInstance()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->location_:Lcom/google/goggles/LocationProtos$Location;

    .line 362
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->getDefaultInstance()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    .line 196
    invoke-direct {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->maybeForceBuilderInitialization()V

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/google/goggles/PoseProtos$Pose$Builder;)Lcom/google/goggles/PoseProtos$Pose;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->buildParsed()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 1

    .prologue
    .line 190
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose$Builder;->create()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/google/goggles/PoseProtos$Pose;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->buildPartial()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    .line 233
    invoke-virtual {v0}, Lcom/google/goggles/PoseProtos$Pose;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_13

    .line 234
    invoke-static {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 237
    :cond_13
    return-object v0
.end method

.method private static create()Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 1

    .prologue
    .line 202
    new-instance v0, Lcom/google/goggles/PoseProtos$Pose$Builder;

    invoke-direct {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 200
    return-void
.end method


# virtual methods
.method public build()Lcom/google/goggles/PoseProtos$Pose;
    .registers 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->buildPartial()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lcom/google/goggles/PoseProtos$Pose;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 225
    invoke-static {v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 227
    :cond_f
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->build()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/goggles/PoseProtos$Pose;
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 241
    new-instance v2, Lcom/google/goggles/PoseProtos$Pose;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/goggles/PoseProtos$Pose;-><init>(Lcom/google/goggles/PoseProtos$Pose$Builder;Lcom/google/goggles/PoseProtos$1;)V

    .line 242
    iget v3, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    .line 243
    const/4 v1, 0x0

    .line 244
    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_23

    .line 247
    :goto_e
    iget-object v1, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->location_:Lcom/google/goggles/LocationProtos$Location;

    #setter for: Lcom/google/goggles/PoseProtos$Pose;->location_:Lcom/google/goggles/LocationProtos$Location;
    invoke-static {v2, v1}, Lcom/google/goggles/PoseProtos$Pose;->access$302(Lcom/google/goggles/PoseProtos$Pose;Lcom/google/goggles/LocationProtos$Location;)Lcom/google/goggles/LocationProtos$Location;

    .line 248
    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1a

    .line 249
    or-int/lit8 v0, v0, 0x2

    .line 251
    :cond_1a
    iget-object v1, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    #setter for: Lcom/google/goggles/PoseProtos$Pose;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;
    invoke-static {v2, v1}, Lcom/google/goggles/PoseProtos$Pose;->access$402(Lcom/google/goggles/PoseProtos$Pose;Lcom/google/goggles/OrientationProtos$Orientation;)Lcom/google/goggles/OrientationProtos$Orientation;

    .line 252
    #setter for: Lcom/google/goggles/PoseProtos$Pose;->bitField0_:I
    invoke-static {v2, v0}, Lcom/google/goggles/PoseProtos$Pose;->access$502(Lcom/google/goggles/PoseProtos$Pose;I)I

    .line 253
    return-object v2

    :cond_23
    move v0, v1

    goto :goto_e
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->buildPartial()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 2

    .prologue
    .line 206
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 207
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->getDefaultInstance()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->location_:Lcom/google/goggles/LocationProtos$Location;

    .line 208
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    .line 209
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->getDefaultInstance()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    .line 210
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    .line 211
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->clear()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->clear()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearLocation()Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 2

    .prologue
    .line 355
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->getDefaultInstance()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->location_:Lcom/google/goggles/LocationProtos$Location;

    .line 357
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    .line 358
    return-object p0
.end method

.method public clearOrientation()Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 2

    .prologue
    .line 398
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->getDefaultInstance()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    .line 400
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    .line 401
    return-object p0
.end method

.method public clone()Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 3

    .prologue
    .line 215
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose$Builder;->create()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->buildPartial()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->clone()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->clone()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->clone()Lcom/google/goggles/PoseProtos$Pose$Builder;

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
    .line 190
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->clone()Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/goggles/PoseProtos$Pose;
    .registers 2

    .prologue
    .line 219
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->getDefaultInstance()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->getDefaultInstanceForType()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->getDefaultInstanceForType()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/goggles/LocationProtos$Location;
    .registers 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->location_:Lcom/google/goggles/LocationProtos$Location;

    return-object v0
.end method

.method public getOrientation()Lcom/google/goggles/OrientationProtos$Orientation;
    .registers 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    return-object v0
.end method

.method public hasLocation()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 321
    iget v1, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasOrientation()Z
    .registers 3

    .prologue
    .line 364
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

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
    .registers 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 269
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->getLocation()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/LocationProtos$Location;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_12

    .line 271
    const/4 v0, 0x0

    .line 274
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public mergeFrom(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 3
    .parameter

    .prologue
    .line 257
    invoke-static {}, Lcom/google/goggles/PoseProtos$Pose;->getDefaultInstance()Lcom/google/goggles/PoseProtos$Pose;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 264
    :cond_6
    :goto_6
    return-object p0

    .line 258
    :cond_7
    invoke-virtual {p1}, Lcom/google/goggles/PoseProtos$Pose;->hasLocation()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 259
    invoke-virtual {p1}, Lcom/google/goggles/PoseProtos$Pose;->getLocation()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeLocation(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    .line 261
    :cond_14
    invoke-virtual {p1}, Lcom/google/goggles/PoseProtos$Pose;->hasOrientation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 262
    invoke-virtual {p1}, Lcom/google/goggles/PoseProtos$Pose;->getOrientation()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeOrientation(Lcom/google/goggles/OrientationProtos$Orientation;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    goto :goto_6
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 283
    sparse-switch v0, :sswitch_data_46

    .line 288
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 290
    :sswitch_d
    return-object p0

    .line 295
    :sswitch_e
    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder()Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    .line 296
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->hasOrientation()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 297
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->getOrientation()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeFrom(Lcom/google/goggles/OrientationProtos$Orientation;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    .line 299
    :cond_1f
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 300
    invoke-virtual {v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildPartial()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->setOrientation(Lcom/google/goggles/OrientationProtos$Orientation;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    goto :goto_0

    .line 304
    :sswitch_2a
    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->newBuilder()Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    .line 305
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->hasLocation()Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 306
    invoke-virtual {p0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->getLocation()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeFrom(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/goggles/LocationProtos$Location$Builder;

    .line 308
    :cond_3b
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 309
    invoke-virtual {v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->buildPartial()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/goggles/PoseProtos$Pose$Builder;->setLocation(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    goto :goto_0

    .line 283
    :sswitch_data_46
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_2a
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
    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter

    .prologue
    .line 190
    check-cast p1, Lcom/google/goggles/PoseProtos$Pose;

    invoke-virtual {p0, p1}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom(Lcom/google/goggles/PoseProtos$Pose;)Lcom/google/goggles/PoseProtos$Pose$Builder;

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
    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/google/goggles/PoseProtos$Pose$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/goggles/PoseProtos$Pose$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeLocation(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 4
    .parameter

    .prologue
    .line 343
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->location_:Lcom/google/goggles/LocationProtos$Location;

    invoke-static {}, Lcom/google/goggles/LocationProtos$Location;->getDefaultInstance()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 345
    iget-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->location_:Lcom/google/goggles/LocationProtos$Location;

    invoke-static {v0}, Lcom/google/goggles/LocationProtos$Location;->newBuilder(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/LocationProtos$Location$Builder;->mergeFrom(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/goggles/LocationProtos$Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/LocationProtos$Location$Builder;->buildPartial()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->location_:Lcom/google/goggles/LocationProtos$Location;

    .line 351
    :goto_1f
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    .line 352
    return-object p0

    .line 348
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->location_:Lcom/google/goggles/LocationProtos$Location;

    goto :goto_1f
.end method

.method public mergeOrientation(Lcom/google/goggles/OrientationProtos$Orientation;)Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 4
    .parameter

    .prologue
    .line 386
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    invoke-static {}, Lcom/google/goggles/OrientationProtos$Orientation;->getDefaultInstance()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v1

    if-eq v0, v1, :cond_26

    .line 388
    iget-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    invoke-static {v0}, Lcom/google/goggles/OrientationProtos$Orientation;->newBuilder(Lcom/google/goggles/OrientationProtos$Orientation;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->mergeFrom(Lcom/google/goggles/OrientationProtos$Orientation;)Lcom/google/goggles/OrientationProtos$Orientation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->buildPartial()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    .line 394
    :goto_1f
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    .line 395
    return-object p0

    .line 391
    :cond_26
    iput-object p1, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    goto :goto_1f
.end method

.method public setLocation(Lcom/google/goggles/LocationProtos$Location$Builder;)Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 3
    .parameter

    .prologue
    .line 337
    invoke-virtual {p1}, Lcom/google/goggles/LocationProtos$Location$Builder;->build()Lcom/google/goggles/LocationProtos$Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->location_:Lcom/google/goggles/LocationProtos$Location;

    .line 339
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    .line 340
    return-object p0
.end method

.method public setLocation(Lcom/google/goggles/LocationProtos$Location;)Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 3
    .parameter

    .prologue
    .line 327
    if-nez p1, :cond_8

    .line 328
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 330
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->location_:Lcom/google/goggles/LocationProtos$Location;

    .line 332
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    .line 333
    return-object p0
.end method

.method public setOrientation(Lcom/google/goggles/OrientationProtos$Orientation$Builder;)Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 3
    .parameter

    .prologue
    .line 380
    invoke-virtual {p1}, Lcom/google/goggles/OrientationProtos$Orientation$Builder;->build()Lcom/google/goggles/OrientationProtos$Orientation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    .line 382
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    .line 383
    return-object p0
.end method

.method public setOrientation(Lcom/google/goggles/OrientationProtos$Orientation;)Lcom/google/goggles/PoseProtos$Pose$Builder;
    .registers 3
    .parameter

    .prologue
    .line 370
    if-nez p1, :cond_8

    .line 371
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 373
    :cond_8
    iput-object p1, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->orientation_:Lcom/google/goggles/OrientationProtos$Orientation;

    .line 375
    iget v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/goggles/PoseProtos$Pose$Builder;->bitField0_:I

    .line 376
    return-object p0
.end method
