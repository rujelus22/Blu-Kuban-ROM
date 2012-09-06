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
    .line 227
    packed-switch p0, :pswitch_data_8

    .line 232
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 230
    :pswitch_5
    const/4 v0, 0x1

    goto :goto_4

    .line 227
    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static getAddedToLibraryDrawableId(I)I
    .registers 2
    .parameter "backend"

    .prologue
    .line 469
    packed-switch p0, :pswitch_data_18

    .line 479
    :pswitch_3
    const v0, 0x7f020064

    :goto_6
    return v0

    .line 471
    :pswitch_7
    const v0, 0x7f020095

    goto :goto_6

    .line 473
    :pswitch_b
    const v0, 0x7f020096

    goto :goto_6

    .line 475
    :pswitch_f
    const v0, 0x7f020065

    goto :goto_6

    .line 477
    :pswitch_13
    const v0, 0x7f020076

    goto :goto_6

    .line 469
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_13
    .end packed-switch
.end method

.method public static getBackendDarkColor(Landroid/content/Context;I)I
    .registers 4
    .parameter "context"
    .parameter "channelId"

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_24

    .line 117
    :pswitch_3
    const v0, 0x7f0a001b

    .line 120
    .local v0, id:I
    :goto_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 102
    .end local v0           #id:I
    :pswitch_f
    const v0, 0x7f0a001b

    .line 103
    .restart local v0       #id:I
    goto :goto_6

    .line 105
    .end local v0           #id:I
    :pswitch_13
    const v0, 0x7f0a001c

    .line 106
    .restart local v0       #id:I
    goto :goto_6

    .line 108
    .end local v0           #id:I
    :pswitch_17
    const v0, 0x7f0a001f

    .line 109
    .restart local v0       #id:I
    goto :goto_6

    .line 111
    .end local v0           #id:I
    :pswitch_1b
    const v0, 0x7f0a001d

    .line 112
    .restart local v0       #id:I
    goto :goto_6

    .line 114
    .end local v0           #id:I
    :pswitch_1f
    const v0, 0x7f0a001e

    .line 115
    .restart local v0       #id:I
    goto :goto_6

    .line 100
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1f
        :pswitch_f
        :pswitch_1b
        :pswitch_3
        :pswitch_17
    .end packed-switch
.end method

.method public static getBackendForegroundColor(Landroid/content/Context;I)I
    .registers 4
    .parameter "context"
    .parameter "channelId"

    .prologue
    .line 71
    packed-switch p1, :pswitch_data_24

    .line 88
    :pswitch_3
    const v0, 0x7f0a0016

    .line 91
    .local v0, id:I
    :goto_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    return v1

    .line 73
    .end local v0           #id:I
    :pswitch_f
    const v0, 0x7f0a0016

    .line 74
    .restart local v0       #id:I
    goto :goto_6

    .line 76
    .end local v0           #id:I
    :pswitch_13
    const v0, 0x7f0a0017

    .line 77
    .restart local v0       #id:I
    goto :goto_6

    .line 79
    .end local v0           #id:I
    :pswitch_17
    const v0, 0x7f0a001a

    .line 80
    .restart local v0       #id:I
    goto :goto_6

    .line 82
    .end local v0           #id:I
    :pswitch_1b
    const v0, 0x7f0a0018

    .line 83
    .restart local v0       #id:I
    goto :goto_6

    .line 85
    .end local v0           #id:I
    :pswitch_1f
    const v0, 0x7f0a0019

    .line 86
    .restart local v0       #id:I
    goto :goto_6

    .line 71
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1f
        :pswitch_f
        :pswitch_1b
        :pswitch_3
        :pswitch_17
    .end packed-switch
.end method

