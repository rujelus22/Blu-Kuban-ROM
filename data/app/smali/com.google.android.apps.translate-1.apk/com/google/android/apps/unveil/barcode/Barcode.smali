.class public Lcom/google/android/apps/unveil/barcode/Barcode;
.super Ljava/lang/Object;
.source "Barcode.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/apps/unveil/barcode/Barcode;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger; = null

.field public static final serialVersionUID:J = -0xd488e3caeb5f83bL


# instance fields
.field private boundingBox:Landroid/graphics/Rect;

.field private format:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private urlString:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/barcode/Barcode;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    .line 45
    new-instance v0, Lcom/google/android/apps/unveil/barcode/Barcode$1;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/barcode/Barcode$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/barcode/Barcode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "in"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->type:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->value:Ljava/lang/String;

    .line 82
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->boundingBox:Landroid/graphics/Rect;

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/client/result/ParsedResultType;Lcom/google/zxing/BarcodeFormat;Ljava/lang/String;Landroid/graphics/Rect;)V
    .registers 6
    .parameter "type"
    .parameter "format"
    .parameter "value"
    .parameter "boundingBox"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->type:Ljava/lang/String;

    .line 73
    invoke-virtual {p2}, Lcom/google/zxing/BarcodeFormat;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    .line 74
    iput-object p3, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->value:Ljava/lang/String;

    .line 75
    iput-object p4, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->boundingBox:Landroid/graphics/Rect;

    .line 76
    return-void
.end method

.method private getProtoBarcodeFormat()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    const-string v1, "QR_CODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 202
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->QR_CODE:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    .line 222
    :goto_c
    return-object v0

    .line 203
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    const-string v1, "DATAMATRIX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 204
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->DATAMATRIX:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_c

    .line 205
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    const-string v1, "UPC_E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 206
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->UPC_E:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_c

    .line 207
    :cond_27
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    const-string v1, "UPC_A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 208
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->UPC_A:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_c

    .line 209
    :cond_34
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    const-string v1, "EAN_8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 210
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->EAN_8:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_c

    .line 211
    :cond_41
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    const-string v1, "EAN_13"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 212
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->EAN_13:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_c

    .line 213
    :cond_4e
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    const-string v1, "CODE_128"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 214
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->CODE_128:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_c

    .line 215
    :cond_5b
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    const-string v1, "CODE_39"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 216
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->CODE_39:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_c

    .line 217
    :cond_68
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    const-string v1, "ITF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 218
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->ITF:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_c

    .line 219
    :cond_75
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    const-string v1, "PDF417"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 220
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->PDF417:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_c

    .line 222
    :cond_82
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;->OTHER_FORMAT:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    goto :goto_c
.end method

.method private getProtoBarcodeType()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->type:Ljava/lang/String;

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->ADDRESSBOOK:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 180
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->ADDRESS_BOOK:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    .line 196
    :goto_10
    return-object v0

    .line 181
    :cond_11
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->type:Ljava/lang/String;

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->EMAIL_ADDRESS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 182
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->EMAIL_ADDRESS:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_10

    .line 183
    :cond_22
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->type:Ljava/lang/String;

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 184
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->PRODUCT:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_10

    .line 185
    :cond_33
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->type:Ljava/lang/String;

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->URI:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 186
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->URI:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_10

    .line 187
    :cond_44
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->type:Ljava/lang/String;

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->TEXT:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 188
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->TEXT:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_10

    .line 189
    :cond_55
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->type:Ljava/lang/String;

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->TEL:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 190
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->TEL:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_10

    .line 191
    :cond_66
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->type:Ljava/lang/String;

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->SMS:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 192
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->SMS:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_10

    .line 193
    :cond_77
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->type:Ljava/lang/String;

    sget-object v1, Lcom/google/zxing/client/result/ParsedResultType;->ISBN:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResultType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 194
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->ISBN:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_10

    .line 196
    :cond_88
    sget-object v0, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;->OTHER_TYPE:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    goto :goto_10
.end method

