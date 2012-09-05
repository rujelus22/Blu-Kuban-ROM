.class Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DeviceInfoLoader.java"


# static fields
.field public static TYPE_LOAD_ALL:I

.field public static TYPE_LOAD_ONLY_CAPABILITY:I

.field public static TYPE_LOAD_ONLY_MODEL_SERIES:I

.field public static TYPE_LOAD_ONLY_SPECIFIC_MODEL_CAPABILITY:I


# instance fields
.field private builder:Ljava/lang/StringBuilder;

.field private currentCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

.field private currentModelName:Ljava/lang/String;

.field private currentProductNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceList:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;

.field private loadType:I

.field private requestFindModelName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 214
    const/4 v0, 0x1

    sput v0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->TYPE_LOAD_ALL:I

    .line 215
    const/4 v0, 0x2

    sput v0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->TYPE_LOAD_ONLY_MODEL_SERIES:I

    .line 216
    const/4 v0, 0x3

    sput v0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->TYPE_LOAD_ONLY_CAPABILITY:I

    .line 217
    const/4 v0, 0x4

    sput v0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->TYPE_LOAD_ONLY_SPECIFIC_MODEL_CAPABILITY:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .parameter "loadType"

    .prologue
    const/4 v1, 0x0

    .line 222
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->loadType:I

    .line 220
    iput-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->requestFindModelName:Ljava/lang/String;

    .line 223
    iput p1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->loadType:I

    .line 224
    iput-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->requestFindModelName:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "modelName"

    .prologue
    .line 227
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 219
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->loadType:I

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->requestFindModelName:Ljava/lang/String;

    .line 228
    sget v0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->TYPE_LOAD_ONLY_SPECIFIC_MODEL_CAPABILITY:I

    iput v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->loadType:I

    .line 229
    iput-object p1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->requestFindModelName:Ljava/lang/String;

    .line 230
    return-void
.end method

