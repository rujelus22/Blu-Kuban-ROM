.class public Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Lcom/sec/print/mobileprint/printoptionattribute/IPrintOptionAttribute;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;,
        Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;
    }
.end annotation


# instance fields
.field private height:I

.field private marginBottom:I

.field private marginLeft:I

.field private marginRight:I

.field private marginTop:I

.field private mediaSizeID:I

.field private mediaTypeID:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x32

    .line 140
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 141
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_A4:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->mediaSizeID:I

    .line 142
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PRINTERDEFAULT:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->mediaTypeID:I

    .line 144
    const/16 v0, 0x9b0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->width:I

    .line 145
    const/16 v0, 0xdb3

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->height:I

    .line 147
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginLeft:I

    .line 148
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginTop:I

    .line 149
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginRight:I

    .line 150
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginBottom:I

    .line 151
    return-void
.end method

.method public constructor <init>(Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;II)V
    .registers 6
    .parameter "eMediaSize"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v1, 0x32

    .line 166
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 167
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->mediaSizeID:I

    .line 168
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PRINTERDEFAULT:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    invoke-virtual {v0}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->mediaTypeID:I

    .line 170
    iput p2, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->width:I

    .line 171
    iput p3, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->height:I

    .line 173
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginLeft:I

    .line 174
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginTop:I

    .line 175
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginRight:I

    .line 176
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginBottom:I

    .line 178
    return-void
.end method

.method public constructor <init>(Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;IILcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;)V
    .registers 7
    .parameter "eMediaSize"
    .parameter "width"
    .parameter "height"
    .parameter "eMediaType"

    .prologue
    const/16 v1, 0x32

    .line 193
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 194
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->mediaSizeID:I

    .line 195
    invoke-virtual {p4}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->mediaTypeID:I

    .line 197
    iput p2, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->width:I

    .line 198
    iput p3, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->height:I

    .line 200
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginLeft:I

    .line 201
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginTop:I

    .line 202
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginRight:I

    .line 203
    iput v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginBottom:I

    .line 205
    return-void
.end method

.method public constructor <init>(Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;IILcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;IIII)V
    .registers 10
    .parameter "eMediaSize"
    .parameter "width"
    .parameter "height"
    .parameter "eMediaType"
    .parameter "marginLeft"
    .parameter "marginTop"
    .parameter "marginRight"
    .parameter "marginBottom"

    .prologue
    .line 224
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 225
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->mediaSizeID:I

    .line 226
    invoke-virtual {p4}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->mediaTypeID:I

    .line 228
    iput p2, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->width:I

    .line 229
    iput p3, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->height:I

    .line 231
    iput p5, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginLeft:I

    .line 232
    iput p6, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginTop:I

    .line 233
    iput p7, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginRight:I

    .line 234
    iput p8, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginBottom:I

    .line 236
    return-void
.end method

