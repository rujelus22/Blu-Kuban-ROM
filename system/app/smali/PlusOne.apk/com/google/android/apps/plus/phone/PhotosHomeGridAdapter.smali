.class public Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;
.super Lcom/google/android/apps/plus/phone/EsCursorAdapter;
.source "PhotosHomeGridAdapter.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/PhotoHomeViewItem$OnMeasuredListener;


# static fields
.field private static final PHOTOID_INDEX:[I

.field private static final URL_INDEX:[I


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private final mRefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/views/PhotoHomeViewItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/views/PhotoHomeViewItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x5

    .line 36
    new-array v0, v1, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->URL_INDEX:[I

    .line 43
    new-array v0, v1, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->PHOTOID_INDEX:[I

    return-void

    .line 36
    :array_10
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    .line 43
    :array_1e
    .array-data 0x4
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/google/android/apps/plus/content/EsAccount;Landroid/widget/AbsListView;)V
    .registers 6
    .parameter "context"
    .parameter "cursor"
    .parameter "account"
    .parameter "gridView"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/EsCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mViews:Ljava/util/HashSet;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mRefs:Ljava/util/HashMap;

    .line 61
    iput-object p3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 62
    new-instance v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter$1;-><init>(Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;)V

    invoke-virtual {p4, v0}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mViews:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;Lcom/google/android/apps/plus/api/MediaRef;Lcom/google/android/apps/plus/views/PhotoHomeViewItem;)Ljava/util/HashSet;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->removeViewFromRefs(Lcom/google/android/apps/plus/api/MediaRef;Lcom/google/android/apps/plus/views/PhotoHomeViewItem;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method private addViewToRefs(Lcom/google/android/apps/plus/api/MediaRef;Lcom/google/android/apps/plus/views/PhotoHomeViewItem;)V
    .registers 5
    .parameter "ref"
    .parameter "viewItem"

    .prologue
    .line 309
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mRefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 310
    .local v0, viewSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/apps/plus/views/PhotoHomeViewItem;>;"
    if-nez v0, :cond_f

    .line 311
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #viewSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/apps/plus/views/PhotoHomeViewItem;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 313
    .restart local v0       #viewSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/apps/plus/views/PhotoHomeViewItem;>;"
    :cond_f
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mRefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-void
.end method

.method private removeViewFromRefs(Lcom/google/android/apps/plus/api/MediaRef;Lcom/google/android/apps/plus/views/PhotoHomeViewItem;)Ljava/util/HashSet;
    .registers 5
    .parameter "ref"
    .parameter "viewItem"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/api/MediaRef;",
            "Lcom/google/android/apps/plus/views/PhotoHomeViewItem;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/apps/plus/views/PhotoHomeViewItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mRefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 324
    .local v0, viewSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/apps/plus/views/PhotoHomeViewItem;>;"
    if-eqz v0, :cond_18

    .line 325
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 326
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 328
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mRefs:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_18
    :goto_18
    return-object v0

    .line 330
    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 35
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 122
    const v3, 0x7f0d0120

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;

    .line 124
    .local v30, viewItem:Lcom/google/android/apps/plus/views/PhotoHomeViewItem;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    .line 127
    .local v27, res:Landroid/content/res/Resources;
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_89

    const v3, 0x7f070072

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 130
    .local v28, titleText:Ljava/lang/String;
    :goto_22
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->setAlbumName(Ljava/lang/CharSequence;)V

    .line 131
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 135
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_92

    .line 136
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    .line 140
    .local v23, photoCount:Ljava/lang/Integer;
    :goto_44
    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->setAlbumCount(Ljava/lang/Integer;)V

    .line 144
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_95

    .line 145
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 149
    .local v21, notificationCount:I
    :goto_5b
    const v3, 0x7f0d0121

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 150
    .local v22, notificationItem:Landroid/widget/TextView;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    if-lez v21, :cond_98

    const/4 v3, 0x0

    :goto_72
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    const/16 v3, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 154
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v4}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->setPhoto(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;)V

    .line 220
    :cond_88
    :goto_88
    return-void

    .line 127
    .end local v21           #notificationCount:I
    .end local v22           #notificationItem:Landroid/widget/TextView;
    .end local v23           #photoCount:Ljava/lang/Integer;
    .end local v28           #titleText:Ljava/lang/String;
    :cond_89
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    goto :goto_22

    .line 138
    .restart local v28       #titleText:Ljava/lang/String;
    :cond_92
    const/16 v23, 0x0

    .restart local v23       #photoCount:Ljava/lang/Integer;
    goto :goto_44

    .line 147
    :cond_95
    const/16 v21, 0x0

    .restart local v21       #notificationCount:I
    goto :goto_5b

    .line 151
    .restart local v22       #notificationItem:Landroid/widget/TextView;
    :cond_98
    const/16 v3, 0x8

    goto :goto_72

    .line 160
    :cond_9b
    const/16 v3, 0x12

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_fc

    .line 161
    const/16 v17, 0x5

    .line 171
    .local v17, coverCount:I
    :goto_a7
    if-nez v23, :cond_126

    const/4 v3, 0x0

    :goto_aa
    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->setCoverCount(II)V

    .line 175
    const/4 v3, 0x1

    new-array v14, v3, [Lcom/google/android/apps/plus/api/MediaRef;

    .line 176
    .local v14, allRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_b6
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ge v0, v3, :cond_13e

    .line 177
    sget-object v3, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->URL_INDEX:[I

    aget v29, v3, v18

    .line 178
    .local v29, urlIndex:I
    sget-object v3, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->PHOTOID_INDEX:[I

    aget v24, v3, v18

    .line 180
    .local v24, photoIdIndex:I
    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_13a

    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_13a

    .line 181
    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getPhotoSize(I)Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-result-object v25

    .line 182
    .local v25, photoSize:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 183
    .local v5, photoId:J
    move-object/from16 v0, p3

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 184
    .local v26, photoUrl:Ljava/lang/String;
    if-nez v25, :cond_12b

    move-object/from16 v7, v26

    .line 187
    .local v7, resizedUrl:Ljava/lang/String;
    :goto_ef
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    const-wide/16 v3, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    .line 189
    .local v2, ref:Lcom/google/android/apps/plus/api/MediaRef;
    aput-object v2, v14, v18

    .line 176
    .end local v2           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v5           #photoId:J
    .end local v7           #resizedUrl:Ljava/lang/String;
    .end local v25           #photoSize:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;
    .end local v26           #photoUrl:Ljava/lang/String;
    :goto_f9
    add-int/lit8 v18, v18, 0x1

    goto :goto_b6

    .line 162
    .end local v14           #allRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    .end local v17           #coverCount:I
    .end local v18           #i:I
    .end local v24           #photoIdIndex:I
    .end local v29           #urlIndex:I
    :cond_fc
    const/16 v3, 0x10

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_109

    .line 163
    const/16 v17, 0x4

    .restart local v17       #coverCount:I
    goto :goto_a7

    .line 164
    .end local v17           #coverCount:I
    :cond_109
    const/16 v3, 0xe

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_116

    .line 165
    const/16 v17, 0x3

    .restart local v17       #coverCount:I
    goto :goto_a7

    .line 166
    .end local v17           #coverCount:I
    :cond_116
    const/16 v3, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_123

    .line 167
    const/16 v17, 0x2

    .restart local v17       #coverCount:I
    goto :goto_a7

    .line 169
    .end local v17           #coverCount:I
    :cond_123
    const/16 v17, 0x1

    .restart local v17       #coverCount:I
    goto :goto_a7

    .line 171
    :cond_126
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_aa

    .line 184
    .restart local v5       #photoId:J
    .restart local v14       #allRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    .restart local v18       #i:I
    .restart local v24       #photoIdIndex:I
    .restart local v25       #photoSize:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;
    .restart local v26       #photoUrl:Ljava/lang/String;
    .restart local v29       #urlIndex:I
    :cond_12b
    move-object/from16 v0, v25

    iget v3, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->width:I

    move-object/from16 v0, v25

    iget v4, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->height:I

    move-object/from16 v0, v26

    invoke-static {v3, v4, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->getCenterCroppedAndResizedUrl(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_ef

    .line 191
    .end local v5           #photoId:J
    .end local v25           #photoSize:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;
    .end local v26           #photoUrl:Ljava/lang/String;
    :cond_13a
    const/4 v3, 0x0

    aput-object v3, v14, v18

    goto :goto_f9

    .line 195
    .end local v24           #photoIdIndex:I
    .end local v29           #urlIndex:I
    :cond_13e
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->setMediaRefs([Lcom/google/android/apps/plus/api/MediaRef;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mViews:Ljava/util/HashSet;

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 200
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getPhotoSize(I)Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-result-object v25

    .line 204
    .restart local v25       #photoSize:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;
    if-eqz v25, :cond_18b

    .line 205
    move-object v15, v14

    .local v15, arr$:[Lcom/google/android/apps/plus/api/MediaRef;
    array-length v0, v15

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_15b
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_88

    aget-object v2, v15, v19

    .line 206
    .restart local v2       #ref:Lcom/google/android/apps/plus/api/MediaRef;
    if-nez v2, :cond_168

    .line 205
    :goto_165
    add-int/lit8 v19, v19, 0x1

    goto :goto_15b

    .line 210
    :cond_168
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v2, v1}, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->addViewToRefs(Lcom/google/android/apps/plus/api/MediaRef;Lcom/google/android/apps/plus/views/PhotoHomeViewItem;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, v25

    iget v11, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->width:I

    move-object/from16 v0, v25

    iget v12, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->height:I

    const/4 v13, 0x2

    move-object/from16 v8, p2

    move-object v10, v2

    invoke-static/range {v8 .. v13}, Lcom/google/android/apps/plus/service/EsService;->getCoverThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 214
    .local v16, coverBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->setPhoto(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;)V

    goto :goto_165

    .line 218
    .end local v2           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v15           #arr$:[Lcom/google/android/apps/plus/api/MediaRef;
    .end local v16           #coverBitmap:Landroid/graphics/Bitmap;
    .end local v19           #i$:I
    .end local v20           #len$:I
    :cond_18b
    invoke-virtual/range {v30 .. v31}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->setOnMeasureListener(Lcom/google/android/apps/plus/views/PhotoHomeViewItem$OnMeasuredListener;)V

    goto/16 :goto_88
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "context"
    .parameter "cursor"
    .parameter "viewGroup"

    .prologue
    .line 224
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 225
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030064

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 226
    .local v1, view:Landroid/view/View;
    return-object v1
.end method

.method public onMeasured(Landroid/view/View;)V
    .registers 28
    .parameter "view"

    .prologue
    .line 231
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;

    if-eqz v3, :cond_1c

    move-object/from16 v25, p1

    .line 232
    check-cast v25, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;

    .line 235
    .local v25, viewItem:Lcom/google/android/apps/plus/views/PhotoHomeViewItem;
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->setOnMeasureListener(Lcom/google/android/apps/plus/views/PhotoHomeViewItem$OnMeasuredListener;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mViews:Ljava/util/HashSet;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 284
    .end local v25           #viewItem:Lcom/google/android/apps/plus/views/PhotoHomeViewItem;
    :cond_1c
    return-void

    .line 243
    .restart local v25       #viewItem:Lcom/google/android/apps/plus/views/PhotoHomeViewItem;
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    .line 244
    .local v16, context:Landroid/content/Context;
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getMediaRefs()[Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v14

    .line 245
    .local v14, allRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    const/16 v24, 0x0

    .line 247
    .local v24, position:I
    const/4 v3, 0x1

    new-array v0, v3, [Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v20, v0

    .line 248
    .local v20, newRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    move-object v15, v14

    .local v15, arr$:[Lcom/google/android/apps/plus/api/MediaRef;
    array-length v0, v15

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_32
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6b

    aget-object v21, v15, v18

    .line 249
    .local v21, oldRef:Lcom/google/android/apps/plus/api/MediaRef;
    move-object/from16 v2, v21

    .line 251
    .local v2, ref:Lcom/google/android/apps/plus/api/MediaRef;
    if-eqz v21, :cond_64

    .line 252
    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getPhotoSize(I)Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-result-object v22

    .line 253
    .local v22, photoSize:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;
    if-eqz v22, :cond_64

    .line 254
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/apps/plus/api/MediaRef;->getUrl()Ljava/lang/String;

    move-result-object v23

    .line 255
    .local v23, photoUrl:Ljava/lang/String;
    move-object/from16 v0, v22

    iget v3, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->width:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->height:I

    move-object/from16 v0, v23

    invoke-static {v3, v4, v0}, Lcom/google/android/apps/plus/util/ImageUtils;->getCenterCroppedAndResizedUrl(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 257
    .local v7, resizedUrl:Ljava/lang/String;
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    .end local v2           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    .line 261
    .end local v7           #resizedUrl:Ljava/lang/String;
    .end local v22           #photoSize:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;
    .end local v23           #photoUrl:Ljava/lang/String;
    .restart local v2       #ref:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_64
    aput-object v2, v20, v24

    .line 262
    add-int/lit8 v24, v24, 0x1

    .line 248
    add-int/lit8 v18, v18, 0x1

    goto :goto_32

    .line 265
    .end local v2           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v21           #oldRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_6b
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->setMediaRefs([Lcom/google/android/apps/plus/api/MediaRef;)V

    .line 269
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getPhotoSize(I)Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-result-object v22

    .line 272
    .restart local v22       #photoSize:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;
    move-object/from16 v15, v20

    array-length v0, v15

    move/from16 v19, v0

    const/16 v18, 0x0

    :goto_80
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1c

    aget-object v2, v15, v18

    .line 273
    .restart local v2       #ref:Lcom/google/android/apps/plus/api/MediaRef;
    if-nez v2, :cond_8d

    .line 272
    :goto_8a
    add-int/lit8 v18, v18, 0x1

    goto :goto_80

    .line 277
    :cond_8d
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v2, v1}, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->addViewToRefs(Lcom/google/android/apps/plus/api/MediaRef;Lcom/google/android/apps/plus/views/PhotoHomeViewItem;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    move-object/from16 v0, v22

    iget v11, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->width:I

    move-object/from16 v0, v22

    iget v12, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->height:I

    const/4 v13, 0x2

    move-object/from16 v8, v16

    move-object v10, v2

    invoke-static/range {v8 .. v13}, Lcom/google/android/apps/plus/service/EsService;->getCoverThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 281
    .local v17, coverBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->setPhoto(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;)V

    goto :goto_8a
.end method

.method public onResume()V
    .registers 15

    .prologue
    .line 96
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mViews:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;

    .line 97
    .local v13, viewItem:Lcom/google/android/apps/plus/views/PhotoHomeViewItem;
    invoke-virtual {v13}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getMediaRefs()[Lcom/google/android/apps/plus/api/MediaRef;

    move-result-object v12

    .line 98
    .local v12, refArray:[Lcom/google/android/apps/plus/api/MediaRef;
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getPhotoSize(I)Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-result-object v11

    .line 100
    .local v11, photoSize:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;
    if-eqz v11, :cond_6

    .line 105
    move-object v6, v12

    .local v6, arr$:[Lcom/google/android/apps/plus/api/MediaRef;
    array-length v10, v6

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_20
    if-ge v9, v10, :cond_6

    aget-object v2, v6, v9

    .line 106
    .local v2, ref:Lcom/google/android/apps/plus/api/MediaRef;
    if-nez v2, :cond_29

    .line 105
    :goto_26
    add-int/lit8 v9, v9, 0x1

    goto :goto_20

    .line 110
    :cond_29
    invoke-direct {p0, v2, v13}, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->addViewToRefs(Lcom/google/android/apps/plus/api/MediaRef;Lcom/google/android/apps/plus/views/PhotoHomeViewItem;)V

    .line 112
    invoke-virtual {v13}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    iget v3, v11, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->width:I

    iget v4, v11, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;->height:I

    const/4 v5, 0x2

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/service/EsService;->getCoverThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/api/MediaRef;III)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 115
    .local v7, coverBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v13, v2, v7}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->setPhoto(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;)V

    goto :goto_26

    .line 118
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #ref:Lcom/google/android/apps/plus/api/MediaRef;
    .end local v6           #arr$:[Lcom/google/android/apps/plus/api/MediaRef;
    .end local v7           #coverBitmap:Landroid/graphics/Bitmap;
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v11           #photoSize:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;
    .end local v12           #refArray:[Lcom/google/android/apps/plus/api/MediaRef;
    .end local v13           #viewItem:Lcom/google/android/apps/plus/views/PhotoHomeViewItem;
    :cond_3f
    return-void
.end method

.method public setCoverThumbnail(Landroid/content/Context;Lcom/google/android/apps/plus/api/MediaRef;ILandroid/graphics/Bitmap;)V
    .registers 9
    .parameter "context"
    .parameter "ref"
    .parameter "cropType"
    .parameter "coverBitmap"

    .prologue
    .line 291
    const/4 v3, 0x2

    if-eq p3, v3, :cond_4

    .line 303
    :cond_3
    return-void

    .line 295
    :cond_4
    iget-object v3, p0, Lcom/google/android/apps/plus/phone/PhotosHomeGridAdapter;->mRefs:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 296
    .local v2, viewSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/google/android/apps/plus/views/PhotoHomeViewItem;>;"
    if-eqz v2, :cond_3

    .line 300
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;

    .line 301
    .local v1, viewItem:Lcom/google/android/apps/plus/views/PhotoHomeViewItem;
    invoke-virtual {v1, p2, p4}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->setPhoto(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;)V

    goto :goto_12
.end method
