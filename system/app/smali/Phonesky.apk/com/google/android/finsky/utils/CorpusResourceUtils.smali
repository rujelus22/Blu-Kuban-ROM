.class public Lcom/google/android/finsky/utils/CorpusResourceUtils;
.super Ljava/lang/Object;
.source "CorpusResourceUtils.java"


# static fields
.field private static final sPromoPlaceholders:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sThumbnailIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sThumbnailIcons:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sPromoPlaceholders:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRateReview(I)Z
    .registers 2
    .parameter "backend"

    .prologue
    .line 239
    packed-switch p0, :pswitch_data_8

    .line 244
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 242
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 239
    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static getBackendDarkColor(Landroid/content/Context;I)I
    .registers 4
    .parameter "context"
    .parameter "channelId"

    .prologue
    .line 94
    packed-switch p1, :pswitch_data_20

    .line 108
    const v0, 0x7f0a001d

    .line 111
    .local v0, id:I
    :goto_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 96
    .end local v0           #id:I
    :pswitch_f
    const v0, 0x7f0a001d

    .line 97
    .restart local v0       #id:I
    goto :goto_6

    .line 99
    .end local v0           #id:I
    :pswitch_13
    const v0, 0x7f0a001e

    .line 100
    .restart local v0       #id:I
    goto :goto_6

    .line 102
    .end local v0           #id:I
    :pswitch_17
    const v0, 0x7f0a001f

    .line 103
    .restart local v0       #id:I
    goto :goto_6

    .line 105
    .end local v0           #id:I
    :pswitch_1b
    const v0, 0x7f0a0020

    .line 106
    .restart local v0       #id:I
    goto :goto_6

    .line 94
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1b
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method

.method public static getBackendForegroundColor(Landroid/content/Context;I)I
    .registers 4
    .parameter "context"
    .parameter "channelId"

    .prologue
    .line 68
    packed-switch p1, :pswitch_data_20

    .line 82
    const v0, 0x7f0a0019

    .line 85
    .local v0, id:I
    :goto_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 70
    .end local v0           #id:I
    :pswitch_f
    const v0, 0x7f0a0019

    .line 71
    .restart local v0       #id:I
    goto :goto_6

    .line 73
    .end local v0           #id:I
    :pswitch_13
    const v0, 0x7f0a001a

    .line 74
    .restart local v0       #id:I
    goto :goto_6

    .line 76
    .end local v0           #id:I
    :pswitch_17
    const v0, 0x7f0a001b

    .line 77
    .restart local v0       #id:I
    goto :goto_6

    .line 79
    .end local v0           #id:I
    :pswitch_1b
    const v0, 0x7f0a001c

    .line 80
    .restart local v0       #id:I
    goto :goto_6

    .line 68
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1b
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method

.method public static getBackendHintColor(Landroid/content/Context;I)I
    .registers 4
    .parameter "context"
    .parameter "channelId"

    .prologue
    .line 41
    packed-switch p1, :pswitch_data_20

    .line 55
    const v0, 0x7f0a0015

    .line 58
    .local v0, id:I
    :goto_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 43
    .end local v0           #id:I
    :pswitch_f
    const v0, 0x7f0a0015

    .line 44
    .restart local v0       #id:I
    goto :goto_6

    .line 46
    .end local v0           #id:I
    :pswitch_13
    const v0, 0x7f0a0016

    .line 47
    .restart local v0       #id:I
    goto :goto_6

    .line 49
    .end local v0           #id:I
    :pswitch_17
    const v0, 0x7f0a0017

    .line 50
    .restart local v0       #id:I
    goto :goto_6

    .line 52
    .end local v0           #id:I
    :pswitch_1b
    const v0, 0x7f0a0018

    .line 53
    .restart local v0       #id:I
    goto :goto_6

    .line 41
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1b
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method

.method public static getCorpusCellContentDescriptionResource(I)I
    .registers 4
    .parameter "backend"

    .prologue
    .line 219
    packed-switch p0, :pswitch_data_2a

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported backend ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :pswitch_22
    const v0, 0x7f07019f

    .line 225
    :goto_25
    return v0

    :pswitch_26
    const v0, 0x7f07019e

    goto :goto_25

    .line 219
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_22
    .end packed-switch
.end method

