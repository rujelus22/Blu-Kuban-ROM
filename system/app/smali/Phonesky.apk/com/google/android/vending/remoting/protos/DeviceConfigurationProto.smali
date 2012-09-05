.class public final Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DeviceConfigurationProto.java"


# instance fields
.field private cachedSize:I

.field private deviceClass_:I

.field private glEsVersion_:I

.field private glExtension_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasDeviceClass:Z

.field private hasFiveWayNavigation_:Z

.field private hasGlEsVersion:Z

.field private hasHardKeyboard_:Z

.field private hasHasFiveWayNavigation:Z

.field private hasHasHardKeyboard:Z

.field private hasKeyboard:Z

.field private hasMaxApkDownloadSizeMb:Z

.field private hasNavigation:Z

.field private hasScreenDensity:Z

.field private hasScreenHeight:Z

.field private hasScreenLayout:Z

.field private hasScreenWidth:Z

.field private hasTouchScreen:Z

.field private keyboard_:I

.field private maxApkDownloadSizeMb_:I

.field private nativePlatform_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private navigation_:I

.field private screenDensity_:I

.field private screenHeight_:I

.field private screenLayout_:I

.field private screenWidth_:I

.field private systemAvailableFeature_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private systemSharedLibrary_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private systemSupportedLocale_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private touchScreen_:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 45
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->touchScreen_:I

    .line 62
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->keyboard_:I

    .line 79
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->navigation_:I

    .line 96
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenLayout_:I

    .line 113
    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHardKeyboard_:Z

    .line 130
    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasFiveWayNavigation_:Z

    .line 147
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenDensity_:I

    .line 164
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenWidth_:I

    .line 181
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenHeight_:I

    .line 198
    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glEsVersion_:I

    .line 214
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    .line 247
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    .line 280
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    .line 313
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    .line 346
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    .line 380
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->deviceClass_:I

    .line 397
    const/16 v0, 0x32

    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->maxApkDownloadSizeMb_:I

    .line 500
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->cachedSize:I

    .line 7
    return-void
.end method


