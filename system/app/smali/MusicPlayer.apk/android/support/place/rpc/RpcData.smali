.class public Landroid/support/place/rpc/RpcData;
.super Ljava/lang/Object;
.source "RpcData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/rpc/RpcData$KeyNotFoundException;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/place/rpc/RpcData;",
            ">;"
        }
    .end annotation
.end field


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
    .parameter "in"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0, p1}, Landroid/support/place/rpc/RpcData;->readFromParcel(Landroid/os/Parcel;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 2
    .parameter "obj"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    if-nez p1, :cond_a

    .line 73
    new-instance p1, Lorg/json/JSONObject;

    .end local p1
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 75
    .restart local p1
    :cond_a
    iput-object p1, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    .line 76
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter "buf"

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
    .parameter "buf"

    .prologue
    .line 568
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 569
    .local v0, tc:Landroid/support/place/rpc/RpcData;
    invoke-virtual {v0, p0}, Landroid/support/place/rpc/RpcData;->deserialize([B)V

    .line 570
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 549
    const/4 v0, 0x0

    return v0
.end method

.method public deserialize([B)V
    .registers 4
    .parameter "array"

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
    .registers 8
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 507
    if-eqz p1, :cond_4

    if-nez p3, :cond_5

    .line 519
    :cond_4
    :goto_4
    return-void

    .line 511
    :cond_5
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, p1, p2, p3, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_13} :catch_14
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_13} :catch_1d

    goto :goto_4

    .line 512
    :catch_14
    move-exception v0

    .line 513
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Error parsing the JSONObject: "

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 515
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1d
    move-exception v0

    .line 517
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "UTF-8 is not supported"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "key"

    .prologue
    const/4 v8, 0x0

    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v5

    .line 275
    .local v5, value:Landroid/support/place/rpc/RpcData;
    if-eqz v5, :cond_3a

    .line 276
    const-string v7, "bmp_encoding"

    invoke-virtual {v5, v7}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Bitmap$Config;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 277
    .local v2, config:Landroid/graphics/Bitmap$Config;
    const-string v7, "bmp_width"

    invoke-virtual {v5, v7}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v6

    .line 278
    .local v6, width:I
    const-string v7, "bmp_height"

    invoke-virtual {v5, v7}, Landroid/support/place/rpc/RpcData;->getInteger(Ljava/lang/String;)I

    move-result v4

    .line 279
    .local v4, height:I
    const-string v7, "bmp_data"

    invoke-virtual {v5, v7}, Landroid/support/place/rpc/RpcData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 280
    .local v3, data:[B
    array-length v7, v3

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 281
    .local v1, buff:Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 282
    invoke-virtual {v1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 283
    invoke-static {v6, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 286
    .end local v1           #buff:Ljava/nio/ByteBuffer;
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    .end local v3           #data:[B
    .end local v4           #height:I
    .end local v6           #width:I
    :cond_3a
    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 4
    .parameter "key"

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 93
    :catch_7
    move-exception v0

    .line 94
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v1, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v1
.end method

.method public getFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Landroid/support/place/rpc/Flattenable;
    .registers 5
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/support/place/rpc/Flattenable;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 305
    .local p2, creator:Landroid/support/place/rpc/Flattenable$Creator;,"Landroid/support/place/rpc/Flattenable$Creator<TT;>;"
    invoke-virtual {p0, p1}, Landroid/support/place/rpc/RpcData;->getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;

    move-result-object v0

    .line 306
    .local v0, value:Landroid/support/place/rpc/RpcData;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return-object v1

    :cond_8
    invoke-interface {p2, v0}, Landroid/support/place/rpc/Flattenable$Creator;->createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/Flattenable;

    move-result-object v1

    goto :goto_7
.end method

.method public getFlattenableList(Ljava/lang/String;Landroid/support/place/rpc/Flattenable$Creator;)Ljava/util/List;
    .registers 14
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Landroid/support/place/rpc/Flattenable;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/support/place/rpc/Flattenable$Creator",
            "<TU;>;)",
            "Ljava/util/List",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 431
    .local p2, creator:Landroid/support/place/rpc/Flattenable$Creator;,"Landroid/support/place/rpc/Flattenable$Creator<TU;>;"
    :try_start_0
    iget-object v8, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v8, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 432
    .local v5, o:Ljava/lang/Object;
    sget-object v8, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 433
    const/4 v4, 0x0

    .line 451
    :cond_f
    return-object v4

    .line 436
    :cond_10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 437
    .local v4, list:Ljava/util/List;,"Ljava/util/List<TU;>;"
    move-object v0, v5

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    .line 439
    .local v1, array:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_f

    .line 440
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 441
    .local v6, obj:Ljava/lang/Object;
    instance-of v8, v6, Lorg/json/JSONObject;

    if-eqz v8, :cond_30

    .line 442
    new-instance v7, Landroid/support/place/rpc/RpcData;

    check-cast v6, Lorg/json/JSONObject;

    .end local v6           #obj:Ljava/lang/Object;
    invoke-direct {v7, v6}, Landroid/support/place/rpc/RpcData;-><init>(Lorg/json/JSONObject;)V

    .local v7, obj:Landroid/support/place/rpc/RpcData;
    move-object v6, v7

    .line 444
    .end local v7           #obj:Landroid/support/place/rpc/RpcData;
    .restart local v6       #obj:Ljava/lang/Object;
    :cond_30
    instance-of v8, v6, Landroid/support/place/rpc/RpcData;

    if-nez v8, :cond_6a

    .line 446
    new-instance v8, Ljava/lang/ClassCastException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "elment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of list \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" is not "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "an RpcData"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_63
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_63} :catch_63

    .line 452
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<TU;>;"
    .end local v5           #o:Ljava/lang/Object;
    .end local v6           #obj:Ljava/lang/Object;
    :catch_63
    move-exception v2

    .line 453
    .local v2, e:Lorg/json/JSONException;
    new-instance v8, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v8, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v8

    .line 449
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v1       #array:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<TU;>;"
    .restart local v5       #o:Ljava/lang/Object;
    .restart local v6       #obj:Ljava/lang/Object;
    :cond_6a
    :try_start_6a
    check-cast v6, Landroid/support/place/rpc/RpcData;

    .end local v6           #obj:Ljava/lang/Object;
    invoke-interface {p2, v6}, Landroid/support/place/rpc/Flattenable$Creator;->createFromRpcData(Landroid/support/place/rpc/RpcData;)Landroid/support/place/rpc/Flattenable;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_6a .. :try_end_73} :catch_63

    .line 439
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a
.end method

.method public getFloat(Ljava/lang/String;)F
    .registers 5
    .parameter "key"

    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_8

    move-result-wide v1

    double-to-float v1, v1

    return v1

    .line 182
    :catch_8
    move-exception v0

    .line 183
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v1, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v1
.end method

.method public getInteger(Ljava/lang/String;)I
    .registers 4
    .parameter "key"

    .prologue
    .line 165
    :try_start_0
    iget-object v1, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 166
    :catch_7
    move-exception v0

    .line 167
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v1, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v1
.end method

.method public getList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 14
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TU;>;)",
            "Ljava/util/List",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 403
    .local p2, cl:Ljava/lang/Class;,"Ljava/lang/Class<TU;>;"
    :try_start_0
    iget-object v8, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v8, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 404
    .local v5, o:Ljava/lang/Object;
    sget-object v8, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v8, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 405
    const/4 v4, 0x0

    .line 422
    :cond_f
    return-object v4

    .line 408
    :cond_10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v4, list:Ljava/util/List;,"Ljava/util/List<TU;>;"
    move-object v0, v5

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    .line 411
    .local v1, array:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_f

    .line 412
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 413
    .local v6, obj:Ljava/lang/Object;
    instance-of v8, v6, Lorg/json/JSONObject;

    if-eqz v8, :cond_30

    .line 414
    new-instance v7, Landroid/support/place/rpc/RpcData;

    check-cast v6, Lorg/json/JSONObject;

    .end local v6           #obj:Ljava/lang/Object;
    invoke-direct {v7, v6}, Landroid/support/place/rpc/RpcData;-><init>(Lorg/json/JSONObject;)V

    .local v7, obj:Landroid/support/place/rpc/RpcData;
    move-object v6, v7

    .line 416
    .end local v7           #obj:Landroid/support/place/rpc/RpcData;
    .restart local v6       #obj:Ljava/lang/Object;
    :cond_30
    invoke-virtual {p2, v6}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6e

    .line 417
    new-instance v8, Ljava/lang/ClassCastException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "elment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " of list \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" is not "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_67
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_67} :catch_67

    .line 423
    .end local v1           #array:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<TU;>;"
    .end local v5           #o:Ljava/lang/Object;
    .end local v6           #obj:Ljava/lang/Object;
    :catch_67
    move-exception v2

    .line 424
    .local v2, e:Lorg/json/JSONException;
    new-instance v8, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v8, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v8

    .line 420
    .end local v2           #e:Lorg/json/JSONException;
    .restart local v1       #array:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<TU;>;"
    .restart local v5       #o:Ljava/lang/Object;
    .restart local v6       #obj:Ljava/lang/Object;
    :cond_6e
    :try_start_6e
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_6e .. :try_end_71} :catch_67

    .line 411
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 5
    .parameter "key"

    .prologue
    .line 213
    :try_start_0
    iget-object v1, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v1

    return-wide v1

    .line 214
    :catch_7
    move-exception v0

    .line 215
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v1, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v1
.end method