.method public static getCorpusDetailsButtonLayoutResource(I)I
    .registers 4
    .parameter "backend"

    .prologue
    .line 201
    packed-switch p0, :pswitch_data_32

    .line 211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported backend ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :pswitch_22
    const v0, 0x7f04002f

    .line 209
    :goto_25
    return v0

    .line 205
    :pswitch_26
    const v0, 0x7f040032

    goto :goto_25

    .line 207
    :pswitch_2a
    const v0, 0x7f04003f

    goto :goto_25

    .line 209
    :pswitch_2e
    const v0, 0x7f040040

    goto :goto_25

    .line 201
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_26
        :pswitch_2e
        :pswitch_22
        :pswitch_2a
    .end packed-switch
.end method

.method public static getCorpusDetailsLayoutResource(I)I
    .registers 4
    .parameter "backend"

    .prologue
    .line 182
    packed-switch p0, :pswitch_data_32

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported backend ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_22
    const v0, 0x7f04004e

    .line 190
    :goto_25
    return v0

    .line 186
    :pswitch_26
    const v0, 0x7f040058

    goto :goto_25

    .line 188
    :pswitch_2a
    const v0, 0x7f04004f

    goto :goto_25

    .line 190
    :pswitch_2e
    const v0, 0x7f040057

    goto :goto_25

    .line 182
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_2e
    .end packed-switch
.end method

.method public static getCorpusMyCollectionDescription(I)Ljava/lang/String;
    .registers 7
    .parameter "backend"

    .prologue
    const/4 v4, 0x0

    .line 255
    if-nez p0, :cond_4

    .line 256
    const/4 p0, 0x3

    .line 259
    :cond_4
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    .line 260
    .local v3, toc:Lcom/google/android/finsky/api/model/DfeToc;
    if-nez v3, :cond_f

    .line 281
    :cond_e
    :goto_e
    return-object v4

    .line 264
    :cond_f
    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v0

    .line 265
    .local v0, corpusList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;>;"
    if-eqz v0, :cond_e

    .line 270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;

    .line 271
    .local v2, metadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasBackend()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 275
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v5

    if-ne v5, p0, :cond_19

    .line 276
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryName()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 277
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLibraryName()Ljava/lang/String;

    move-result-object v4

    goto :goto_e
.end method

.method public static getCorpusMyCollectionIcon(I)I
    .registers 2
    .parameter "backend"

    .prologue
    .line 395
    packed-switch p0, :pswitch_data_14

    .line 403
    :pswitch_3
    const v0, 0x7f02005b

    :goto_6
    return v0

    .line 397
    :pswitch_7
    const v0, 0x7f02005c

    goto :goto_6

    .line 399
    :pswitch_b
    const v0, 0x7f02005d

    goto :goto_6

    .line 401
    :pswitch_f
    const v0, 0x7f02005e

    goto :goto_6

    .line 395
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_f
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method

.method public static getCorpusSpinnerDrawable(I)I
    .registers 2
    .parameter "channelId"

    .prologue
    .line 289
    packed-switch p0, :pswitch_data_14

    .line 297
    :pswitch_3
    const v0, 0x7f0200a2

    :goto_6
    return v0

    .line 291
    :pswitch_7
    const v0, 0x7f0200a3

    goto :goto_6

    .line 293
    :pswitch_b
    const v0, 0x7f0200a5

    goto :goto_6

    .line 295
    :pswitch_f
    const v0, 0x7f0200a6

    goto :goto_6

    .line 289
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_f
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method

.method public static getCorpusWatermarkIconBig(I)I
    .registers 2
    .parameter "backend"

    .prologue
    const v0, 0x7f020054

    .line 120
    packed-switch p0, :pswitch_data_14

    .line 130
    :goto_6
    :pswitch_6
    return v0

    .line 124
    :pswitch_7
    const v0, 0x7f020055

    goto :goto_6

    .line 126
    :pswitch_b
    const v0, 0x7f020056

    goto :goto_6

    .line 128
    :pswitch_f
    const v0, 0x7f020057

    goto :goto_6

    .line 120
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_f
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public static getDescriptionHeaderStringId(I)I
    .registers 2
    .parameter "backend"

    .prologue
    .line 169
    packed-switch p0, :pswitch_data_c

    .line 173
    const v0, 0x7f07011d

    :goto_6
    return v0

    .line 171
    :pswitch_7
    const v0, 0x7f07011b

    goto :goto_6

    .line 169
    nop

    :pswitch_data_c
    .packed-switch 0x4
        :pswitch_7
    .end packed-switch
.end method

