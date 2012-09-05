.class public Lcom/google/android/apps/plus/views/PhotoInfoView;
.super Landroid/view/View;
.source "PhotoInfoView.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/ItemClickListener;


# static fields
.field private static sAlbumPaint:Landroid/text/TextPaint;

.field private static sAlbumRightMargin:I

.field private static final sAvatarRect:Landroid/graphics/Rect;

.field private static sAvatarRightMargin:I

.field private static sCommentBitmap:Landroid/graphics/Bitmap;

.field private static sCommentCountLeftMargin:I

.field private static sCommentCountPaint:Landroid/text/TextPaint;

.field private static sCommentCountTextWidth:I

.field private static sDatePaint:Landroid/text/TextPaint;

.field private static sDateRightMargin:I

.field private static sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

.field private static sInfoAvatarHeight:I

.field private static sInfoAvatarWidth:I

.field private static sInfoBackground:Landroid/graphics/drawable/Drawable;

.field private static sInfoRightPadding:I

.field private static sInitialized:Z

.field private static sNamePaint:Landroid/text/TextPaint;

.field private static sPlusOneBitmap:Landroid/graphics/Bitmap;

.field private static sPlusOneBottomMargin:I

.field private static sPlusOneCountLeftMargin:I

.field private static sPlusOneCountPaint:Landroid/text/TextPaint;

.field private static sPlusOneCountTextWidth:I

.field private static sPlusOneIconRightPaddingHack:I

.field private static sPlusoneByMeBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mAlbumContent:Ljava/lang/CharSequence;

.field private mAlbumId:J

.field private mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mAlbumStream:Ljava/lang/String;

.field private mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

.field private mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

.field private mCommentCount:I

.field private mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

.field private mDate:Ljava/lang/CharSequence;

.field private mFixedHeight:I

.field private mHide:Z

.field private mOwnerId:J

.field private mOwnerName:Ljava/lang/CharSequence;

.field private mPlusOneCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAvatarRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mFixedHeight:I

    .line 93
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->initialize()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mFixedHeight:I

    .line 98
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->initialize()V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mFixedHeight:I

    .line 103
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->initialize()V

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/views/PhotoInfoView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mHide:Z

    return v0
.end method

.method private static createSpannedAlbumHtml(Landroid/content/Context;JLjava/lang/String;JLjava/lang/CharSequence;)Landroid/text/Spanned;
    .registers 12
    .parameter "context"
    .parameter "albumId"
    .parameter "albumStream"
    .parameter "ownerId"
    .parameter "albumName"

    .prologue
    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
    .local v2, sb:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_62

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, id:Ljava/lang/String;
    :goto_1e
    const-string v3, "<a href=\"#~loop:svt=album"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&amp;aname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&amp;oid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, albumHtml:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    return-object v3

    .line 452
    .end local v0           #albumHtml:Ljava/lang/String;
    .end local v1           #id:Ljava/lang/String;
    :cond_62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #id:Ljava/lang/String;
    goto :goto_1e
.end method

.method private getInfoBoxHeight()I
    .registers 4

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    .line 423
    const/4 v0, 0x0

    .line 427
    .local v0, height:I
    :goto_9
    return v0

    .line 425
    .end local v0           #height:I
    :cond_a
    sget v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarHeight:I

    .restart local v0       #height:I
    goto :goto_9
.end method

