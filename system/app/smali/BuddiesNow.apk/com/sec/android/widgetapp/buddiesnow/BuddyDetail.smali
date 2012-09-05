.class public Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;
.super Ljava/lang/Object;
.source "BuddyDetail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$1;,
        Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$BuddiesObserver;
    }
.end annotation


# static fields
.field public static mBuddiesObserver:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$BuddiesObserver;

.field public static mBuddyDetail:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;


# instance fields
.field private final DAY_MILLISEC:J

.field private mAnniversary:Ljava/lang/String;

.field private mBirthDay:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mProjection:[Ljava/lang/String;

.field private mSelectedBuddyID:J

.field private mSelectedBuddyName:Ljava/lang/String;

.field private mSelectedBuddyPhotoID:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBuddiesObserver:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$BuddiesObserver;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mUri:Landroid/net/Uri;

    .line 58
    iput-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mContext:Landroid/content/Context;

    .line 60
    iput-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    .line 62
    iput-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyName:Ljava/lang/String;

    .line 64
    iput-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyPhotoID:Ljava/lang/String;

    .line 66
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyID:J

    .line 73
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mProjection:[Ljava/lang/String;

    .line 79
    iput-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBirthDay:Ljava/lang/String;

    .line 81
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->DAY_MILLISEC:J

    .line 97
    iput-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mAnniversary:Ljava/lang/String;

    .line 115
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;
    .registers 5
    .parameter "context"

    .prologue
    .line 216
    sget-object v0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBuddyDetail:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;

    if-nez v0, :cond_2b

    .line 217
    const-string v0, "Buddies--------------------------->"

    const-string v1, "create new buddy manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;-><init>()V

    sput-object v0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBuddyDetail:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;

    .line 221
    new-instance v0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$BuddiesObserver;

    sget-object v1, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBuddyDetail:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$BuddiesObserver;-><init>(Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$1;)V

    sput-object v0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBuddiesObserver:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$BuddiesObserver;

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBuddiesObserver:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail$BuddiesObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 225
    :cond_2b
    sget-object v0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBuddyDetail:Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;

    return-object v0
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 13
    .parameter "bitmap"
    .parameter "pixels"

    .prologue
    const/4 v10, 0x0

    .line 410
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 412
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 414
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 415
    .local v1, color:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 416
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 417
    .local v4, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 418
    .local v5, rectF:Landroid/graphics/RectF;
    int-to-float v6, p1

    .line 420
    .local v6, roundPx:F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 421
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 422
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 423
    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 425
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 426
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 428
    return-object v2
.end method

.method public static getRoundedCornerBitmapLand(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "bitmap"
    .parameter "pixels"
    .parameter "orientation"

    .prologue
    const/4 v10, 0x0

    .line 374
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 376
    .local v2, output:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 378
    .local v0, canvas:Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 379
    .local v1, color:I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 383
    .local v3, paint:Landroid/graphics/Paint;
    const/4 v4, 0x0

    .line 386
    .local v4, rect:Landroid/graphics/Rect;
    const/4 v7, 0x2

    if-ne p2, v7, :cond_55

    .line 387
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #rect:Landroid/graphics/Rect;
    const/16 v7, 0x22

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    add-int/lit8 v9, v9, -0x22

    invoke-direct {v4, v10, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 395
    .restart local v4       #rect:Landroid/graphics/Rect;
    :goto_31
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 396
    .local v5, rectF:Landroid/graphics/RectF;
    int-to-float v6, p1

    .line 398
    .local v6, roundPx:F
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 399
    invoke-virtual {v0, v10, v10, v10, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 400
    const v7, -0xbdbdbe

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 401
    invoke-virtual {v0, v5, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 403
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 404
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 406
    return-object v2

    .line 390
    .end local v5           #rectF:Landroid/graphics/RectF;
    .end local v6           #roundPx:F
    :cond_55
    new-instance v4, Landroid/graphics/Rect;

    .end local v4           #rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v4, v10, v10, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v4       #rect:Landroid/graphics/Rect;
    goto :goto_31
.end method

.method private getSelectedBuddyInfo()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 257
    iget-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_9b

    iget-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 259
    iget-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 260
    .local v0, contactID:I
    iget-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    const-string v4, "display_name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 262
    .local v1, nameColumn:I
    iget-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    const-string v4, "photo_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 267
    .local v2, photocolumn:I
    :cond_25
    iget-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyName:Ljava/lang/String;

    .line 268
    const-string v3, "Buddies--------------------------->"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyPhotoID:Ljava/lang/String;

    .line 271
    const-string v3, "Buddies--------------------------->"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "photo ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyPhotoID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyID:J

    .line 274
    const-string v3, "Buddies--------------------------->"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact ID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyID:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_25

    .line 277
    iget-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 279
    iput-object v7, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    .line 290
    .end local v0           #contactID:I
    .end local v1           #nameColumn:I
    .end local v2           #photocolumn:I
    :cond_9a
    :goto_9a
    return-void

    .line 284
    :cond_9b
    iget-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_9a

    .line 285
    iget-object v3, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 286
    iput-object v7, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    goto :goto_9a
.end method

.method private queryBuddyEventInfo()V
    .registers 14

    .prologue
    .line 143
    const-string v0, "Buddies--------------------------->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Querying event details for contact Id :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyID:J

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "data1"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "data2"

    aput-object v1, v2, v0

    .line 149
    .local v2, projection:[Ljava/lang/String;
    const-string v3, "Data.CONTACT_ID=? AND Data.MIMETYPE=?"

    .line 150
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-wide v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyID:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "vnd.android.cursor.item/contact_event"

    aput-object v1, v4, v0

    .line 154
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 156
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_41
    iget-object v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4d
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_41 .. :try_end_4d} :catch_121
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4d} :catch_15c

    move-result-object v6

    .line 166
    :goto_4e
    if-eqz v6, :cond_19d

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 168
    :try_start_56
    const-string v0, "Buddies--------------------------->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Querying event details for contact:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " cursor count : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 172
    .local v8, event_column:I
    const-string v0, "data2"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 175
    .local v9, event_type_column:I
    :cond_8a
    const/4 v0, -0x1

    if-eq v9, v0, :cond_9a

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9a

    .line 177
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBirthDay:Ljava/lang/String;

    .line 179
    :cond_9a
    const/4 v0, -0x1

    if-eq v9, v0, :cond_aa

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_aa

    .line 181
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mAnniversary:Ljava/lang/String;

    .line 183
    :cond_aa
    const-string v0, "Buddies--------------------------->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event value data1:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v0, "Buddies--------------------------->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "event type data2 :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_e5
    .catchall {:try_start_56 .. :try_end_e5} :catchall_197

    move-result v0

    if-nez v0, :cond_8a

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 190
    const/4 v6, 0x0

    .line 203
    .end local v8           #event_column:I
    .end local v9           #event_type_column:I
    :cond_ec
    :goto_ec
    const-string v0, "Buddies--------------------------->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the Birthday value of this contact :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBirthDay:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v0, "Buddies--------------------------->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the Anniversary value of this contact :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mAnniversary:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void

    .line 158
    :catch_121
    move-exception v10

    .line 159
    .local v10, sfc:Landroid/database/sqlite/SQLiteFullException;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "err : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    const-string v0, "Buddies--------------------------->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured while querying contact :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    .line 161
    .end local v10           #sfc:Landroid/database/sqlite/SQLiteFullException;
    :catch_15c
    move-exception v7

    .line 162
    .local v7, e:Ljava/lang/Exception;
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "err : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    const-string v0, "Buddies--------------------------->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured while querying contact :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e

    .line 188
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_197
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 190
    const/4 v6, 0x0

    throw v0

    .line 196
    :cond_19d
    if-eqz v6, :cond_ec

    .line 197
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 198
    const/4 v6, 0x0

    goto/16 :goto_ec
.end method

.method private querycontact()Landroid/database/Cursor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 435
    const/4 v6, 0x0

    .line 439
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mProjection:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 450
    return-object v6
.end method

.method public static scaleContactBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "bitMap"
    .parameter "context"

    .prologue
    .line 327
    if-nez p0, :cond_4

    .line 328
    const/4 p0, 0x0

    .line 367
    .end local p0
    :cond_3
    :goto_3
    return-object p0

    .line 331
    .restart local p0
    :cond_4
    const/4 v8, 0x0

    .local v8, dx:F
    const/4 v9, 0x0

    .line 332
    .local v9, dy:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 333
    .local v5, matrix:Landroid/graphics/Matrix;
    const/4 v10, 0x0

    .line 335
    .local v10, resizedBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 336
    .local v4, dheight:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 339
    .local v3, dwidth:I
    const/high16 v0, 0x42c4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v12, v0

    .line 340
    .local v12, vheight:I
    const/high16 v0, 0x4298

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v13, v0

    .line 344
    .local v13, vwidth:I
    mul-int v0, v3, v12

    mul-int v1, v13, v4

    if-le v0, v1, :cond_5f

    .line 345
    int-to-float v0, v12

    int-to-float v1, v4

    div-float v11, v0, v1

    .line 346
    .local v11, scale:F
    int-to-float v0, v13

    int-to-float v1, v3

    mul-float/2addr v1, v11

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float v8, v0, v1

    .line 347
    const/4 v0, 0x0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_4a

    .line 348
    const/high16 v0, -0x4080

    mul-float/2addr v8, v0

    .line 356
    :cond_4a
    :goto_4a
    invoke-virtual {v5, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 358
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 360
    float-to-int v0, v8

    float-to-int v1, v9

    invoke-static {v10, v0, v1, v13, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 363
    .local v7, cropBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_3

    .line 364
    move-object p0, v7

    goto :goto_3

    .line 350
    .end local v7           #cropBitmap:Landroid/graphics/Bitmap;
    .end local v11           #scale:F
    :cond_5f
    int-to-float v0, v13

    int-to-float v1, v3

    div-float v11, v0, v1

    .line 351
    .restart local v11       #scale:F
    int-to-float v0, v12

    int-to-float v1, v4

    mul-float/2addr v1, v11

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float v9, v0, v1

    .line 352
    const/4 v0, 0x0

    cmpg-float v0, v9, v0

    if-gez v0, :cond_4a

    .line 353
    const/high16 v0, -0x4080

    mul-float/2addr v9, v0

    goto :goto_4a
.end method


# virtual methods
.method public getBuddyName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyName:Ljava/lang/String;

    return-object v0
.end method

.method public getBuddyPhoto()Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    .line 294
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyID:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 297
    .local v4, uri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 298
    .local v0, bitMap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 301
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_a
    iget-object v5, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 303
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_7c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_17} :catch_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_17} :catch_6d

    move-result-object v0

    .line 310
    if-eqz v2, :cond_1d

    .line 312
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_24

    .line 320
    :cond_1d
    :goto_1d
    iget-object v5, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->scaleContactBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 322
    return-object v0

    .line 313
    :catch_24
    move-exception v1

    .line 315
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 304
    .end local v1           #e:Ljava/io/IOException;
    :catch_29
    move-exception v3

    .line 305
    .local v3, sfc:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2a
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "err : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteFullException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 306
    const-string v5, "Buddies--------------------------->"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occured while retrieving contact photo :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_2a .. :try_end_62} :catchall_7c

    .line 310
    if-eqz v2, :cond_1d

    .line 312
    :try_start_64
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_1d

    .line 313
    :catch_68
    move-exception v1

    .line 315
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 307
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #sfc:Landroid/database/sqlite/SQLiteFullException;
    :catch_6d
    move-exception v1

    .line 308
    .local v1, e:Ljava/lang/Exception;
    :try_start_6e
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_7c

    .line 310
    if-eqz v2, :cond_1d

    .line 312
    :try_start_73
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_1d

    .line 313
    :catch_77
    move-exception v1

    .line 315
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 310
    .end local v1           #e:Ljava/io/IOException;
    :catchall_7c
    move-exception v5

    if-eqz v2, :cond_82

    .line 312
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83

    .line 316
    :cond_82
    :goto_82
    throw v5

    .line 313
    :catch_83
    move-exception v1

    .line 315
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_82
.end method

.method public getmAnniversary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mAnniversary:Ljava/lang/String;

    return-object v0
.end method

.method public getmBirthDay()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBirthDay:Ljava/lang/String;

    return-object v0
.end method

.method public getmSelectedBuddyID()J
    .registers 3

    .prologue
    .line 233
    iget-wide v0, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mSelectedBuddyID:J

    return-wide v0
.end method

.method public isAnniversaryToday()Z
    .registers 16

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 524
    iget-object v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mAnniversary:Ljava/lang/String;

    if-nez v11, :cond_7

    .line 587
    :cond_6
    :goto_6
    return v9

    .line 530
    :cond_7
    iget-object v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mAnniversary:Ljava/lang/String;

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 531
    const-string v11, "Buddies--------------------------->"

    const-string v12, "contact with year is not been assign for Anniversary"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mAnniversary:Ljava/lang/String;

    const-string v12, "-"

    const-string v13, "1970"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mAnniversary:Ljava/lang/String;

    .line 534
    :cond_24
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd"

    invoke-direct {v8, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 535
    .local v8, sdf:Ljava/text/SimpleDateFormat;
    iget-object v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mAnniversary:Ljava/lang/String;

    const-string v12, "/"

    const-string v13, "-"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 536
    iget-object v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mAnniversary:Ljava/lang/String;

    const-string v12, "."

    const-string v13, "-"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 538
    const/4 v1, 0x0

    .line 540
    .local v1, bdayDate:Ljava/util/Date;
    :try_start_3e
    iget-object v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mAnniversary:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_43
    .catch Ljava/text/ParseException; {:try_start_3e .. :try_end_43} :catch_4e

    move-result-object v1

    .line 549
    :goto_44
    if-nez v1, :cond_6a

    .line 550
    const-string v10, "Buddies--------------------------->"

    const-string v11, "Anniversary date obtained from DB is not a valid date object!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 541
    :catch_4e
    move-exception v6

    .line 543
    .local v6, e:Ljava/text/ParseException;
    const-string v11, "Buddies--------------------------->"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Parsing Anniversary!!! "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mAnniversary:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 554
    .end local v6           #e:Ljava/text/ParseException;
    :cond_6a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 555
    .local v0, aCalendar:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 556
    const-string v11, "Buddies--------------------------->"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Anniversary date :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 559
    .local v3, currentDate:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 560
    .local v2, currentCalender:Ljava/util/Calendar;
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 561
    const-string v11, "Buddies--------------------------->"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "current date :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_cc

    .line 565
    const-string v10, "Buddies--------------------------->"

    const-string v11, "Anniversary date is in future year"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 569
    :cond_cc
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 570
    .local v7, newCalendar:Ljava/util/Calendar;
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v7, v11, v12, v13}, Ljava/util/Calendar;->set(III)V

    .line 572
    const-string v11, "Buddies--------------------------->"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "new Anniversary date :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_110

    .line 576
    const-string v10, "Buddies--------------------------->"

    const-string v11, "Anniversary date for current year is already over"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 580
    :cond_110
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/32 v13, 0x5265c00

    div-long v4, v11, v13

    .line 582
    .local v4, diff:J
    const-wide/16 v11, 0x0

    cmp-long v11, v4, v11

    if-nez v11, :cond_6

    .line 583
    const-string v9, "Buddies--------------------------->"

    const-string v11, "Anniversary is Today "

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 584
    goto/16 :goto_6
.end method

.method public isBirthdayToday()Z
    .registers 16

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 455
    iget-object v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBirthDay:Ljava/lang/String;

    if-nez v11, :cond_7

    .line 519
    :cond_6
    :goto_6
    return v9

    .line 461
    :cond_7
    iget-object v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBirthDay:Ljava/lang/String;

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 462
    const-string v11, "Buddies--------------------------->"

    const-string v12, "contact with year is not been assign for Birthday"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBirthDay:Ljava/lang/String;

    const-string v12, "-"

    const-string v13, "1970"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBirthDay:Ljava/lang/String;

    .line 466
    :cond_24
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd"

    invoke-direct {v8, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 467
    .local v8, sdf:Ljava/text/SimpleDateFormat;
    iget-object v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBirthDay:Ljava/lang/String;

    const-string v12, "/"

    const-string v13, "-"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 468
    iget-object v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBirthDay:Ljava/lang/String;

    const-string v12, "."

    const-string v13, "-"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 470
    const/4 v1, 0x0

    .line 472
    .local v1, bdayDate:Ljava/util/Date;
    :try_start_3e
    iget-object v11, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBirthDay:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_43
    .catch Ljava/text/ParseException; {:try_start_3e .. :try_end_43} :catch_4e

    move-result-object v1

    .line 481
    :goto_44
    if-nez v1, :cond_6a

    .line 482
    const-string v10, "Buddies--------------------------->"

    const-string v11, "Birthday date obtained from DB is not a valid date object!!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 473
    :catch_4e
    move-exception v6

    .line 475
    .local v6, e:Ljava/text/ParseException;
    const-string v11, "Buddies--------------------------->"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Parsing Birthday!!! "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBirthDay:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 486
    .end local v6           #e:Ljava/text/ParseException;
    :cond_6a
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 487
    .local v0, bCalendar:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 488
    const-string v11, "Buddies--------------------------->"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "birthday date :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 491
    .local v3, currentDate:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 492
    .local v2, currentCalender:Ljava/util/Calendar;
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 493
    const-string v11, "Buddies--------------------------->"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "current date :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_cc

    .line 497
    const-string v10, "Buddies--------------------------->"

    const-string v11, "birthday date is in future year"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 501
    :cond_cc
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 502
    .local v7, newCalendar:Ljava/util/Calendar;
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    const/4 v13, 0x5

    invoke-virtual {v0, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v7, v11, v12, v13}, Ljava/util/Calendar;->set(III)V

    .line 504
    const-string v11, "Buddies--------------------------->"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "new birthday date :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_110

    .line 508
    const-string v10, "Buddies--------------------------->"

    const-string v11, "birthday date for current year is already over"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 512
    :cond_110
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/32 v13, 0x5265c00

    div-long v4, v11, v13

    .line 515
    .local v4, diff:J
    const-wide/16 v11, 0x0

    cmp-long v11, v4, v11

    if-nez v11, :cond_6

    .line 516
    const-string v9, "Buddies--------------------------->"

    const-string v11, " birthday is today"

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v10

    .line 517
    goto/16 :goto_6
.end method

.method public query(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/Boolean;
    .registers 7
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mUri:Landroid/net/Uri;

    .line 124
    iget-object v2, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_d

    .line 125
    iget-object v2, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->querycontact()Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    .line 128
    iget-object v2, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_33

    iget-object v2, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 129
    const-string v2, "Buddies--------------------------->"

    const-string v3, "mCursor is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 136
    .local v0, mCursorstatus:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->getSelectedBuddyInfo()V

    .line 137
    invoke-direct {p0}, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->queryBuddyEventInfo()V

    move-object v1, v0

    .line 138
    .end local v0           #mCursorstatus:Ljava/lang/Boolean;
    .local v1, mCursorstatus:Ljava/lang/Boolean;
    :goto_32
    return-object v1

    .line 132
    .end local v1           #mCursorstatus:Ljava/lang/Boolean;
    :cond_33
    const-string v2, "Buddies--------------------------->"

    const-string v3, "mCursor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .restart local v0       #mCursorstatus:Ljava/lang/Boolean;
    move-object v1, v0

    .line 134
    .end local v0           #mCursorstatus:Ljava/lang/Boolean;
    .restart local v1       #mCursorstatus:Ljava/lang/Boolean;
    goto :goto_32
.end method

.method public setmAnniversary(Ljava/lang/String;)V
    .registers 2
    .parameter "mAnniversary"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mAnniversary:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setmBirthDay(Ljava/lang/String;)V
    .registers 2
    .parameter "mBirthDay"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mBirthDay:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setmContext(Landroid/content/Context;)V
    .registers 2
    .parameter "mContext"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sec/android/widgetapp/buddiesnow/BuddyDetail;->mContext:Landroid/content/Context;

    .line 212
    return-void
.end method