.method public static parseFrom([B)Lcom/google/android/apps/unveil/barcode/Barcode;
    .registers 7
    .parameter "bytes"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 283
    :try_start_2
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 284
    .local v1, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/unveil/barcode/Barcode;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_12} :catch_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_12} :catch_1f

    .line 290
    .end local v1           #in:Ljava/io/ObjectInputStream;
    :goto_12
    return-object v2

    .line 285
    :catch_13
    move-exception v0

    .line 286
    .local v0, e:Ljava/io/IOException;
    sget-object v2, Lcom/google/android/apps/unveil/barcode/Barcode;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Could not deserialize a Barcode."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 287
    goto :goto_12

    .line 288
    .end local v0           #e:Ljava/io/IOException;
    :catch_1f
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/ClassNotFoundException;
    sget-object v2, Lcom/google/android/apps/unveil/barcode/Barcode;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Could not deserialize a Barcode."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 290
    goto :goto_12
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->type:Ljava/lang/String;

    .line 296
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    .line 297
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->value:Ljava/lang/String;

    .line 298
    invoke-static {p1}, Lcom/google/android/apps/unveil/barcode/Barcode;->readRect(Ljava/io/ObjectInputStream;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->boundingBox:Landroid/graphics/Rect;

    .line 299
    return-void
.end method

.method private static final readRect(Ljava/io/ObjectInputStream;)Landroid/graphics/Rect;
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 303
    .local v1, left:I
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 304
    .local v3, top:I
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 305
    .local v2, right:I
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 306
    .local v0, bottom:I
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method private toClientAnnotationInner(Landroid/graphics/Rect;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 5
    .parameter "box"

    .prologue
    .line 161
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v1

    .line 163
    .local v1, clientAnnotationBuilder:Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    invoke-static {p1}, Lcom/google/android/apps/unveil/env/GeometryUtils;->toBoundingBox(Landroid/graphics/Rect;)Lcom/google/goggles/BoundingBoxProtos$BoundingBox;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->setBoundingBox(Lcom/google/goggles/BoundingBoxProtos$BoundingBox;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    .line 165
    invoke-static {}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode;->newBuilder()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    move-result-object v0

    .line 170
    .local v0, barcodeAnnotationBuilder:Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;
    invoke-direct {p0}, Lcom/google/android/apps/unveil/barcode/Barcode;->getProtoBarcodeType()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->setType(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeType;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    .line 171
    invoke-direct {p0}, Lcom/google/android/apps/unveil/barcode/Barcode;->getProtoBarcodeFormat()Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->setFormat(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$BarcodeFormat;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    .line 172
    iget-object v2, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->value:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;->setValue(Ljava/lang/String;)Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;

    .line 175
    invoke-virtual {v1, v0}, Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;->setBarcode(Lcom/google/goggles/ClientAnnotationProtos$ClientBarcode$Builder;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v2

    return-object v2
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 312
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->boundingBox:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 314
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->boundingBox:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->boundingBox:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 316
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->boundingBox:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 317
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 233
    if-ne p0, p1, :cond_5

    .line 250
    :cond_4
    :goto_4
    return v1

    .line 236
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 237
    goto :goto_4

    .line 239
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_15

    move v1, v2

    .line 240
    goto :goto_4

    :cond_15
    move-object v0, p1

    .line 242
    check-cast v0, Lcom/google/android/apps/unveil/barcode/Barcode;

    .line 243
    .local v0, other:Lcom/google/android/apps/unveil/barcode/Barcode;
    iget-object v3, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->value:Ljava/lang/String;

    if-nez v3, :cond_22

    .line 244
    iget-object v3, v0, Lcom/google/android/apps/unveil/barcode/Barcode;->value:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    .line 245
    goto :goto_4

    .line 247
    :cond_22
    iget-object v3, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/apps/unveil/barcode/Barcode;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 248
    goto :goto_4
.end method

.method public getBoundingBox()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->boundingBox:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 5

    .prologue
    .line 96
    iget-object v3, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->urlString:Ljava/lang/String;

    if-nez v3, :cond_25

    .line 98
    :try_start_4
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 99
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, protocol:Ljava/lang/String;
    const-string v3, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 101
    :cond_1f
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->urlString:Ljava/lang/String;
    :try_end_25
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_25} :catch_2d

    .line 109
    .end local v1           #protocol:Ljava/lang/String;
    .end local v2           #url:Ljava/net/URL;
    :cond_25
    :goto_25
    iget-object v3, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->urlString:Ljava/lang/String;

    return-object v3

    .line 103
    .restart local v1       #protocol:Ljava/lang/String;
    .restart local v2       #url:Ljava/net/URL;
    :cond_28
    :try_start_28
    const-string v3, ""

    iput-object v3, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->urlString:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/net/MalformedURLException; {:try_start_28 .. :try_end_2c} :catch_2d

    goto :goto_25

    .line 105
    .end local v1           #protocol:Ljava/lang/String;
    .end local v2           #url:Ljava/net/URL;
    :catch_2d
    move-exception v0

    .line 106
    .local v0, e:Ljava/net/MalformedURLException;
    const-string v3, ""

    iput-object v3, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->urlString:Ljava/lang/String;

    goto :goto_25
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toByteArray()[B
    .registers 8

    .prologue
    .line 271
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 272
    .local v0, bytes:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 273
    .local v2, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 274
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v3

    .line 277
    .end local v0           #bytes:Ljava/io/ByteArrayOutputStream;
    .end local v2           #out:Ljava/io/ObjectOutputStream;
    :goto_11
    return-object v3

    .line 275
    :catch_12
    move-exception v1

    .line 276
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Lcom/google/android/apps/unveil/barcode/Barcode;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v4, "Could not serialize %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    const/4 v3, 0x0

    goto :goto_11
.end method

.method public toClientAnnotation()Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->boundingBox:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/barcode/Barcode;->toClientAnnotationInner(Landroid/graphics/Rect;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toRotatedClientAnnotation(Lcom/google/android/apps/unveil/env/Size;ILcom/google/android/apps/unveil/env/Viewport;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;
    .registers 6
    .parameter "queryImageSize"
    .parameter "rotation"
    .parameter "viewport"

    .prologue
    .line 146
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->boundingBox:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 147
    .local v0, box:Landroid/graphics/Rect;
    if-eqz p1, :cond_11

    if-eqz p3, :cond_11

    .line 148
    iget-object v1, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->boundingBox:Landroid/graphics/Rect;

    invoke-virtual {p3, v1, p2, p1}, Lcom/google/android/apps/unveil/env/Viewport;->rotateAndScaleBarcodeBox(Landroid/graphics/Rect;ILcom/google/android/apps/unveil/env/Size;)Landroid/graphics/Rect;

    move-result-object v0

    .line 150
    :cond_11
    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/barcode/Barcode;->toClientAnnotationInner(Landroid/graphics/Rect;)Lcom/google/goggles/ClientAnnotationProtos$ClientAnnotation$Builder;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "Barcode [type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", format="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", boundingBox="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->boundingBox:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->format:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/unveil/barcode/Barcode;->boundingBox:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 118
    return-void
.end method