.method private initialize()V
    .registers 7

    .prologue
    const v5, 0x7f09004c

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 473
    sget-boolean v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInitialized:Z

    if-nez v1, :cond_17f

    .line 474
    sput-boolean v3, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInitialized:Z

    .line 476
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 479
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f020035

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    .line 481
    const v1, 0x7f020072

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentBitmap:Landroid/graphics/Bitmap;

    .line 482
    const v1, 0x7f0200ac

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    .line 483
    const v1, 0x7f0200ad

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusoneByMeBitmap:Landroid/graphics/Bitmap;

    .line 486
    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoBackground:Landroid/graphics/drawable/Drawable;

    .line 488
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    .line 489
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 490
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f09004b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 491
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f0c008d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 492
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 494
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDatePaint:Landroid/text/TextPaint;

    .line 495
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 496
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDatePaint:Landroid/text/TextPaint;

    const v2, 0x7f09004d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 497
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDatePaint:Landroid/text/TextPaint;

    const v2, 0x7f0c008e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 499
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    .line 500
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 501
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 502
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c008c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 503
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, v1, Landroid/text/TextPaint;->linkColor:I

    .line 505
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountPaint:Landroid/text/TextPaint;

    .line 506
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 507
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountPaint:Landroid/text/TextPaint;

    const v2, 0x7f09004e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 508
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c008f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 511
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    .line 512
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 513
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    const v2, 0x7f09004f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 514
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c0090

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 518
    const v1, 0x7f0c0082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarHeight:I

    .line 519
    sget v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarHeight:I

    sput v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarWidth:I

    .line 520
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAvatarRect:Landroid/graphics/Rect;

    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarWidth:I

    sget v3, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 522
    const v1, 0x7f0c0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoRightPadding:I

    .line 523
    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAvatarRightMargin:I

    .line 525
    const v1, 0x7f0c0086

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDateRightMargin:I

    .line 526
    const v1, 0x7f0c0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumRightMargin:I

    .line 527
    const v1, 0x7f0c0084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountLeftMargin:I

    .line 529
    const v1, 0x7f0c0089

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountLeftMargin:I

    .line 531
    const v1, 0x7f0c0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBottomMargin:I

    .line 533
    const v1, 0x7f0c0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountTextWidth:I

    .line 535
    const v1, 0x7f0c008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountTextWidth:I

    .line 537
    const v1, 0x7f0c008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneIconRightPaddingHack:I

    .line 540
    .end local v0           #resources:Landroid/content/res/Resources;
    :cond_17f
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 209
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 210
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_68

    :pswitch_14
    move v2, v3

    .line 252
    :goto_15
    return v2

    .line 212
    :pswitch_16
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v4, v0, v1, v3}, Lcom/google/android/apps/plus/views/ClickableUserImage;->handleEvent(III)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 213
    iget-object v3, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    iput-object v3, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 214
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->invalidate()V

    goto :goto_15

    .line 216
    :cond_2a
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v4, v0, v1, v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->handleEvent(III)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 218
    iget-object v3, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    iput-object v3, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 219
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->invalidate()V

    goto :goto_15

    :cond_3e
    move v2, v3

    .line 223
    goto :goto_15

    .line 227
    :pswitch_40
    iput-object v5, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 229
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v4, :cond_4b

    .line 230
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->handleEvent(III)Z

    .line 233
    :cond_4b
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v4, :cond_54

    .line 234
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->handleEvent(III)Z

    .line 237
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->invalidate()V

    move v2, v3

    .line 238
    goto :goto_15

    .line 242
    :pswitch_59
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    if-eqz v4, :cond_66

    .line 243
    iget-object v3, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    const/4 v4, 0x3

    invoke-interface {v3, v0, v1, v4}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    .line 244
    iput-object v5, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    goto :goto_15

    :cond_66
    move v2, v3

    .line 247
    goto :goto_15

    .line 210
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_16
        :pswitch_40
        :pswitch_14
        :pswitch_59
    .end packed-switch
.end method