# virtual methods
.method public addGlExtension(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 363
    if-nez p1, :cond_8

    .line 364
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 366
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    .line 369
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    return-object p0
.end method

.method public addNativePlatform(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 297
    if-nez p1, :cond_8

    .line 298
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 300
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    .line 303
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    return-object p0
.end method

.method public addSystemAvailableFeature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 264
    if-nez p1, :cond_8

    .line 265
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 267
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    .line 270
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-object p0
.end method

.method public addSystemSharedLibrary(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 231
    if-nez p1, :cond_8

    .line 232
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 234
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    .line 237
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    return-object p0
.end method

.method public addSystemSupportedLocale(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 330
    if-nez p1, :cond_8

    .line 331
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 333
    :cond_8
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    .line 336
    :cond_17
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    return-object p0
.end method

.method public getCachedSize()I
    .registers 2

    .prologue
    .line 502
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->cachedSize:I

    if-gez v0, :cond_7

    .line 504
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSerializedSize()I

    .line 506
    :cond_7
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->cachedSize:I

    return v0
.end method

.method public getDeviceClass()I
    .registers 2

    .prologue
    .line 382
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->deviceClass_:I

    return v0
.end method

.method public getGlEsVersion()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glEsVersion_:I

    return v0
.end method

.method public getGlExtensionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    return-object v0
.end method

.method public getHasFiveWayNavigation()Z
    .registers 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasFiveWayNavigation_:Z

    return v0
.end method

.method public getHasHardKeyboard()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHardKeyboard_:Z

    return v0
.end method

.method public getKeyboard()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->keyboard_:I

    return v0
.end method

.method public getMaxApkDownloadSizeMb()I
    .registers 2

    .prologue
    .line 398
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->maxApkDownloadSizeMb_:I

    return v0
.end method

.method public getNativePlatformList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    return-object v0
.end method

.method public getNavigation()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->navigation_:I

    return v0
.end method

.method public getScreenDensity()I
    .registers 2

    .prologue
    .line 148
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenDensity_:I

    return v0
.end method

.method public getScreenHeight()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenHeight_:I

    return v0
.end method

.method public getScreenLayout()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenLayout_:I

    return v0
.end method

.method public getScreenWidth()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenWidth_:I

    return v0
.end method

.method public getSerializedSize()I
    .registers 7

    .prologue
    .line 510
    const/4 v3, 0x0

    .line 511
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasTouchScreen()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 512
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getTouchScreen()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 515
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasKeyboard()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 516
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getKeyboard()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 519
    :cond_21
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasNavigation()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 520
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getNavigation()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 523
    :cond_31
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenLayout()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 524
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenLayout()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 527
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasHardKeyboard()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 528
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getHasHardKeyboard()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 531
    :cond_51
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 532
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getHasFiveWayNavigation()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 535
    :cond_61
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenDensity()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 536
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenDensity()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 539
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasGlEsVersion()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 540
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getGlEsVersion()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 544
    :cond_82
    const/4 v0, 0x0

    .line 545
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemSharedLibraryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_8b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 546
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_8b

    .line 549
    .end local v1           #element:Ljava/lang/String;
    :cond_9d
    add-int/2addr v3, v0

    .line 550
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemSharedLibraryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 553
    const/4 v0, 0x0

    .line 554
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemAvailableFeatureList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 555
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_b2

    .line 558
    .end local v1           #element:Ljava/lang/String;
    :cond_c4
    add-int/2addr v3, v0

    .line 559
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemAvailableFeatureList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 562
    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getNativePlatformList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_eb

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 564
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_d9

    .line 567
    .end local v1           #element:Ljava/lang/String;
    :cond_eb
    add-int/2addr v3, v0

    .line 568
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getNativePlatformList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 570
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenWidth()Z

    move-result v4

    if-eqz v4, :cond_108

    .line 571
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 574
    :cond_108
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenHeight()Z

    move-result v4

    if-eqz v4, :cond_119

    .line 575
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 579
    :cond_119
    const/4 v0, 0x0

    .line 580
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemSupportedLocaleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_122
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_134

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 581
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_122

    .line 584
    .end local v1           #element:Ljava/lang/String;
    :cond_134
    add-int/2addr v3, v0

    .line 585
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemSupportedLocaleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 588
    const/4 v0, 0x0

    .line 589
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getGlExtensionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_149
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 590
    .restart local v1       #element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_149

    .line 593
    .end local v1           #element:Ljava/lang/String;
    :cond_15b
    add-int/2addr v3, v0

    .line 594
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getGlExtensionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 596
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasDeviceClass()Z

    move-result v4

    if-eqz v4, :cond_178

    .line 597
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getDeviceClass()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 600
    :cond_178
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb()Z

    move-result v4

    if-eqz v4, :cond_189

    .line 601
    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getMaxApkDownloadSizeMb()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 604
    :cond_189
    iput v3, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->cachedSize:I

    .line 605
    return v3
.end method

.method public getSystemAvailableFeatureList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    return-object v0
.end method

.method public getSystemSharedLibraryList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    return-object v0
.end method

.method public getSystemSupportedLocaleList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    return-object v0
.end method

.method public getTouchScreen()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->touchScreen_:I

    return v0
.end method

.method public hasDeviceClass()Z
    .registers 2

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasDeviceClass:Z

    return v0
.end method

.method public hasGlEsVersion()Z
    .registers 2

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasGlEsVersion:Z

    return v0
.end method

.method public hasHasFiveWayNavigation()Z
    .registers 2

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation:Z

    return v0
.end method

.method public hasHasHardKeyboard()Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasHardKeyboard:Z

    return v0
.end method

.method public hasKeyboard()Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasKeyboard:Z

    return v0
.end method

.method public hasMaxApkDownloadSizeMb()Z
    .registers 2

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb:Z

    return v0
.end method

.method public hasNavigation()Z
    .registers 2

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasNavigation:Z

    return v0
.end method

.method public hasScreenDensity()Z
    .registers 2

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenDensity:Z

    return v0
.end method

.method public hasScreenHeight()Z
    .registers 2

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenHeight:Z

    return v0
.end method

.method public hasScreenLayout()Z
    .registers 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenLayout:Z

    return v0
.end method

.method public hasScreenWidth()Z
    .registers 2

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenWidth:Z

    return v0
.end method

.method public hasTouchScreen()Z
    .registers 2

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasTouchScreen:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 4
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 613
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_9a

    .line 617
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 618
    :sswitch_d
    return-object p0

    .line 623
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setTouchScreen(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 627
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setKeyboard(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 631
    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setNavigation(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 635
    :sswitch_26
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setScreenLayout(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 639
    :sswitch_2e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setHasHardKeyboard(Z)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 643
    :sswitch_36
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setHasFiveWayNavigation(Z)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 647
    :sswitch_3e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setScreenDensity(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 651
    :sswitch_46
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setGlEsVersion(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 655
    :sswitch_4e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addSystemSharedLibrary(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 659
    :sswitch_56
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addSystemAvailableFeature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 663
    :sswitch_5e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addNativePlatform(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 667
    :sswitch_66
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setScreenWidth(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 671
    :sswitch_6e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setScreenHeight(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 675
    :sswitch_76
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addSystemSupportedLocale(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto :goto_0

    .line 679
    :sswitch_7e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addGlExtension(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto/16 :goto_0

    .line 683
    :sswitch_87
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setDeviceClass(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto/16 :goto_0

    .line 687
    :sswitch_90
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setMaxApkDownloadSizeMb(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    goto/16 :goto_0

    .line 613
    nop

    :sswitch_data_9a
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_16
        0x18 -> :sswitch_1e
        0x20 -> :sswitch_26
        0x28 -> :sswitch_2e
        0x30 -> :sswitch_36
        0x38 -> :sswitch_3e
        0x40 -> :sswitch_46
        0x4a -> :sswitch_4e
        0x52 -> :sswitch_56
        0x5a -> :sswitch_5e
        0x60 -> :sswitch_66
        0x68 -> :sswitch_6e
        0x72 -> :sswitch_76
        0x7a -> :sswitch_7e
        0x80 -> :sswitch_87
        0x88 -> :sswitch_90
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v0

    return-object v0
.end method

.method public setDeviceClass(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasDeviceClass:Z

    .line 385
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->deviceClass_:I

    .line 386
    return-object p0
.end method

.method public setGlEsVersion(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasGlEsVersion:Z

    .line 203
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->glEsVersion_:I

    .line 204
    return-object p0
.end method

.method public setHasFiveWayNavigation(Z)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation:Z

    .line 135
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasFiveWayNavigation_:Z

    .line 136
    return-object p0
.end method

.method public setHasHardKeyboard(Z)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasHardKeyboard:Z

    .line 118
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHardKeyboard_:Z

    .line 119
    return-object p0
.end method

.method public setKeyboard(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasKeyboard:Z

    .line 67
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->keyboard_:I

    .line 68
    return-object p0
.end method

.method public setMaxApkDownloadSizeMb(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb:Z

    .line 402
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->maxApkDownloadSizeMb_:I

    .line 403
    return-object p0
.end method

.method public setNavigation(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasNavigation:Z

    .line 84
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->navigation_:I

    .line 85
    return-object p0
.end method

.method public setScreenDensity(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenDensity:Z

    .line 152
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenDensity_:I

    .line 153
    return-object p0
.end method

.method public setScreenHeight(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenHeight:Z

    .line 186
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenHeight_:I

    .line 187
    return-object p0
.end method

.method public setScreenLayout(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenLayout:Z

    .line 101
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenLayout_:I

    .line 102
    return-object p0
.end method

.method public setScreenWidth(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenWidth:Z

    .line 169
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->screenWidth_:I

    .line 170
    return-object p0
.end method

.method public setTouchScreen(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .registers 3
    .parameter "value"

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasTouchScreen:Z

    .line 50
    iput p1, p0, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->touchScreen_:I

    .line 51
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .registers 6
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasTouchScreen()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 448
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getTouchScreen()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 450
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 451
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getKeyboard()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 453
    :cond_1c
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasNavigation()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 454
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getNavigation()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 456
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenLayout()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 457
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenLayout()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 459
    :cond_38
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasHardKeyboard()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 460
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getHasHardKeyboard()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 462
    :cond_46
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasHasFiveWayNavigation()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 463
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getHasFiveWayNavigation()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 465
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenDensity()Z

    move-result v2

    if-eqz v2, :cond_62

    .line 466
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenDensity()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 468
    :cond_62
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasGlEsVersion()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 469
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getGlEsVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 471
    :cond_71
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemSharedLibraryList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 472
    .local v0, element:Ljava/lang/String;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_79

    .line 474
    .end local v0           #element:Ljava/lang/String;
    :cond_8b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemAvailableFeatureList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_93
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 475
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_93

    .line 477
    .end local v0           #element:Ljava/lang/String;
    :cond_a5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getNativePlatformList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ad
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 478
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_ad

    .line 480
    .end local v0           #element:Ljava/lang/String;
    :cond_bf
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenWidth()Z

    move-result v2

    if-eqz v2, :cond_ce

    .line 481
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenWidth()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 483
    :cond_ce
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasScreenHeight()Z

    move-result v2

    if-eqz v2, :cond_dd

    .line 484
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenHeight()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 486
    :cond_dd
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemSupportedLocaleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 487
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_e5

    .line 489
    .end local v0           #element:Ljava/lang/String;
    :cond_f7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getGlExtensionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ff
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_111

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 490
    .restart local v0       #element:Ljava/lang/String;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_ff

    .line 492
    .end local v0           #element:Ljava/lang/String;
    :cond_111
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasDeviceClass()Z

    move-result v2

    if-eqz v2, :cond_120

    .line 493
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getDeviceClass()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 495
    :cond_120
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->hasMaxApkDownloadSizeMb()Z

    move-result v2

    if-eqz v2, :cond_12f

    .line 496
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getMaxApkDownloadSizeMb()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 498
    :cond_12f
    return-void
.end method