.method public static getBackendHintColor(Landroid/content/Context;I)I
    .registers 4
    .parameter "context"
    .parameter "channelId"

    .prologue
    .line 41
    packed-switch p1, :pswitch_data_24

    .line 58
    :pswitch_3
    const v0, 0x7f0a0011

    .line 61
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
    const v0, 0x7f0a0011

    .line 44
    .restart local v0       #id:I
    goto :goto_6

    .line 46
    .end local v0           #id:I
    :pswitch_13
    const v0, 0x7f0a0012

    .line 47
    .restart local v0       #id:I
    goto :goto_6

    .line 49
    .end local v0           #id:I
    :pswitch_17
    const v0, 0x7f0a0015

    .line 50
    .restart local v0       #id:I
    goto :goto_6

    .line 52
    .end local v0           #id:I
    :pswitch_1b
    const v0, 0x7f0a0013

    .line 53
    .restart local v0       #id:I
    goto :goto_6

    .line 55
    .end local v0           #id:I
    :pswitch_1f
    const v0, 0x7f0a0014

    .line 56
    .restart local v0       #id:I
    goto :goto_6

    .line 41
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1f
        :pswitch_f
        :pswitch_1b
        :pswitch_3
        :pswitch_17
    .end packed-switch
.end method

.method public static getCorpusCellContentDescriptionResource(I)I
    .registers 4
    .parameter "backend"

    .prologue
    .line 183
    packed-switch p0, :pswitch_data_2e

    .line 193
    :pswitch_3
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

    .line 185
    :pswitch_22
    const v0, 0x7f0701d6

    .line 191
    :goto_25
    return v0

    .line 187
    :pswitch_26
    const v0, 0x7f0701d7

    goto :goto_25

    .line 191
    :pswitch_2a
    const v0, 0x7f0701d5

    goto :goto_25

    .line 183
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_22
        :pswitch_3
        :pswitch_26
    .end packed-switch
.end method

.method public static getCorpusCellContentLongDescriptionResource(I)I
    .registers 4
    .parameter "backend"

    .prologue
    .line 205
    packed-switch p0, :pswitch_data_2e

    .line 215
    :pswitch_3
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

    .line 207
    :pswitch_22
    const v0, 0x7f0701d9

    .line 213
    :goto_25
    return v0

    .line 209
    :pswitch_26
    const v0, 0x7f0701da

    goto :goto_25

    .line 213
    :pswitch_2a
    const v0, 0x7f0701d8

    goto :goto_25

    .line 205
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_22
        :pswitch_3
        :pswitch_26
    .end packed-switch
.end method

.method public static getCorpusDetailsLayoutResource(I)I
    .registers 4
    .parameter "backend"

    .prologue
    .line 163
    packed-switch p0, :pswitch_data_2a

    .line 172
    :pswitch_3
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

    .line 165
    :pswitch_22
    const v0, 0x7f040051

    .line 170
    :goto_25
    return v0

    :pswitch_26
    const v0, 0x7f040058

    goto :goto_25

    .line 163
    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_26
        :pswitch_22
        :pswitch_26
        :pswitch_3
        :pswitch_26
    .end packed-switch
.end method

.method public static getCorpusMyCollectionDescription(I)Ljava/lang/String;
    .registers 7
    .parameter "backend"

    .prologue
    const/4 v4, 0x0

    .line 243
    if-nez p0, :cond_4

    .line 244
    const/4 p0, 0x3

    .line 247
    :cond_4
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    .line 248
    .local v3, toc:Lcom/google/android/finsky/api/model/DfeToc;
    if-nez v3, :cond_f

    .line 269
    :cond_e
    :goto_e
    return-object v4

    .line 252
    :cond_f
    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/DfeToc;->getCorpusList()Ljava/util/List;

    move-result-object v0

    .line 253
    .local v0, corpusList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;>;"
    if-eqz v0, :cond_e

    .line 258
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

    .line 259
    .local v2, metadata:Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasBackend()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 263
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getBackend()I

    move-result v5

    if-ne v5, p0, :cond_19

    .line 264
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->hasLibraryName()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 265
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Toc$CorpusMetadata;->getLibraryName()Ljava/lang/String;

    move-result-object v4

    goto :goto_e
.end method

.method public static getCorpusMyCollectionIcon(I)I
    .registers 2
    .parameter "backend"

    .prologue
    .line 412
    packed-switch p0, :pswitch_data_18

    .line 422
    :pswitch_3
    const v0, 0x7f02007f

    :goto_6
    return v0

    .line 414
    :pswitch_7
    const v0, 0x7f020080

    goto :goto_6

    .line 416
    :pswitch_b
    const v0, 0x7f020081

    goto :goto_6

    .line 418
    :pswitch_f
    const v0, 0x7f020082

    goto :goto_6

    .line 420
    :pswitch_13
    const v0, 0x7f020083

    goto :goto_6

    .line 412
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_7
        :pswitch_13
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_b
    .end packed-switch
