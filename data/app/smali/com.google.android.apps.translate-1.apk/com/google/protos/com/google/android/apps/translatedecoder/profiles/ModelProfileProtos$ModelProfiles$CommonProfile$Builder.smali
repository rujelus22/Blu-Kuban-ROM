.class public final Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ModelProfileProtos.java"

# interfaces
.implements Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfileOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;",
        "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;",
        ">;",
        "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfileOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private configFile_:Ljava/lang/Object;

.field private preprocFile_:Ljava/lang/Object;

.field private version_:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 552
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 605
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->preprocFile_:Ljava/lang/Object;

    .line 442
    invoke-direct {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->maybeForceBuilderInitialization()V

    .line 443
    return-void
.end method

.method static synthetic access$200()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    .registers 1

    .prologue
    .line 436
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->create()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    .registers 1

    .prologue
    .line 448
    new-instance v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    invoke-direct {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .registers 1

    .prologue
    .line 446
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->build()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;
    .registers 3

    .prologue
    .line 471
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->buildPartial()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-result-object v0

    .line 472
    .local v0, result:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;
    invoke-virtual {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_f

    .line 473
    invoke-static {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    throw v1

    .line 475
    :cond_f
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->buildPartial()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;
    .registers 6

    .prologue
    .line 479
    new-instance v1, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$1;)V

    .line 480
    .local v1, result:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    .line 481
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 482
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 483
    or-int/lit8 v2, v2, 0x1

    .line 485
    :cond_10
    iget-object v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->configFile_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->configFile_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->access$402(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1c

    .line 487
    or-int/lit8 v2, v2, 0x2

    .line 489
    :cond_1c
    iget-object v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->preprocFile_:Ljava/lang/Object;

    #setter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->preprocFile_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->access$502(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_28

    .line 491
    or-int/lit8 v2, v2, 0x4

    .line 493
    :cond_28
    iget v3, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->version_:I

    #setter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->version_:I
    invoke-static {v1, v3}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->access$602(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;I)I

    .line 494
    #setter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->bitField0_:I
    invoke-static {v1, v2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->access$702(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;I)I

    .line 495
    return-object v1
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->clear()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->clear()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    .registers 2

    .prologue
    .line 452
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 453
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 454
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    .line 455
    const-string v0, ""

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->preprocFile_:Ljava/lang/Object;

    .line 456
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    .line 457
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->version_:I

    .line 458
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    .line 459
    return-object p0
.end method

.method public clearConfigFile()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    .registers 2

    .prologue
    .line 588
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    .line 589
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->getDefaultInstance()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 591
    return-object p0
.end method

.method public clearPreprocFile()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    .registers 2

    .prologue
    .line 641
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    .line 642
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->getDefaultInstance()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->getPreprocFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->preprocFile_:Ljava/lang/Object;

    .line 644
    return-object p0
.end method

.method public clearVersion()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    .registers 2

    .prologue
    .line 672
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    .line 673
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->version_:I

    .line 675
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->clone()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->clone()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->clone()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    .registers 3

    .prologue
    .line 463
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->create()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->buildPartial()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->mergeFrom(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

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
    .line 436
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->clone()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getConfigFile()Ljava/lang/String;
    .registers 4

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 558
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 559
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 563
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getConfigFileBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 568
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 569
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 570
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 572
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 575
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .registers 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->getDefaultInstanceForType()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->getDefaultInstanceForType()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;
    .registers 2

    .prologue
    .line 467
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->getDefaultInstance()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-result-object v0

    return-object v0
.end method

.method public getPreprocFile()Ljava/lang/String;
    .registers 4

    .prologue
    .line 610
    iget-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->preprocFile_:Ljava/lang/Object;

    .line 611
    .local v0, ref:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_f

    .line 612
    check-cast v0, Lcom/google/protobuf/ByteString;

    .end local v0           #ref:Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, s:Ljava/lang/String;
    iput-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->preprocFile_:Ljava/lang/Object;

    .line 616
    .end local v1           #s:Ljava/lang/String;
    :goto_e
    return-object v1

    .restart local v0       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v0, Ljava/lang/String;

    .end local v0           #ref:Ljava/lang/Object;
    move-object v1, v0

    goto :goto_e
.end method

.method public getPreprocFileBytes()Lcom/google/protobuf/ByteString;
    .registers 4

    .prologue
    .line 621
    iget-object v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->preprocFile_:Ljava/lang/Object;

    .line 622
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_f

    .line 623
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 625
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->preprocFile_:Ljava/lang/Object;

    .line 628
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_e
    return-object v0

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_f
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v0, v1

    goto :goto_e
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 663
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->version_:I

    return v0
.end method

.method public hasConfigFile()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 554
    iget v1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPreprocFile()Z
    .registers 3

    .prologue
    .line 607
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

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

.method public hasVersion()Z
    .registers 3

    .prologue
    .line 660
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

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
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 517
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->hasConfigFile()Z

    move-result v1

    if-nez v1, :cond_8

    .line 529
    :cond_7
    :goto_7
    return v0

    .line 521
    :cond_8
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->hasPreprocFile()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 525
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->hasVersion()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 529
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .registers 3
    .parameter "x0"

    .prologue
    .line 436
    check-cast p1, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->mergeFrom(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    .registers 7
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 536
    const/4 v2, 0x0

    .line 538
    .local v2, parsedMessage:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;
    :try_start_1
    sget-object v3, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v3, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-object v2, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_1b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_b} :catch_11

    .line 543
    if-eqz v2, :cond_10

    .line 544
    invoke-virtual {p0, v2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->mergeFrom(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    .line 547
    :cond_10
    return-object p0

    .line 539
    :catch_11
    move-exception v1

    .line 540
    .local v1, e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :try_start_12
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-object v2, v0

    .line 541
    throw v1
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1b

    .line 543
    .end local v1           #e:Lcom/google/protobuf/InvalidProtocolBufferException;
    :catchall_1b
    move-exception v3

    if-eqz v2, :cond_21

    .line 544
    invoke-virtual {p0, v2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->mergeFrom(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    :cond_21
    throw v3
.end method

.method public mergeFrom(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    .registers 3
    .parameter "other"

    .prologue
    .line 499
    invoke-static {}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->getDefaultInstance()Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    move-result-object v0

    if-ne p1, v0, :cond_7

    .line 513
    :cond_6
    :goto_6
    return-object p0

    .line 500
    :cond_7
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->hasConfigFile()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 501
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    .line 502
    #getter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->configFile_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->access$400(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 505
    :cond_19
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->hasPreprocFile()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 506
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    .line 507
    #getter for: Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->preprocFile_:Ljava/lang/Object;
    invoke-static {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->access$500(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->preprocFile_:Ljava/lang/Object;

    .line 510
    :cond_2b
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 511
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->setVersion(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;

    goto :goto_6
.end method

.method public setConfigFile(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 579
    if-nez p1, :cond_8

    .line 580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 582
    :cond_8
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    .line 583
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 585
    return-object p0
.end method

.method public setConfigFileBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 595
    if-nez p1, :cond_8

    .line 596
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 598
    :cond_8
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    .line 599
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->configFile_:Ljava/lang/Object;

    .line 601
    return-object p0
.end method

.method public setPreprocFile(Ljava/lang/String;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 632
    if-nez p1, :cond_8

    .line 633
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 635
    :cond_8
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    .line 636
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->preprocFile_:Ljava/lang/Object;

    .line 638
    return-object p0
.end method

.method public setPreprocFileBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 648
    if-nez p1, :cond_8

    .line 649
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 651
    :cond_8
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    .line 652
    iput-object p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->preprocFile_:Ljava/lang/Object;

    .line 654
    return-object p0
.end method

.method public setVersion(I)Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;
    .registers 3
    .parameter "value"

    .prologue
    .line 666
    iget v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->bitField0_:I

    .line 667
    iput p1, p0, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile$Builder;->version_:I

    .line 669
    return-object p0
.end method