.method public getRpcData(Ljava/lang/String;)Landroid/support/place/rpc/RpcData;
    .registers 5
    .parameter "key"

    .prologue
    .line 229
    :try_start_0
    iget-object v2, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 230
    .local v1, value:Ljava/lang/Object;
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    .end local v1           #value:Ljava/lang/Object;
    :goto_f
    return-object v2

    .restart local v1       #value:Ljava/lang/Object;
    :cond_10
    new-instance v2, Landroid/support/place/rpc/RpcData;

    check-cast v1, Lorg/json/JSONObject;

    .end local v1           #value:Ljava/lang/Object;
    invoke-direct {v2, v1}, Landroid/support/place/rpc/RpcData;-><init>(Lorg/json/JSONObject;)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_f

    .line 231
    :catch_18
    move-exception v0

    .line 232
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v2, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v2
.end method

.method public getRpcDataList(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/rpc/RpcData;",
            ">;"
        }
    .end annotation

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
    .registers 5
    .parameter "key"

    .prologue
    .line 140
    :try_start_0
    iget-object v2, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 141
    .local v1, value:Ljava/lang/Object;
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 143
    const/4 v1, 0x0

    .line 147
    .end local v1           #value:Ljava/lang/Object;
    :goto_f
    return-object v1

    .line 144
    .restart local v1       #value:Ljava/lang/Object;
    :cond_10
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 145
    check-cast v1, Ljava/lang/String;

    goto :goto_f

    .line 146
    :cond_17
    if-eqz v1, :cond_1e

    .line 147
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    .line 149
    :cond_1e
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_24

    .line 150
    .end local v1           #value:Ljava/lang/Object;
    :catch_24
    move-exception v0

    .line 151
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Landroid/support/place/rpc/RpcData$KeyNotFoundException;

    invoke-direct {v2, p0}, Landroid/support/place/rpc/RpcData$KeyNotFoundException;-><init>(Landroid/support/place/rpc/RpcData;)V

    throw v2
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3
    .parameter "key"

    .prologue
    .line 522
    iget-object v0, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "key"
    .parameter "bmp"

    .prologue
    .line 254
    if-nez p2, :cond_11

    .line 256
    :try_start_2
    iget-object v3, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    sget-object v4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_9} :catch_a

    .line 270
    :goto_9
    return-void

    .line 257
    :catch_a
    move-exception v2

    .line 258
    .local v2, ex:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 261
    .end local v2           #ex:Lorg/json/JSONException;
    :cond_11
    new-instance v0, Landroid/support/place/rpc/RpcData;

    invoke-direct {v0}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 262
    .local v0, b:Landroid/support/place/rpc/RpcData;
    const-string v3, "bmp_encoding"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/support/place/rpc/RpcData;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v3, "bmp_width"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 264
    const-string v3, "bmp_height"

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/support/place/rpc/RpcData;->putInteger(Ljava/lang/String;I)V

    .line 265
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 266
    .local v1, buff:Ljava/nio/ByteBuffer;
    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 267
    const-string v3, "bmp_data"

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/support/place/rpc/RpcData;->putByteArray(Ljava/lang/String;[B)V

    .line 268
    invoke-virtual {p0, p1, v0}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    goto :goto_9
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 88
    return-void

    .line 85
    :catch_6
    move-exception v0

    .line 86
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public putByteArray(Ljava/lang/String;[B)V
    .registers 4
    .parameter "key"
    .parameter "value"

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

.method public putFlattenable(Ljava/lang/String;Landroid/support/place/rpc/Flattenable;)V
    .registers 7
    .parameter "key"
    .parameter "obj"

    .prologue
    .line 290
    if-nez p2, :cond_11

    .line 292
    :try_start_2
    iget-object v2, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_9} :catch_a

    .line 301
    :goto_9
    return-void

    .line 293
    :catch_a
    move-exception v0

    .line 294
    .local v0, ex:Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 297
    .end local v0           #ex:Lorg/json/JSONException;
    :cond_11
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 298
    .local v1, o:Landroid/support/place/rpc/RpcData;
    invoke-interface {p2, v1}, Landroid/support/place/rpc/Flattenable;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 299
    invoke-virtual {p0, p1, v1}, Landroid/support/place/rpc/RpcData;->putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V

    goto :goto_9
.end method

.method public putFlattenableList(Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U::",
            "Landroid/support/place/rpc/Flattenable;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p2, value:Ljava/util/List;,"Ljava/util/List<TU;>;"
    if-nez p2, :cond_11

    .line 336
    :try_start_2
    iget-object v6, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v6, p1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_9} :catch_a

    .line 357
    :goto_9
    return-void

    .line 337
    :catch_a
    move-exception v3

    .line 338
    .local v3, ex:Lorg/json/JSONException;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 343
    .end local v3           #ex:Lorg/json/JSONException;
    :cond_11
    if-eqz p2, :cond_37

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 345
    .local v5, size:I
    :goto_17
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 346
    .local v0, array:Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1d
    if-ge v4, v5, :cond_39

    .line 347
    new-instance v1, Landroid/support/place/rpc/RpcData;

    invoke-direct {v1}, Landroid/support/place/rpc/RpcData;-><init>()V

    .line 348
    .local v1, d:Landroid/support/place/rpc/RpcData;
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/place/rpc/Flattenable;

    invoke-interface {v6, v1}, Landroid/support/place/rpc/Flattenable;->writeToRpcData(Landroid/support/place/rpc/RpcData;)V

    .line 349
    invoke-virtual {v1}, Landroid/support/place/rpc/RpcData;->getRpcDataModel()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 346
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 343
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #d:Landroid/support/place/rpc/RpcData;
    .end local v4           #i:I
    .end local v5           #size:I
    :cond_37
    const/4 v5, 0x0

    goto :goto_17

    .line 353
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v4       #i:I
    .restart local v5       #size:I
    :cond_39
    :try_start_39
    iget-object v6, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v6, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_3e} :catch_3f

    goto :goto_9

    .line 354
    :catch_3f
    move-exception v2

    .line 355
    .local v2, e:Lorg/json/JSONException;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6