.end method

.method public static getCorpusSpinnerDrawable(I)I
    .registers 2
    .parameter "channelId"

    .prologue
    .line 277
    packed-switch p0, :pswitch_data_14

    .line 286
    :pswitch_3
    const v0, 0x7f0200ea

    :goto_6
    return v0

    .line 280
    :pswitch_7
    const v0, 0x7f0200eb

    goto :goto_6

    .line 282
    :pswitch_b
    const v0, 0x7f0200ed

    goto :goto_6

    .line 284
    :pswitch_f
    const v0, 0x7f0200ee

    goto :goto_6

    .line 277
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_f
        :pswitch_3
        :pswitch_b
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public static getCorpusWatermarkIconBig(I)I
    .registers 2
    .parameter "backend"

    .prologue
    const v0, 0x7f020077

    .line 129
    packed-switch p0, :pswitch_data_18

    .line 141
    :goto_6
    :pswitch_6
    return v0

    .line 133
    :pswitch_7
    const v0, 0x7f020078

    goto :goto_6

    .line 135
    :pswitch_b
    const v0, 0x7f020079

    goto :goto_6

    .line 137
    :pswitch_f
    const v0, 0x7f02007a

    goto :goto_6

    .line 139
    :pswitch_13
    const v0, 0x7f02007b

    goto :goto_6

    .line 129
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_7
        :pswitch_13
        :pswitch_6
        :pswitch_f
        :pswitch_6
        :pswitch_b
    .end packed-switch
.end method

.method public static getDescriptionHeaderStringId(I)I
    .registers 2
    .parameter "backend"

    .prologue
    .line 150
    packed-switch p0, :pswitch_data_c

    .line 154
    const v0, 0x7f070131

    :goto_6
    return v0

    .line 152
    :pswitch_7
    const v0, 0x7f07012f

    goto :goto_6

    .line 150
    nop

    :pswitch_data_c
    .packed-switch 0x4
        :pswitch_7
    .end packed-switch
.end method

.method public static getLargeDetailsIconWidth(Landroid/content/Context;I)I
    .registers 6
    .parameter "context"
    .parameter "backend"

    .prologue
    .line 298
    packed-switch p1, :pswitch_data_32

    .line 309
    :pswitch_3
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

    .line 302
    :pswitch_22
    const v0, 0x7f0b0019

    .line 311
    .local v0, resourceId:I
    :goto_25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 306
    .end local v0           #resourceId:I
    :pswitch_2e
    const v0, 0x7f0b001a

    .line 307
    .restart local v0       #resourceId:I
    goto :goto_25

    .line 298
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2e
        :pswitch_2e
        :pswitch_22
        :pswitch_3
        :pswitch_22
    .end packed-switch
.end method

.method public static getOpenButtonDrawableId(I)I
    .registers 4
    .parameter "backend"

    .prologue
    .line 450
    packed-switch p0, :pswitch_data_32

    .line 460
    :pswitch_3
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

    .line 452
    :pswitch_22
    const v0, 0x7f020069

    .line 458
    :goto_25
    return v0

    .line 454
    :pswitch_26
    const v0, 0x7f02006a

    goto :goto_25

    .line 456
    :pswitch_2a
    const v0, 0x7f020067

    goto :goto_25

    .line 458
    :pswitch_2e
    const v0, 0x7f020068

    goto :goto_25

    .line 450
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_26
        :pswitch_3
        :pswitch_22
        :pswitch_3
        :pswitch_2e
    .end packed-switch
.end method

.method public static getOpenButtonStringId(I)I
    .registers 2
    .parameter "backend"

    .prologue
    .line 432
    packed-switch p0, :pswitch_data_14

    .line 441
    :pswitch_3
    const v0, 0x7f07012a

    :goto_6
    return v0

    .line 434
    :pswitch_7
    const v0, 0x7f070100

    goto :goto_6

    .line 436
    :pswitch_b
    const v0, 0x7f07012c

    goto :goto_6

    .line 439
    :pswitch_f
    const v0, 0x7f070101

    goto :goto_6

    .line 432
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_f
    .end packed-switch
