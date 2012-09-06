.class public Landroid/support/place/rpc/RpcData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BITMAP_KEY_DATA:Ljava/lang/String; = "bmp_data"

.field private static final BITMAP_KEY_ENCODING:Ljava/lang/String; = "bmp_encoding"

.field private static final BITMAP_KEY_HEIGHT:Ljava/lang/String; = "bmp_height"

.field private static final BITMAP_KEY_WIDTH:Ljava/lang/String; = "bmp_width"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mRpcData:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 535
    new-instance v0, Landroid/support/place/rpc/RpcData$1;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData$1;-><init>()V

    sput-object v0, Landroid/support/place/rpc/RpcData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Landroid/support/place/rpc/RpcData;->readFromParcel(Landroid/os/Parcel;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 79
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/support/place/rpc/RpcData;-><init>(Lorg/json/JSONObject;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-nez p1, :cond_a

    .line 73
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 75
    :cond_a
    iput-object p1, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    .line 76
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 68
    invoke-virtual {p0, p1}, Landroid/support/place/rpc/RpcData;->deserialize([B)V

    .line 69
    return-void
.end method

.method public static from([B)Landroid/support/place/rpc/RpcData;
    .registers 2
    .parameter

    .prologue
    .line 568
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 569
    invoke-virtual {v0, p0}, Landroid/support/place/rpc/RpcData;->deserialize([B)V

    .line 570
    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 476
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    .line 477
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method public deserialize([B)V
    .registers 4
    .parameter

    .prologue
    .line 500
    if-nez p1, :cond_3

    .line 504
    :goto_2
    return-void

    .line 503
    :cond_3
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/place/rpc/RpcData;->deserialize([BII)V

    goto :goto_2
.end method

.method public deserialize([BII)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    if-eqz p1, :cond_4

    if-nez p3, :cond_5

    .line 518
    :cond_4
    :goto_4
    return-void

    .line 511
    :cond_5
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, p2, p3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_13} :catch_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_13} :catch_1d

    goto :goto_4

    .line 512
    :catch_14
    move-exception v0

    .line 513
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error parsing the JSONObject: "

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 515
    :catch_1d
    move-exception v0

    .line 517
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "UTF-8 is not supported"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 273
    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, p1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_3a

    .line 276
    const-string v0, "bmp_encoding"

    invoke-virtual {v1, v0}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap$Config;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 277
    const-string v2, "bmp_width"

    invoke-virtual {v1, v2}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 278
    const-string v3, "bmp_height"

    invoke-virtual {v1, v3}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 279
    const-string v4, "bmp_data"

    invoke-virtual {v1, v4}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 280
    array-length v4, v1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 281
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 282
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 283
    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 286
    :cond_3a
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    .line 94
    :catch_7
    move-exception v0

    new-instance v0, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v0, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v0
.end method

.method public getByte(Ljava/lang/String;)B
    .registers 3
    .parameter

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_8

    move-result v0

    int-to-byte v0, v0

    return v0

    .line 110
    :catch_8
    move-exception v0

    new-instance v0, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v0, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .registers 4
    .parameter

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, p1}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_c

    .line 244
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 246
    :cond_c
    return-object v0
.end method

.method public getChar(Ljava/lang/String;)C
    .registers 3
    .parameter

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_8

    move-result v0

    int-to-char v0, v0

    return v0

    .line 126
    :catch_8
    move-exception v0

    new-instance v0, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v0, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    return v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .registers 4
    .parameter

    .prologue
    .line 197
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v0

    return-wide v0

    .line 199
    :catch_7
    move-exception v0

    new-instance v0, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v0, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v0
.end method

.method public getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    .line 306
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p2, v0}, Landroid/support/place/rpc/Flattenable$Creator;->createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/Flattenable;

    move-result-object v0

    goto :goto_7
.end method

.method public getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 431
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 432
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 433
    const/4 v0, 0x0

    .line 451
    :goto_f
    return-object v0

    .line 436
    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 437
    check-cast v0, Lorg/json/JSONArray;

    .line 439
    const/4 v1, 0x0

    move v4, v1

    :goto_19
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_6c

    .line 440
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 441
    instance-of v3, v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_2f

    .line 442
    new-instance v3, Landroid/support/place/rpc/RpcData;

    check-cast v1, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Landroid/support/place/rpc/RpcData;-><init>(Lorg/json/JSONObject;)V

    move-object v1, v3

    .line 444
    :cond_2f
    instance-of v3, v1, Landroid/support/place/rpc/RpcData;

    if-nez v3, :cond_5f

    .line 446
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "elment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of list \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not an RpcData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_58} :catch_58

    .line 453
    :catch_58
    move-exception v0

    new-instance v0, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v0, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v0

    .line 449
    :cond_5f
    :try_start_5f
    check-cast v1, Landroid/support/place/rpc/RpcData;

    invoke-interface {p2, v1}, Landroid/support/place/rpc/Flattenable$Creator;->createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_5f .. :try_end_68} :catch_58

    .line 439
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_19

    :cond_6c
    move-object v0, v2

    .line 451
    goto :goto_f
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 4
    .parameter

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_8

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 183
    :catch_8
    move-exception v0

    new-instance v0, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v0, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 3
    .parameter

    .prologue
    .line 165
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    return v0

    .line 167
    :catch_7
    move-exception v0

    new-instance v0, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v0, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 398
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Landroid/support/place/rpc/RpcData;->getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 403
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 404
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 405
    const/4 v0, 0x0

    .line 422
    :goto_f
    return-object v0

    .line 408
    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 409
    check-cast v0, Lorg/json/JSONArray;

    .line 411
    const/4 v1, 0x0

    move v4, v1

    :goto_19
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_70

    .line 412
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 413
    instance-of v3, v1, Lorg/json/JSONObject;

    if-eqz v3, :cond_2f

    .line 414
    new-instance v3, Landroid/support/place/rpc/RpcData;

    check-cast v1, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Landroid/support/place/rpc/RpcData;-><init>(Lorg/json/JSONObject;)V

    move-object v1, v3

    .line 416
    :cond_2f
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 417
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "elment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of list \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_62} :catch_62

    .line 424
    :catch_62
    move-exception v0

    new-instance v0, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v0, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v0

    .line 420
    :cond_69
    :try_start_69
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_6c} :catch_62

    .line 411
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_19

    :cond_70
    move-object v0, v2

    .line 422
    goto :goto_f
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4
    .parameter

    .prologue
    .line 213
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v0

    return-wide v0

    .line 215
    :catch_7
    move-exception v0

    new-instance v0, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v0, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v0
.end method

.method public getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;
    .registers 4
    .parameter

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 230
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Landroid/support/place/rpc/RpcData;

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Landroid/support/place/rpc/RpcData;-><init>(Lorg/json/JSONObject;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_19

    move-object v0, v1

    goto :goto_f

    .line 232
    :catch_19
    move-exception v0

    new-instance v0, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v0, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v0
.end method

.method public getRpcDataList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .parameter

    .prologue
    .line 459
    const-class v0, Landroid/support/place/rpc/RpcData;

    invoke-virtual {p0, p1, v0}, Landroid/support/place/rpc/RpcData;->getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRpcDataModel()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 143
    const/4 v0, 0x0

    .line 147
    :goto_f
    return-object v0

    .line 144
    :cond_10
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 145
    check-cast v0, Ljava/lang/String;

    goto :goto_f

    .line 146
    :cond_17
    if-eqz v0, :cond_1e

    .line 147
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 149
    :cond_1e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_24

    .line 151
    :catch_24
    move-exception v0

    new-instance v0, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v0, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 464
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 465
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b} :catch_10

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x0

    :cond_f
    return-object v0

    .line 467
    :catch_10
    move-exception v0

    new-instance v0, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v0, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 522
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 254
    if-nez p2, :cond_11

    .line 256
    :try_start_2
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_9} :catch_a

    .line 270
    :goto_9
    return-void

    .line 258
    :catch_a
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 261
    :cond_11
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 262
    const-string v1, "bmp_encoding"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "bmp_width"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 264
    const-string v1, "bmp_height"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 265
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 266
    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 267
    const-string v2, "bmp_data"

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/support/place/rpc/RpcData;->putByteArray(Ljava/lang/String;[B)V

    .line 268
    invoke-virtual {p0, p1, v0}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    goto :goto_9
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 84
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 87
    return-void

    .line 86
    :catch_6
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public putByte(Ljava/lang/String;B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 103
    return-void

    .line 102
    :catch_6
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 237
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, p1, v0}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void

    .line 237
    :cond_7
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public putChar(Ljava/lang/String;C)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 119
    return-void

    .line 118
    :catch_6
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public putDouble(Ljava/lang/String;D)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 189
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 192
    return-void

    .line 191
    :catch_6
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 290
    if-nez p2, :cond_11

    .line 292
    :try_start_2
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_9} :catch_a

    .line 301
    :goto_9
    return-void

    .line 294
    :catch_a
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 297
    :cond_11
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 298
    invoke-interface {p2, v0}, Landroid/support/place/rpc/Flattenable;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 299
    invoke-virtual {p0, p1, v0}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    goto :goto_9
.end method

.method public putFlattenableList(Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 334
    if-nez p2, :cond_12

    .line 336
    :try_start_3
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_a} :catch_b

    .line 356
    :goto_a
    return-void

    .line 338
    :catch_b
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 340
    :cond_12
    if-eqz p2, :cond_38

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 345
    :goto_19
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 346
    :goto_1e
    if-ge v2, v1, :cond_3a

    .line 347
    new-instance v4, Landroid/support/place/rpc/RpcData;

    invoke-direct {v4}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 348
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/Flattenable;

    invoke-interface {v0, v4}, Landroid/support/place/rpc/Flattenable;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 349
    invoke-virtual {v4}, Landroid/support/place/rpc/RpcData;->getRpcDataModel()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_38
    move v1, v2

    .line 340
    goto :goto_19

    .line 353
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_a

    .line 355
    :catch_40
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 173
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    float-to-double v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6} :catch_7

    .line 176
    return-void

    .line 175
    :catch_7
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public putInteger(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 157
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 160
    return-void

    .line 159
    :catch_6
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public putList(Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 360
    if-nez p2, :cond_12

    .line 362
    :try_start_3
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_a} :catch_b

    .line 386
    :goto_a
    return-void

    .line 364
    :catch_b
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 366
    :cond_12
    if-eqz p2, :cond_34

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 371
    :goto_19
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 372
    :goto_1e
    if-ge v2, v1, :cond_3a

    .line 373
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 375
    instance-of v4, v0, Landroid/support/place/rpc/RpcData;

    if-eqz v4, :cond_36

    .line 376
    check-cast v0, Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->getRpcDataModel()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 372
    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_34
    move v1, v2

    .line 366
    goto :goto_19

    .line 378
    :cond_36
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_31

    .line 383
    :cond_3a
    :try_start_3a
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_3f} :catch_40

    goto :goto_a

    .line 385
    :catch_40
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 205
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 208
    return-void

    .line 207
    :catch_6
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 221
    :try_start_0
    iget-object v1, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    if-nez p2, :cond_a

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_6
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    return-void

    .line 221
    :cond_a
    invoke-virtual {p2}, Landroid/support/place/rpc/RpcData;->getRpcDataModel()Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    goto :goto_6

    .line 223
    :catch_f
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public putRpcDataList(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 310
    if-nez p2, :cond_12

    .line 312
    :try_start_3
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_a} :catch_b

    .line 330
    :goto_a
    return-void

    .line 314
    :catch_b
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 316
    :cond_12
    if-eqz p2, :cond_30

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 321
    :goto_19
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 322
    :goto_1e
    if-ge v2, v1, :cond_32

    .line 323
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/rpc/RpcData;

    invoke-virtual {v0}, Landroid/support/place/rpc/RpcData;->getRpcDataModel()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 322
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_30
    move v1, v2

    .line 316
    goto :goto_19

    .line 327
    :cond_32
    :try_start_32
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_37} :catch_38

    goto :goto_a

    .line 329
    :catch_38
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    if-nez p2, :cond_6

    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :cond_6
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    .line 135
    return-void

    .line 134
    :catch_a
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .parameter

    .prologue
    .line 553
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 555
    new-array v0, v0, [B

    .line 556
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 557
    invoke-virtual {p0, v0}, Landroid/support/place/rpc/RpcData;->deserialize([B)V

    .line 558
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 472
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 473
    return-void
.end method

.method public ser()[B
    .registers 2

    .prologue
    .line 574
    invoke-virtual {p0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    return-object v0
.end method

.method public serialize()[B
    .registers 3

    .prologue
    .line 488
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    :try_start_6
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v0

    .line 496
    return-object v0

    .line 494
    :catch_d
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UTF-8 is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toDebugString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 562
    invoke-virtual {p0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 563
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 565
    return-void
.end method