.end method

.method public putFloat(Ljava/lang/String;F)V
    .registers 7
    .parameter "key"
    .parameter "value"

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    float-to-double v2, p2

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6} :catch_7

    .line 177
    return-void

    .line 174
    :catch_7
    move-exception v0

    .line 175
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public putInteger(Ljava/lang/String;I)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 161
    return-void

    .line 158
    :catch_6
    move-exception v0

    .line 159
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public putList(Ljava/lang/String;Ljava/util/List;)V
    .registers 11
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p2, value:Ljava/util/List;,"Ljava/util/List<TU;>;"
    if-nez p2, :cond_11

    .line 362
    :try_start_2
    iget-object v6, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v6, p1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_9} :catch_a

    .line 387
    :goto_9
    return-void

    .line 363
    :catch_a
    move-exception v2

    .line 364
    .local v2, ex:Lorg/json/JSONException;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 369
    .end local v2           #ex:Lorg/json/JSONException;
    :cond_11
    if-eqz p2, :cond_33

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 371
    .local v5, size:I
    :goto_17
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 372
    .local v0, array:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1d
    if-ge v3, v5, :cond_39

    .line 373
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 375
    .local v4, obj:Ljava/lang/Object;,"TU;"
    instance-of v6, v4, Landroid/support/place/rpc/RpcData;

    if-eqz v6, :cond_35

    .line 376
    check-cast v4, Landroid/support/place/rpc/RpcData;

    .end local v4           #obj:Ljava/lang/Object;,"TU;"
    invoke-virtual {v4}, Landroid/support/place/rpc/RpcData;->getRpcDataModel()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 372
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 369
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v5           #size:I
    :cond_33
    const/4 v5, 0x0

    goto :goto_17

    .line 378
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v4       #obj:Ljava/lang/Object;,"TU;"
    .restart local v5       #size:I
    :cond_35
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_30

    .line 383
    .end local v4           #obj:Ljava/lang/Object;,"TU;"
    :cond_39
    :try_start_39
    iget-object v6, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v6, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_39 .. :try_end_3e} :catch_3f

    goto :goto_9

    .line 384
    :catch_3f
    move-exception v1

    .line 385
    .local v1, e:Lorg/json/JSONException;
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6
.end method