.method public static getDetailsIconWidth(Landroid/content/Context;I)I
    .registers 6
    .parameter "context"
    .parameter "backend"

    .prologue
    .line 309
    packed-switch p1, :pswitch_data_3a

    .line 323
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported backend ID ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :pswitch_22
    const v0, 0x7f0b0020

    .line 325
    .local v0, resourceId:I
    :goto_25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 314
    .end local v0           #resourceId:I
    :pswitch_2e
    const v0, 0x7f0b0022

    .line 315
    .restart local v0       #resourceId:I
    goto :goto_25

    .line 317
    .end local v0           #resourceId:I
    :pswitch_32
    const v0, 0x7f0b001e

    .line 318
    .restart local v0       #resourceId:I
    goto :goto_25

    .line 320
    .end local v0           #resourceId:I
    :pswitch_36
    const v0, 0x7f0b0024

    .line 321
    .restart local v0       #resourceId:I
    goto :goto_25

    .line 309
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_36
        :pswitch_32
        :pswitch_2e
    .end packed-switch
.end method

.method public static getIconWidth(Landroid/content/Context;I)I
    .registers 4
    .parameter "context"
    .parameter "backend"

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_20

    .line 146
    :pswitch_7
    const v1, 0x7f0b0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_e
    return v1

    .line 142
    :pswitch_f
    const v1, 0x7f0b0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_e

    .line 144
    :pswitch_17
    const v1, 0x7f0b0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_e

    .line 140
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_f
        :pswitch_7
        :pswitch_7
        :pswitch_17
    .end packed-switch
.end method

.method public static getPlaceholderIcon(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "backend"
    .parameter "resources"

    .prologue
    .line 336
    sget-object v3, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sThumbnailIcons:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 337
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_22

    .line 338
    :cond_10
    invoke-static {p0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderIconResource(I)I

    move-result v2

    .line 339
    .local v2, resourceId:I
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/lang/ref/SoftReference;

    .end local v1           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 341
    .restart local v1       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    sget-object v3, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sThumbnailIcons:Landroid/util/SparseArray;

    invoke-virtual {v3, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #resourceId:I
    :cond_22
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    return-object v3
.end method

.method private static getPlaceholderIconResource(I)I
    .registers 4
    .parameter "backend"

    .prologue
    .line 347
    packed-switch p0, :pswitch_data_32

    .line 357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported backend ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :pswitch_22
    const v0, 0x7f02007b

    .line 355
    :goto_25
    return v0

    .line 351
    :pswitch_26
    const v0, 0x7f02007d

    goto :goto_25

    .line 353
    :pswitch_2a
    const v0, 0x7f02007c

    goto :goto_25

    .line 355
    :pswitch_2e
    const v0, 0x7f02007a

    goto :goto_25

    .line 347
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_22
        :pswitch_26
        :pswitch_2e
        :pswitch_2a
    .end packed-switch
.end method

.method public static getPlaceholderPromo(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "backend"
    .parameter "resources"

    .prologue
    .line 362
    sget-object v3, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sPromoPlaceholders:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 363
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_22

    .line 364
    :cond_10
    invoke-static {p0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderPromoResource(I)I

    move-result v2

    .line 365
    .local v2, resourceId:I
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 366
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/lang/ref/SoftReference;

    .end local v1           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 367
    .restart local v1       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    sget-object v3, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sPromoPlaceholders:Landroid/util/SparseArray;

    invoke-virtual {v3, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #resourceId:I
    :cond_22
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    return-object v3
.end method

.method private static getPlaceholderPromoResource(I)I
    .registers 4
    .parameter "backend"

    .prologue
    .line 373
    packed-switch p0, :pswitch_data_32

    .line 383
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported backend ID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :pswitch_22
    const v0, 0x7f020095

    .line 381
    :goto_25
    return v0

    .line 377
    :pswitch_26
    const v0, 0x7f020097

    goto :goto_25

    .line 379
    :pswitch_2a
    const v0, 0x7f020096

    goto :goto_25

    .line 381
    :pswitch_2e
    const v0, 0x7f020094

    goto :goto_25

    .line 373
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_22
        :pswitch_26
        :pswitch_2e
        :pswitch_2a
    .end packed-switch
.end method

.method public static getRelatedIconWidth(Landroid/content/Context;I)I
    .registers 4
    .parameter "context"
    .parameter "backend"

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 156
    .local v0, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_18

    .line 160
    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_e
    return v1

    .line 158
    :pswitch_f
    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_e

    .line 156
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method