.method public hideHeaderInfoView(Z)V
    .registers 6
    .parameter "animate"

    .prologue
    .line 261
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mHide:Z

    .line 263
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 264
    .local v0, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_c

    .line 265
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 268
    :cond_c
    if-eqz p1, :cond_25

    .line 269
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040003

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 271
    .local v1, titleAnimation:Landroid/view/animation/Animation;
    new-instance v2, Lcom/google/android/apps/plus/views/PhotoInfoView$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/views/PhotoInfoView$1;-><init>(Lcom/google/android/apps/plus/views/PhotoInfoView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 287
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/PhotoInfoView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 291
    .end local v1           #titleAnimation:Landroid/view/animation/Animation;
    :goto_24
    return-void

    .line 289
    :cond_25
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setVisibility(I)V

    goto :goto_24
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 29
    .parameter "canvas"

    .prologue
    .line 295
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getInfoBoxHeight()I

    move-result v19

    .line 298
    .local v19, infoBoxHeight:I
    if-lez v19, :cond_2aa

    .line 299
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getHeight()I

    move-result v2

    sub-int v20, v2, v19

    .line 303
    .local v20, infoBoxY:I
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getHeight()I

    move-result v6

    move/from16 v0, v20

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 304
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 306
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBottomMargin:I

    add-int/2addr v2, v4

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int v17, v2, v4

    .line 308
    .local v17, countHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getWidth()I

    move-result v2

    sget v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoRightPadding:I

    sub-int v24, v2, v4

    .line 309
    .local v24, xPos:I
    sub-int v2, v19, v17

    div-int/lit8 v2, v2, 0x2

    add-int v26, v20, v2

    .line 312
    .local v26, yPos:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mPlusOneCount:I

    if-lez v2, :cond_9b

    .line 313
    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountTextWidth:I

    sub-int v24, v24, v2

    .line 314
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mPlusOneCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v24

    int-to-float v4, v0

    move/from16 v0, v26

    int-to-float v5, v0

    sget-object v6, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    sget-object v6, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 317
    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountLeftMargin:I

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int v24, v24, v2

    .line 318
    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneIconRightPaddingHack:I

    sub-int v24, v24, v2

    .line 319
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, v24

    int-to-float v4, v0

    move/from16 v0, v26

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getWidth()I

    move-result v2

    sget v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoRightPadding:I

    sub-int v24, v2, v4

    .line 322
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBottomMargin:I

    add-int/2addr v2, v4

    add-int v26, v26, v2

    .line 326
    :cond_9b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCommentCount:I

    if-lez v2, :cond_da

    .line 327
    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountTextWidth:I

    sub-int v24, v24, v2

    .line 328
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCommentCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v24

    int-to-float v4, v0

    move/from16 v0, v26

    int-to-float v5, v0

    sget-object v6, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v5, v6

    sget-object v6, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 331
    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountLeftMargin:I

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int v24, v24, v2

    .line 332
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, v24

    int-to-float v4, v0

    move/from16 v0, v26

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 335
    :cond_da
    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDateRightMargin:I

    sub-int v25, v24, v2

    .line 338
    .local v25, xPosEnd:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v2, :cond_2ab

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2ab

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    .line 340
    .local v16, avatar:Landroid/graphics/Bitmap;
    :goto_f6
    const/4 v2, 0x0

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAvatarRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v2, :cond_11a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->isClicked()Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->drawSelectionRect(Landroid/graphics/Canvas;)V

    .line 347
    :cond_11a
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v22, v0

    .line 348
    .local v22, nameHeight:I
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v14, v2

    .line 350
    .local v14, albumHeight:I
    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarWidth:I

    sget v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAvatarRightMargin:I

    add-int v24, v2, v4

    .line 351
    add-int v2, v22, v14

    sub-int v2, v19, v2

    div-int/lit8 v2, v2, 0x2

    add-int v26, v20, v2

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_197

    .line 354
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerName:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerName:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    float-to-int v0, v2

    move/from16 v23, v0

    .line 356
    .local v23, ownerNameWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerName:Ljava/lang/CharSequence;

    .line 357
    .local v3, drawText:Ljava/lang/CharSequence;
    add-int v2, v24, v23

    move/from16 v0, v25

    if-le v2, v0, :cond_17b

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerName:Ljava/lang/CharSequence;

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    sub-int v5, v25, v24

    int-to-float v5, v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 361
    :cond_17b
    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move/from16 v0, v24

    int-to-float v6, v0

    move/from16 v0, v26

    int-to-float v2, v0

    sget-object v7, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    sub-float v7, v2, v7

    sget-object v8, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 363
    add-int v26, v26, v22

    .line 366
    .end local v3           #drawText:Ljava/lang/CharSequence;
    .end local v23           #ownerNameWidth:I
    :cond_197
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumContent:Ljava/lang/CharSequence;

    if-eqz v2, :cond_268

    .line 367
    sub-int v21, v25, v24

    .line 368
    .local v21, maxWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mDate:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1c4

    .line 369
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDatePaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mDate:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mDate:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v18

    .line 370
    .local v18, dateWidth:F
    move/from16 v0, v21

    int-to-float v2, v0

    sget v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumRightMargin:I

    int-to-float v4, v4

    add-float v4, v4, v18

    sub-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v21, v0

    .line 373
    .end local v18           #dateWidth:F
    :cond_1c4
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumContent:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumContent:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    float-to-int v13, v2

    .line 375
    .local v13, albumContentWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumContent:Ljava/lang/CharSequence;

    .line 376
    .restart local v3       #drawText:Ljava/lang/CharSequence;
    move/from16 v0, v21

    if-le v13, v0, :cond_1ef

    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumContent:Ljava/lang/CharSequence;

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    move/from16 v0, v21

    int-to-float v5, v0

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 381
    :cond_1ef
    move/from16 v0, v21

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 382
    .local v15, albumNameWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v2, :cond_205

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getWidth()I

    move-result v2

    if-eq v2, v15, :cond_23a

    .line 383
    :cond_205
    new-instance v2, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumId:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumStream:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerId:J

    move-object v10, v3

    invoke-static/range {v4 .. v10}, Lcom/google/android/apps/plus/views/PhotoInfoView;->createSpannedAlbumHtml(Landroid/content/Context;JLjava/lang/String;JLjava/lang/CharSequence;)Landroid/text/Spanned;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f80

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v2

    move v7, v15

    move-object/from16 v12, p0

    invoke-direct/range {v4 .. v12}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLcom/google/android/apps/plus/views/ClickableStaticLayout$SpanClickListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    .line 386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 389
    :cond_23a
    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v26

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 391
    move/from16 v0, v24

    neg-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v26

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getWidth()I

    move-result v2

    sget v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumRightMargin:I

    add-int/2addr v2, v4

    add-int v24, v24, v2

    .line 395
    .end local v3           #drawText:Ljava/lang/CharSequence;
    .end local v13           #albumContentWidth:I
    .end local v15           #albumNameWidth:I
    .end local v21           #maxWidth:I
    :cond_268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mDate:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2aa

    .line 396
    move/from16 v0, v26

    int-to-float v2, v0

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v26, v0

    .line 397
    move/from16 v0, v26

    int-to-float v2, v0

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v26, v0

    .line 399
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mDate:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mDate:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move/from16 v0, v24

    int-to-float v8, v0

    move/from16 v0, v26

    int-to-float v2, v0

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float v9, v2, v4

    sget-object v10, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDatePaint:Landroid/text/TextPaint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 403
    .end local v14           #albumHeight:I
    .end local v16           #avatar:Landroid/graphics/Bitmap;
    .end local v17           #countHeight:I
    .end local v20           #infoBoxY:I
    .end local v22           #nameHeight:I
    .end local v24           #xPos:I
    .end local v25           #xPosEnd:I
    .end local v26           #yPos:I
    :cond_2aa
    return-void

    .line 338
    .restart local v17       #countHeight:I
    .restart local v20       #infoBoxY:I
    .restart local v24       #xPos:I
    .restart local v25       #xPosEnd:I
    .restart local v26       #yPos:I
    :cond_2ab
    sget-object v16, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_f6
.end method

.method public onLocationClick(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;)V
    .registers 4
    .parameter "activityId"
    .parameter "location"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    if-eqz v0, :cond_9

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/plus/views/ItemClickListener;->onLocationClick(Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Location;)V

    .line 183
    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getInfoBoxHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mFixedHeight:I

    .line 408
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mFixedHeight:I

    if-lez v0, :cond_1f

    .line 409
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mFixedHeight:I

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 411
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mFixedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setMeasuredDimension(II)V

    .line 415
    :goto_1e
    return-void

    .line 413
    :cond_1f
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_1e
.end method

.method public onMediaImageClick(Ljava/lang/String;Lcom/google/android/apps/plus/content/DbMedia;I)V
    .registers 5
    .parameter "activityId"
    .parameter "media"
    .parameter "photoIndex"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    if-eqz v0, :cond_9

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ItemClickListener;->onMediaImageClick(Ljava/lang/String;Lcom/google/android/apps/plus/content/DbMedia;I)V

    .line 190
    :cond_9
    return-void
.end method

.method public onSpanClick(Landroid/text/style/URLSpan;)V
    .registers 3
    .parameter "span"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    if-eqz v0, :cond_9

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/plus/views/ItemClickListener;->onSpanClick(Landroid/text/style/URLSpan;)V

    .line 197
    :cond_9
    return-void
.end method

.method public onUserImageClick(JLjava/lang/String;)V
    .registers 5
    .parameter "authorUserId"
    .parameter "authorName"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    if-eqz v0, :cond_9

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/apps/plus/views/ItemClickListener;->onUserImageClick(JLjava/lang/String;)V

    .line 204
    :cond_9
    return-void
.end method

.method public setAlbum(JLjava/lang/String;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "albumId"
    .parameter "albumStream"
    .parameter "albumName"

    .prologue
    .line 136
    iput-object p4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumContent:Ljava/lang/CharSequence;

    .line 137
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumId:J

    .line 138
    iput-object p3, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumStream:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setCommentCount(I)V
    .registers 2
    .parameter "commentCount"

    .prologue
    .line 145
    iput p1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCommentCount:I

    .line 146
    return-void
.end method

.method public setExternalClickListener(Lcom/google/android/apps/plus/views/ItemClickListener;)V
    .registers 2
    .parameter "clickListener"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 157
    return-void
.end method

.method public setOwner(JLjava/lang/CharSequence;)V
    .registers 11
    .parameter "id"
    .parameter "name"

    .prologue
    const/4 v6, 0x0

    .line 110
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerId:J

    .line 111
    iput-object p3, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerName:Ljava/lang/CharSequence;

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerName:Ljava/lang/CharSequence;

    if-nez v0, :cond_1f

    const/4 v4, 0x0

    .line 114
    .local v4, nameString:Ljava/lang/String;
    :goto_a
    new-instance v0, Lcom/google/android/apps/plus/views/ClickableUserImage;

    iget-wide v2, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerId:J

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/views/ClickableUserImage;-><init>(Landroid/view/View;JLjava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 115
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    sget v1, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarWidth:I

    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarHeight:I

    invoke-virtual {v0, v6, v6, v1, v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->setRect(IIII)V

    .line 116
    return-void

    .line 112
    .end local v4           #nameString:Ljava/lang/String;
    :cond_1f
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_a
.end method

.method public setPhotoDate(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "date"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mDate:Ljava/lang/CharSequence;

    .line 130
    return-void
.end method

.method public setPlusOneCount(I)V
    .registers 2
    .parameter "plusOneCount"

    .prologue
    .line 152
    iput p1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mPlusOneCount:I

    .line 153
    return-void
.end method

.method public showHeaderInfoView(Z)V
    .registers 7
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    .line 163
    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mHide:Z

    .line 165
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 166
    .local v0, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_c

    .line 167
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 170
    :cond_c
    if-eqz p1, :cond_1c

    .line 171
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040002

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 173
    .local v1, titleAnimation:Landroid/view/animation/Animation;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/PhotoInfoView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 175
    .end local v1           #titleAnimation:Landroid/view/animation/Animation;
    :cond_1c
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setVisibility(I)V

    .line 176
    return-void
.end method