.method public putLong(Ljava/lang/String;J)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 209
    return-void

    .line 206
    :catch_6
    move-exception v0

    .line 207
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public putRpcData(Ljava/lang/String;Landroid/support/place/rpc/RpcData;)V
    .registers 6
    .parameter "key"
    .parameter "value"

    .prologue
    .line 221
    :try_start_0
    iget-object v2, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    if-nez p2, :cond_a

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_6
    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    return-void

    .line 221
    :cond_a
    invoke-virtual {p2}, Landroid/support/place/rpc/RpcData;->getRpcDataModel()Lorg/json/JSONObject;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v1

    goto :goto_6

    .line 222
    :catch_f
    move-exception v0

    .line 223
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public putRpcDataList(Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/rpc/RpcData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p2, value:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/rpc/RpcData;>;"
    if-nez p2, :cond_11

    .line 312
    :try_start_2
    iget-object v5, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    sget-object v6, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_9} :catch_a

    .line 331
    :goto_9
    return-void

    .line 313
    :catch_a
    move-exception v2

    .line 314
    .local v2, ex:Lorg/json/JSONException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 319
    .end local v2           #ex:Lorg/json/JSONException;
    :cond_11
    if-eqz p2, :cond_2f

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    .line 321
    .local v4, size:I
    :goto_17
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 322
    .local v0, array:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1d
    if-ge v3, v4, :cond_31

    .line 323
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/place/rpc/RpcData;

    invoke-virtual {v5}, Landroid/support/place/rpc/RpcData;->getRpcDataModel()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 322
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 319
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #size:I
    :cond_2f
    const/4 v4, 0x0

    goto :goto_17

    .line 327
    .restart local v0       #array:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v4       #size:I
    :cond_31
    :try_start_31
    iget-object v5, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v5, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_36} :catch_37

    goto :goto_9

    .line 328
    :catch_37
    move-exception v1

    .line 329
    .local v1, e:Lorg/json/JSONException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "key"
    .parameter "value"

    .prologue
    .line 132
    :try_start_0
    iget-object v1, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    if-nez p2, :cond_6

    sget-object p2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .end local p2
    :cond_6
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9} :catch_a

    .line 136
    return-void

    .line 133
    :catch_a
    move-exception v0

    .line 134
    .local v0, e:Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .parameter "in"

    .prologue
    .line 553
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 555
    .local v0, len:I
    new-array v1, v0, [B

    .line 556
    .local v1, serialized:[B
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 557
    invoke-virtual {p0, v1}, Landroid/support/place/rpc/RpcData;->deserialize([B)V

    .line 558
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3
    .parameter "key"

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
    .registers 6

    .prologue
    .line 488
    iget-object v3, p0, Landroid/support/place/rpc/RpcData;->mRpcData:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, jsonSerial:Ljava/lang/String;
    :try_start_6
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v0

    .line 496
    .local v0, bytes:[B
    return-object v0

    .line 492
    .end local v0           #bytes:[B
    :catch_d
    move-exception v1

    .line 494
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "UTF-8 is not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
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
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 562
    invoke-virtual {p0}, Landroid/support/place/rpc/RpcData;->serialize()[B

    move-result-object v0

    .line 563
    .local v0, serial:[B
    array-length v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 565
    return-void
.end method