.method public static getMediaSizeID(Ljava/lang/String;)Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;
    .registers 4
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 330
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_LETTER:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 331
    .local v0, resultValue:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;
    const-string v1, "letter"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_e

    .line 332
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_LETTER:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    .line 381
    :goto_d
    return-object v0

    .line 333
    :cond_e
    const-string v1, "LEGAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_19

    .line 334
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_LEGAL:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto :goto_d

    .line 335
    :cond_19
    const-string v1, "OFICIO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_24

    .line 336
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_OFICIO:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto :goto_d

    .line 337
    :cond_24
    const-string v1, "FOLIO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_2f

    .line 338
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_FOLIO:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto :goto_d

    .line 339
    :cond_2f
    const-string v1, "A4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_3a

    .line 340
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_A4:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto :goto_d

    .line 341
    :cond_3a
    const-string v1, "B5ENV"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_45

    .line 342
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_B5ENV:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto :goto_d

    .line 343
    :cond_45
    const-string v1, "JISB5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_50

    .line 344
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_JISB5:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto :goto_d

    .line 345
    :cond_50
    const-string v1, "STATEMENT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_5b

    .line 346
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_STATEMENT:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto :goto_d

    .line 347
    :cond_5b
    const-string v1, "Executive"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v2, :cond_6b

    const-string v1, "Exec"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_6e

    .line 349
    :cond_6b
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_EXEC:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto :goto_d

    .line 350
    :cond_6e
    const-string v1, "A5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_79

    .line 351
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_A5:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto :goto_d

    .line 352
    :cond_79
    const-string v1, "A6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_84

    .line 353
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_A6:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto :goto_d

    .line 354
    :cond_84
    const-string v1, "MONARCH"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_90

    .line 355
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_MONARCH:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto/16 :goto_d

    .line 356
    :cond_90
    const-string v1, "COM10"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_9c

    .line 357
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_COM10:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto/16 :goto_d

    .line 358
    :cond_9c
    const-string v1, "DL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_a8

    .line 359
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_DL:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto/16 :goto_d

    .line 360
    :cond_a8
    const-string v1, "C5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_b4

    .line 361
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_C5:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto/16 :goto_d

    .line 362
    :cond_b4
    const-string v1, "C6ENV"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_c0

    .line 363
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_C6ENV:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto/16 :goto_d

    .line 364
    :cond_c0
    const-string v1, "ENV_NO9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_cc

    .line 365
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_ENV_NO9:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto/16 :goto_d

    .line 366
    :cond_cc
    const-string v1, "ENV_PERSONAL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_d8

    .line 367
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_ENV_PERSONAL:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto/16 :goto_d

    .line 368
    :cond_d8
    const-string v1, "3.5x5in"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_e4

    .line 369
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_PHOTO_BOARDERLESS_3_5X5IN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto/16 :goto_d

    .line 370
    :cond_e4
    const-string v1, "4x6in"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_f0

    .line 371
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_PHOTO_BOARDERLESS_4X6IN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto/16 :goto_d

    .line 372
    :cond_f0
    const-string v1, "5x7in"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_fc

    .line 373
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_PHOTO_BOARDERLESS_5X7IN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto/16 :goto_d

    .line 374
    :cond_fc
    const-string v1, "Custom"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_108

    .line 375
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_CUSTOM:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto/16 :goto_d

    .line 378
    :cond_108
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->MEDIA_SIZE_A4:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    goto/16 :goto_d
.end method

.method public static getMediaTypeID(Ljava/lang/String;)Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;
    .registers 4
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    .line 391
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PLAIN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 392
    .local v0, resultValue:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;
    const-string v1, "Printer Default"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_e

    .line 394
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PRINTERDEFAULT:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    .line 477
    :goto_d
    return-object v0

    .line 395
    :cond_e
    const-string v1, "Plain"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v2, :cond_1e

    const-string v1, "Normal"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_21

    .line 398
    :cond_1e
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PLAIN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto :goto_d

    .line 399
    :cond_21
    const-string v1, "THICK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_2c

    .line 401
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_THICK:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto :goto_d

    .line 402
    :cond_2c
    const-string v1, "THICKER"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_37

    .line 404
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_THICKER:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto :goto_d

    .line 405
    :cond_37
    const-string v1, "EXTRATHICK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_42

    .line 407
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_EXTRATHICK:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto :goto_d

    .line 408
    :cond_42
    const-string v1, "THIN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_4d

    .line 410
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_THIN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto :goto_d

    .line 411
    :cond_4d
    const-string v1, "BOND"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_58

    .line 413
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_BOND:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto :goto_d

    .line 414
    :cond_58
    const-string v1, "COLOR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_63

    .line 416
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_COLOR:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto :goto_d

    .line 417
    :cond_63
    const-string v1, "CARD_STOCK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_6e

    .line 419
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_CARD_STOCK:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto :goto_d

    .line 420
    :cond_6e
    const-string v1, "LABELS"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_79

    .line 422
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_LABELS:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto :goto_d

    .line 423
    :cond_79
    const-string v1, "TRANSPARENCY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_84

    .line 425
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_TRANSPARENCY:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto :goto_d

    .line 426
    :cond_84
    const-string v1, "ENVELOPE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_90

    .line 428
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_ENVELOPE:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d

    .line 429
    :cond_90
    const-string v1, "PREPRINTED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_9c

    .line 431
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PREPRINTED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d

    .line 432
    :cond_9c
    const-string v1, "COTTON"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_a8

    .line 434
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_COTTON:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d

    .line 435
    :cond_a8
    const-string v1, "RECYCLED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_b4

    .line 437
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_RECYCLED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d

    .line 438
    :cond_b4
    const-string v1, "ARCHIVE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_c0

    .line 440
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_ARCHIVE:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d

    .line 441
    :cond_c0
    const-string v1, "LETTERHEAD"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_cc

    .line 443
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_LETTERHEAD:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d

    .line 444
    :cond_cc
    const-string v1, "PREPUNCHED"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_d8

    .line 446
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PREPUNCHED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d

    .line 447
    :cond_d8
    const-string v1, "PHOTO111_130"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_e4

    .line 449
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PHOTO111_130:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d

    .line 450
    :cond_e4
    const-string v1, "PHOTO131_175"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_f0

    .line 452
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PHOTO131_175:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d

    .line 453
    :cond_f0
    const-string v1, "PHOTO176_220"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_fc

    .line 455
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PHOTO176_220:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d

    .line 456
    :cond_fc
    const-string v1, "MATTEPHOTO111_130"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_108

    .line 458
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_MATTEPHOTO111_130:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d

    .line 459
    :cond_108
    const-string v1, "MATTEPHOTO131_175"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_114

    .line 461
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_MATTEPHOTO131_175:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d

    .line 462
    :cond_114
    const-string v1, "MATTEPHOTO176_222"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_120

    .line 464
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_MATTEPHOTO176_222:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d

    .line 465
    :cond_120
    const-string v1, "Photo"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_12c

    .line 467
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PHOTO:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d

    .line 468
    :cond_12c
    const-string v1, "Coated"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v2, :cond_138

    .line 470
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_COATED:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d

    .line 474
    :cond_138
    sget-object v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;->MEDIA_TYPE_PLAIN:Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    goto/16 :goto_d
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .prologue
    .line 248
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->height:I

    return v0