.end method

.method public static getPlaceholderIcon(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "backend"
    .parameter "resources"

    .prologue
    .line 348
    sget-object v3, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sThumbnailIcons:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 349
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_22

    .line 350
    :cond_10
    invoke-static {p0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderIconResource(I)I

    move-result v2

    .line 351
    .local v2, resourceId:I
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 352
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/lang/ref/SoftReference;

    .end local v1           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 353
    .restart local v1       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    sget-object v3, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sThumbnailIcons:Landroid/util/SparseArray;

    invoke-virtual {v3, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
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
    .line 359
    packed-switch p0, :pswitch_data_36

    .line 372
    :pswitch_3
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

    .line 361
    :pswitch_22
    const v0, 0x7f0200b3

    .line 370
    :goto_25
    return v0

    .line 363
    :pswitch_26
    const v0, 0x7f0200b4

    goto :goto_25

    .line 365
    :pswitch_2a
    const v0, 0x7f0200b6

    goto :goto_25

    .line 367
    :pswitch_2e
    const v0, 0x7f0200b5

    goto :goto_25

    .line 370
    :pswitch_32
    const v0, 0x7f0200b2

    goto :goto_25

    .line 359
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_32
        :pswitch_22
        :pswitch_2a
        :pswitch_32
        :pswitch_2e
        :pswitch_3
        :pswitch_26
    .end packed-switch
.end method

.method public static getPlaceholderPromo(ILandroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "backend"
    .parameter "resources"

    .prologue
    .line 377
    sget-object v3, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sPromoPlaceholders:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 378
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_22

    .line 379
    :cond_10
    invoke-static {p0}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getPlaceholderPromoResource(I)I

    move-result v2

    .line 380
    .local v2, resourceId:I
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 381
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Ljava/lang/ref/SoftReference;

    .end local v1           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 382
    .restart local v1       #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    sget-object v3, Lcom/google/android/finsky/utils/CorpusResourceUtils;->sPromoPlaceholders:Landroid/util/SparseArray;

    invoke-virtual {v3, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
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
    .line 388
    packed-switch p0, :pswitch_data_36

    .line 400
    :pswitch_3
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

    .line 390
    :pswitch_22
    const v0, 0x7f0200ce

    .line 398
    :goto_25
    return v0

    .line 392
    :pswitch_26
    const v0, 0x7f0200cf

    goto :goto_25

    .line 394
    :pswitch_2a
    const v0, 0x7f0200d1

    goto :goto_25

    .line 396
    :pswitch_2e
    const v0, 0x7f0200d0

    goto :goto_25

    .line 398
    :pswitch_32
    const v0, 0x7f0200cd

    goto :goto_25

    .line 388
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_22
        :pswitch_2a
        :pswitch_32
        :pswitch_2e
        :pswitch_3
        :pswitch_26
    .end packed-switch
.end method

.method public static getRegularDetailsIconHeight(Landroid/content/Context;I)I
    .registers 6
    .parameter "context"
    .parameter "backend"

    .prologue
    .line 322
    packed-switch p1, :pswitch_data_36

    .line 335
    :pswitch_3
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

    .line 324
    :pswitch_22
    const v0, 0x7f0b0018

    .line 337
    .local v0, resourceId:I
    :goto_25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1

    .line 329
    .end local v0           #resourceId:I
    :pswitch_2e
    const v0, 0x7f0b001a

    .line 330
    .restart local v0       #resourceId:I
    goto :goto_25

    .line 332
    .end local v0           #resourceId:I
    :pswitch_32
    const v0, 0x7f0b0019

    .line 333
    .restart local v0       #resourceId:I
    goto :goto_25

    .line 322
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_32
        :pswitch_22
        :pswitch_2e
        :pswitch_3
        :pswitch_2e
    .end packed-switch
.end method

.method public static getShareHeaderId(I)I
    .registers 2
    .parameter "backend"

    .prologue
    .line 487
    packed-switch p0, :pswitch_data_c

    .line 491
    const v0, 0x7f07016d

    :goto_6
    return v0

    .line 489
    :pswitch_7
    const v0, 0x7f07016e

    goto :goto_6

    .line 487
    nop

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_7
    .end packed-switch
.end method