.method private isRequireCapability()Z
    .registers 3

    .prologue
    .line 251
    iget v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->loadType:I

    sget v1, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->TYPE_LOAD_ALL:I

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->loadType:I

    sget v1, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->TYPE_LOAD_ONLY_CAPABILITY:I

    if-eq v0, v1, :cond_12

    iget v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->loadType:I

    sget v1, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->TYPE_LOAD_ONLY_SPECIFIC_MODEL_CAPABILITY:I

    if-ne v0, v1, :cond_14

    .line 254
    :cond_12
    const/4 v0, 0x1

    .line 257
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private isRequireModelSeries()Z
    .registers 3

    .prologue
    .line 261
    iget v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->loadType:I

    sget v1, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->TYPE_LOAD_ALL:I

    if-eq v0, v1, :cond_c

    iget v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->loadType:I

    sget v1, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->TYPE_LOAD_ONLY_MODEL_SERIES:I

    if-ne v0, v1, :cond_e

    .line 263
    :cond_c
    const/4 v0, 0x1

    .line 266
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .parameter "ch"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 274
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_c

    .line 275
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 277
    :cond_c
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 340
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v1, "Model"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_3f

    .line 342
    iget v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->loadType:I

    sget v2, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->TYPE_LOAD_ONLY_SPECIFIC_MODEL_CAPABILITY:I

    if-ne v1, v2, :cond_33

    .line 343
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->requestFindModelName:Ljava/lang/String;

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->requestFindModelName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentModelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v1, v3, :cond_3e

    .line 344
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->deviceList:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;

    iget-object v2, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentModelName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentProductNames:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;->addDevice(Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;)V

    .line 345
    new-instance v1, Lorg/xml/sax/SAXException;

    const-string v2, "Found"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 348
    :cond_33
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->deviceList:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;

    iget-object v2, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentModelName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentProductNames:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;->addDevice(Ljava/lang/String;Ljava/util/ArrayList;Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;)V

    .line 384
    :cond_3e
    :goto_3e
    return-void

    .line 351
    :cond_3f
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3e

    .line 355
    const-string v1, "ModelName"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_54

    .line 356
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentModelName:Ljava/lang/String;

    goto :goto_3e

    .line 357
    :cond_54
    const-string v1, "ModelSeries"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_79

    .line 358
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .local v0, st:Ljava/util/StringTokenizer;
    :goto_69
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 360
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentProductNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 362
    .end local v0           #st:Ljava/util/StringTokenizer;
    :cond_79
    const-string v1, "Emulation"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_8d

    .line 363
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    iget-object v2, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->setEmulation(Ljava/lang/String;)V

    goto :goto_3e

    .line 364
    :cond_8d
    const-string v1, "Duplex"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_a5

    .line 365
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    iget-object v2, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->setDuplex(Z)V

    goto :goto_3e

    .line 366
    :cond_a5
    const-string v1, "ColorMode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_ca

    .line 367
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_c2

    .line 368
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    invoke-virtual {v1, v3}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->setColorMode(Z)V

    goto/16 :goto_3e

    .line 370
    :cond_c2
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->setColorMode(Z)V

    goto/16 :goto_3e

    .line 372
    :cond_ca
    const-string v1, "PCL6Compression"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_df

    .line 373
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    iget-object v2, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->setPCL6CompressionType(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 374
    :cond_df
    const-string v1, "Compression"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_f4

    .line 375
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    iget-object v2, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->setSplCompressionType(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 376
    :cond_f4
    const-string v1, "CTSFile"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_109

    .line 377
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    iget-object v2, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->setCmsFileName(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 378
    :cond_109
    const-string v1, "SPLVersion"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_11e

    .line 379
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    iget-object v2, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->setSplVersion(Ljava/lang/String;)V

    goto/16 :goto_3e

    .line 380
    :cond_11e
    const-string v1, "WidthAlign"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v3, :cond_3e

    .line 381
    iget-object v1, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    iget-object v2, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;->setSplWidthAlign(Ljava/lang/String;)V

    goto/16 :goto_3e
.end method

.method public getCapability(Ljava/lang/String;)Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;
    .registers 3
    .parameter "modelName"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->deviceList:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;

    if-eqz v0, :cond_b

    .line 245
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->deviceList:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;

    invoke-virtual {v0, p1}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;->getCapability(Ljava/lang/String;)Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    move-result-object v0

    .line 247
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getDeviceLists()Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->deviceList:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;

    return-object v0
.end method

.method public getModelSerieList()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->deviceList:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;

    if-eqz v0, :cond_b

    .line 238
    iget-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->deviceList:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;->getProductList()Ljava/util/HashMap;

    move-result-object v0

    .line 240
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 281
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 283
    new-instance v0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->deviceList:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceListData;

    .line 284
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 289
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 290
    iput-object v2, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    .line 291
    const-string v0, "Model"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_1b

    .line 292
    iput-object v2, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentModelName:Ljava/lang/String;

    .line 293
    iput-object v2, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentProductNames:Ljava/util/ArrayList;

    .line 294
    new-instance v0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    invoke-direct {v0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentCapability:Lcom/sec/print/mobileprint/utils/deviceinfoloader/DeviceCapability;

    .line 335
    :cond_1a
    :goto_1a
    return-void

    .line 295
    :cond_1b
    const-string v0, "ModelName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_2b

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 297
    :cond_2b
    const-string v0, "ModelSeries"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_48

    .line 298
    invoke-direct {p0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->isRequireModelSeries()Z

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->currentProductNames:Ljava/util/ArrayList;

    goto :goto_1a

    .line 302
    :cond_48
    const-string v0, "Emulation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_5e

    .line 303
    invoke-direct {p0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->isRequireCapability()Z

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 306
    :cond_5e
    const-string v0, "Duplex"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_74

    .line 307
    invoke-direct {p0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->isRequireCapability()Z

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 310
    :cond_74
    const-string v0, "ColorMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_8a

    .line 311
    invoke-direct {p0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->isRequireCapability()Z

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 314
    :cond_8a
    const-string v0, "PCL6Compression"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_a1

    .line 315
    invoke-direct {p0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->isRequireCapability()Z

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    goto/16 :goto_1a

    .line 318
    :cond_a1
    const-string v0, "Compression"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_b8

    .line 319
    invoke-direct {p0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->isRequireCapability()Z

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    goto/16 :goto_1a

    .line 322
    :cond_b8
    const-string v0, "CTSFile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_cf

    .line 323
    invoke-direct {p0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->isRequireCapability()Z

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    goto/16 :goto_1a

    .line 326
    :cond_cf
    const-string v0, "WidthAlign"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_e6

    .line 327
    invoke-direct {p0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->isRequireCapability()Z

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    goto/16 :goto_1a

    .line 330
    :cond_e6
    const-string v0, "SPLVersion"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 331
    invoke-direct {p0}, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->isRequireCapability()Z

    move-result v0

    if-ne v0, v1, :cond_1a

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/print/mobileprint/utils/deviceinfoloader/ModelListHandler;->builder:Ljava/lang/StringBuilder;

    goto/16 :goto_1a
.end method