.end method

.method public getMarginBottom()I
    .registers 2

    .prologue
    .line 280
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginBottom:I

    return v0
.end method

.method public getMarginLeft()I
    .registers 2

    .prologue
    .line 256
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginLeft:I

    return v0
.end method

.method public getMarginRight()I
    .registers 2

    .prologue
    .line 272
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginRight:I

    return v0
.end method

.method public getMarginTop()I
    .registers 2

    .prologue
    .line 264
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginTop:I

    return v0
.end method

.method public getMediaSizeID()Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;
    .registers 3

    .prologue
    .line 303
    const-class v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;

    iget v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->mediaSizeID:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMediaSizeIDInteger()I
    .registers 2

    .prologue
    .line 298
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->mediaSizeID:I

    return v0
.end method

.method public getMediaTypeID()Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;
    .registers 3

    .prologue
    .line 317
    const-class v0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaType;

    iget v1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->mediaTypeID:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMediaTypeIDInteger()I
    .registers 2

    .prologue
    .line 312
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->mediaTypeID:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 240
    iget v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->width:I

    return v0
.end method

.method public setHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 252
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->height:I

    .line 253
    return-void
.end method

.method public setMarginBottom(I)V
    .registers 2
    .parameter "marginBottom"

    .prologue
    .line 284
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginBottom:I

    .line 285
    return-void
.end method

.method public setMarginLeft(I)V
    .registers 2
    .parameter "marginLeft"

    .prologue
    .line 260
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginLeft:I

    .line 261
    return-void
.end method

.method public setMarginRight(I)V
    .registers 2
    .parameter "marginRight"

    .prologue
    .line 276
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginRight:I

    .line 277
    return-void
.end method

.method public setMarginTop(I)V
    .registers 2
    .parameter "marginTop"

    .prologue
    .line 268
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->marginTop:I

    .line 269
    return-void
.end method

.method public setMediaSizeID(I)V
    .registers 2
    .parameter "mediaSizeID"

    .prologue
    .line 288
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->mediaSizeID:I

    .line 289
    return-void
.end method

.method public setMediaSizeID(Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;)V
    .registers 3
    .parameter "eMediaSize"

    .prologue
    .line 293
    invoke-virtual {p1}, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo$EnumMediaSize;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->mediaSizeID:I

    .line 294
    return-void
.end method

.method public setMediaTypeID(I)V
    .registers 2
    .parameter "mediaTypeID"

    .prologue
    .line 308
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->mediaTypeID:I

    .line 309
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 244
    iput p1, p0, Lcom/sec/print/mobileprint/printoptionattribute/MediaInfo;->width:I

    .line 245
    return-void
.end method
