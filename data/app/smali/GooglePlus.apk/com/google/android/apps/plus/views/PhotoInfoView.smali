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

.field private static sPlusoneByMeBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private mAlbumContent:Ljava/lang/CharSequence;

.field private mAlbumId:J

.field private mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

.field private mAlbumStream:Ljava/lang/String;

.field private mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

.field private mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

.field private mCommentText:Ljava/lang/String;

.field private mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

.field private mDate:Ljava/lang/CharSequence;

.field private mEventId:Ljava/lang/String;

.field private mFixedHeight:I

.field private mHide:Z

.field private mOwnerId:Ljava/lang/String;

.field private mOwnerName:Ljava/lang/CharSequence;

.field private mPlusOneText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAvatarRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mFixedHeight:I

    .line 103
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->initialize()V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mFixedHeight:I

    .line 108
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->initialize()V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mFixedHeight:I

    .line 113
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->initialize()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/plus/views/PhotoInfoView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mHide:Z

    return v0
.end method

.method private static createSpannedAlbumHtml(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/Spanned;
    .registers 12
    .parameter "context"
    .parameter "eventId"
    .parameter "albumId"
    .parameter "albumStream"
    .parameter "ownerGaiaId"
    .parameter "albumName"

    .prologue
    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 494
    .local v2, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_62

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 502
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

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</a>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, albumHtml:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->buildStateSpans(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    return-object v3

    .line 496
    .end local v0           #albumHtml:Ljava/lang/String;
    .end local v1           #id:Ljava/lang/String;
    :cond_62
    if-eqz p4, :cond_7c

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #id:Ljava/lang/String;
    goto :goto_1e

    .line 499
    .end local v1           #id:Ljava/lang/String;
    :cond_7c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "aid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

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
    .line 464
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_a

    .line 465
    const/4 v0, 0x0

    .line 469
    .local v0, height:I
    :goto_9
    return v0

    .line 467
    .end local v0           #height:I
    :cond_a
    sget v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarHeight:I

    .restart local v0       #height:I
    goto :goto_9
.end method

.method private initialize()V
    .registers 10

    .prologue
    const v8, 0x7f0d00c2

    const v7, 0x7f0d00c1

    const v6, 0x7f0a006d

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 520
    sget-boolean v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInitialized:Z

    if-nez v2, :cond_194

    .line 521
    sput-boolean v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInitialized:Z

    .line 523
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 524
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 527
    .local v1, resources:Landroid/content/res/Resources;
    invoke-static {v0, v4}, Lcom/google/android/apps/plus/content/EsAvatarData;->getSmallDefaultAvatar(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    .line 528
    const v2, 0x7f020155

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentBitmap:Landroid/graphics/Bitmap;

    .line 530
    const v2, 0x7f020156

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    .line 531
    const v2, 0x7f02015c

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusoneByMeBitmap:Landroid/graphics/Bitmap;

    .line 534
    const v2, 0x7f0201e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoBackground:Landroid/graphics/drawable/Drawable;

    .line 536
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    sput-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    .line 537
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 538
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    const v3, 0x7f0a006c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 539
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 540
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 541
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    invoke-static {v2, v8}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 543
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    sput-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDatePaint:Landroid/text/TextPaint;

    .line 544
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 545
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDatePaint:Landroid/text/TextPaint;

    const v3, 0x7f0a006e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 546
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDatePaint:Landroid/text/TextPaint;

    const v3, 0x7f0d00c3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 547
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDatePaint:Landroid/text/TextPaint;

    const v3, 0x7f0d00c3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 549
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    sput-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    .line 550
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 551
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 552
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 553
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, v2, Landroid/text/TextPaint;->linkColor:I

    .line 554
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    invoke-static {v2, v7}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 556
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    sput-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountPaint:Landroid/text/TextPaint;

    .line 557
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 558
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountPaint:Landroid/text/TextPaint;

    const v3, 0x7f0a006f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 559
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountPaint:Landroid/text/TextPaint;

    const v3, 0x7f0d00c4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 561
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountPaint:Landroid/text/TextPaint;

    const v3, 0x7f0d00c4

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 564
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    sput-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    .line 565
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 566
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    const v3, 0x7f0a0070

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 567
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    const v3, 0x7f0d00c5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 569
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountPaint:Landroid/text/TextPaint;

    const v3, 0x7f0d00c5

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 573
    const v2, 0x7f0d00b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarHeight:I

    .line 574
    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarHeight:I

    sput v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarWidth:I

    .line 575
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAvatarRect:Landroid/graphics/Rect;

    sget v3, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarWidth:I

    sget v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarHeight:I

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 577
    const v2, 0x7f0d00b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoRightPadding:I

    .line 578
    const v2, 0x7f0d00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAvatarRightMargin:I

    .line 580
    const v2, 0x7f0d00bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDateRightMargin:I

    .line 581
    const v2, 0x7f0d00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumRightMargin:I

    .line 582
    const v2, 0x7f0d00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountLeftMargin:I

    .line 584
    const v2, 0x7f0d00bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountLeftMargin:I

    .line 586
    const v2, 0x7f0d00be

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBottomMargin:I

    .line 588
    const v2, 0x7f0d00bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountTextWidth:I

    .line 590
    const v2, 0x7f0d00c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountTextWidth:I

    .line 593
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #resources:Landroid/content/res/Resources;
    :cond_194
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

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v0, v4

    .line 251
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 252
    .local v1, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_6c

    :pswitch_14
    move v2, v3

    .line 295
    :goto_15
    return v2

    .line 254
    :pswitch_16
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v4, v0, v1, v3}, Lcom/google/android/apps/plus/views/ClickableUserImage;->handleEvent(III)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 255
    iget-object v3, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    iput-object v3, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 256
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->invalidate()V

    goto :goto_15

    .line 258
    :cond_2a
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v4, v0, v1, v3}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->handleEvent(III)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 260
    iget-object v3, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    iput-object v3, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 261
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->invalidate()V

    goto :goto_15

    :cond_3e
    move v2, v3

    .line 265
    goto :goto_15

    .line 269
    :pswitch_40
    iput-object v5, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 271
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v4, :cond_4b

    .line 272
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->handleEvent(III)Z

    .line 275
    :cond_4b
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v4, :cond_54

    .line 276
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v4, v0, v1, v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->handleEvent(III)Z

    .line 279
    :cond_54
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->invalidate()V

    move v2, v3

    .line 280
    goto :goto_15

    .line 284
    :pswitch_59
    iget-object v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    if-eqz v4, :cond_69

    .line 285
    iget-object v3, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    const/4 v4, 0x3

    invoke-interface {v3, v0, v1, v4}, Lcom/google/android/apps/plus/views/ClickableItem;->handleEvent(III)Z

    .line 286
    iput-object v5, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCurrentClickableItem:Lcom/google/android/apps/plus/views/ClickableItem;

    .line 287
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->invalidate()V

    goto :goto_15

    :cond_69
    move v2, v3

    .line 290
    goto :goto_15

    .line 252
    nop

    :pswitch_data_6c
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
    .line 304
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mHide:Z

    .line 306
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 307
    .local v0, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_c

    .line 308
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 311
    :cond_c
    if-eqz p1, :cond_25

    .line 312
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040006

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 314
    .local v1, titleAnimation:Landroid/view/animation/Animation;
    new-instance v2, Lcom/google/android/apps/plus/views/PhotoInfoView$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/plus/views/PhotoInfoView$1;-><init>(Lcom/google/android/apps/plus/views/PhotoInfoView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 330
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/PhotoInfoView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 334
    .end local v1           #titleAnimation:Landroid/view/animation/Animation;
    :goto_24
    return-void

    .line 332
    :cond_25
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setVisibility(I)V

    goto :goto_24
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 29
    .parameter "canvas"

    .prologue
    .line 338
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 340
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getInfoBoxHeight()I

    move-result v19

    .line 341
    .local v19, infoBoxHeight:I
    if-lez v19, :cond_2a2

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getHeight()I

    move-result v2

    sub-int v20, v2, v19

    .line 346
    .local v20, infoBoxY:I
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoBackground:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getHeight()I

    move-result v6

    move/from16 v0, v20

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 347
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 349
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBottomMargin:I

    add-int/2addr v2, v4

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int v17, v2, v4

    .line 351
    .local v17, countHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getWidth()I

    move-result v2

    sget v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoRightPadding:I

    sub-int v24, v2, v4

    .line 352
    .local v24, xPos:I
    sub-int v2, v19, v17

    div-int/lit8 v2, v2, 0x2

    add-int v26, v20, v2

    .line 355
    .local v26, yPos:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mPlusOneText:Ljava/lang/String;

    if-eqz v2, :cond_93

    .line 356
    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountTextWidth:I

    sub-int v24, v24, v2

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mPlusOneText:Ljava/lang/String;

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

    .line 360
    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneCountLeftMargin:I

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int v24, v24, v2

    .line 361
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, v24

    int-to-float v4, v0

    move/from16 v0, v26

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getWidth()I

    move-result v2

    sget v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoRightPadding:I

    sub-int v24, v2, v4

    .line 364
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sPlusOneBottomMargin:I

    add-int/2addr v2, v4

    add-int v26, v26, v2

    .line 368
    :cond_93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCommentText:Ljava/lang/String;

    if-eqz v2, :cond_ce

    .line 369
    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountTextWidth:I

    sub-int v24, v24, v2

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCommentText:Ljava/lang/String;

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

    .line 373
    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentCountLeftMargin:I

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    add-int/2addr v2, v4

    sub-int v24, v24, v2

    .line 374
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sCommentBitmap:Landroid/graphics/Bitmap;

    move/from16 v0, v24

    int-to-float v4, v0

    move/from16 v0, v26

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 377
    :cond_ce
    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDateRightMargin:I

    sub-int v25, v24, v2

    .line 380
    .local v25, xPosEnd:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v2, :cond_2a3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2a3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    .line 382
    .local v16, avatar:Landroid/graphics/Bitmap;
    :goto_ea
    const/4 v2, 0x0

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAvatarRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    if-eqz v2, :cond_10e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableUserImage;->isClicked()Z

    move-result v2

    if-eqz v2, :cond_10e

    .line 385
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/ClickableUserImage;->drawSelectionRect(Landroid/graphics/Canvas;)V

    .line 389
    :cond_10e
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v22, v0

    .line 390
    .local v22, nameHeight:I
    sget-object v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v2

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v14, v2

    .line 392
    .local v14, albumHeight:I
    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarWidth:I

    sget v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAvatarRightMargin:I

    add-int v24, v2, v4

    .line 393
    add-int v2, v22, v14

    sub-int v2, v19, v2

    div-int/lit8 v2, v2, 0x2

    add-int v26, v20, v2

    .line 395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_18b

    .line 396
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

    .line 398
    .local v23, ownerNameWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerName:Ljava/lang/CharSequence;

    .line 399
    .local v3, drawText:Ljava/lang/CharSequence;
    add-int v2, v24, v23

    move/from16 v0, v25

    if-le v2, v0, :cond_16f

    .line 400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerName:Ljava/lang/CharSequence;

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sNamePaint:Landroid/text/TextPaint;

    sub-int v5, v25, v24

    int-to-float v5, v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 403
    :cond_16f
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

    .line 405
    add-int v26, v26, v22

    .line 408
    .end local v3           #drawText:Ljava/lang/CharSequence;
    .end local v23           #ownerNameWidth:I
    :cond_18b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumContent:Ljava/lang/CharSequence;

    if-eqz v2, :cond_260

    .line 409
    sub-int v21, v25, v24

    .line 410
    .local v21, maxWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mDate:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1b8

    .line 411
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

    .line 412
    .local v18, dateWidth:F
    move/from16 v0, v21

    int-to-float v2, v0

    sget v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumRightMargin:I

    int-to-float v4, v4

    add-float v4, v4, v18

    sub-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v21, v0

    .line 415
    .end local v18           #dateWidth:F
    :cond_1b8
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

    .line 417
    .local v13, albumContentWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumContent:Ljava/lang/CharSequence;

    .line 418
    .restart local v3       #drawText:Ljava/lang/CharSequence;
    move/from16 v0, v21

    if-le v13, v0, :cond_1e3

    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumContent:Ljava/lang/CharSequence;

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    move/from16 v0, v21

    int-to-float v5, v0

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 423
    :cond_1e3
    move/from16 v0, v21

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 424
    .local v15, albumNameWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    if-eqz v2, :cond_1f9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getWidth()I

    move-result v2

    if-eq v2, v15, :cond_232

    .line 425
    :cond_1f9
    new-instance v2, Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mEventId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumStream:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerId:Ljava/lang/String;

    move-object v10, v3

    invoke-static/range {v4 .. v10}, Lcom/google/android/apps/plus/views/PhotoInfoView;->createSpannedAlbumHtml(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/text/Spanned;

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

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->setPosition(II)V

    .line 431
    :cond_232
    move/from16 v0, v24

    int-to-float v2, v0

    move/from16 v0, v26

    int-to-float v4, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 433
    move/from16 v0, v24

    neg-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v26

    neg-int v4, v0

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumName:Lcom/google/android/apps/plus/views/ClickableStaticLayout;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/ClickableStaticLayout;->getWidth()I

    move-result v2

    sget v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumRightMargin:I

    add-int/2addr v2, v4

    add-int v24, v24, v2

    .line 437
    .end local v3           #drawText:Ljava/lang/CharSequence;
    .end local v13           #albumContentWidth:I
    .end local v15           #albumNameWidth:I
    .end local v21           #maxWidth:I
    :cond_260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mDate:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2a2

    .line 438
    move/from16 v0, v26

    int-to-float v2, v0

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sAlbumPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v26, v0

    .line 439
    move/from16 v0, v26

    int-to-float v2, v0

    sget-object v4, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDatePaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    add-float/2addr v2, v4

    float-to-int v0, v2

    move/from16 v26, v0

    .line 441
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

    .line 445
    .end local v14           #albumHeight:I
    .end local v16           #avatar:Landroid/graphics/Bitmap;
    .end local v17           #countHeight:I
    .end local v20           #infoBoxY:I
    .end local v22           #nameHeight:I
    .end local v24           #xPos:I
    .end local v25           #xPosEnd:I
    .end local v26           #yPos:I
    :cond_2a2
    return-void

    .line 380
    .restart local v17       #countHeight:I
    .restart local v20       #infoBoxY:I
    .restart local v24       #xPos:I
    .restart local v25       #xPosEnd:I
    .restart local v26       #yPos:I
    :cond_2a3
    sget-object v16, Lcom/google/android/apps/plus/views/PhotoInfoView;->sDefaultAvatarBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_ea
.end method

.method protected onMeasure(II)V
    .registers 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getInfoBoxHeight()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mFixedHeight:I

    .line 450
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mFixedHeight:I

    if-lez v0, :cond_1f

    .line 451
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mFixedHeight:I

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 453
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mFixedHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setMeasuredDimension(II)V

    .line 457
    :goto_1e
    return-void

    .line 455
    :cond_1f
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    goto :goto_1e
.end method

.method public onSpanClick(Landroid/text/style/URLSpan;)V
    .registers 3
    .parameter "span"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    if-eqz v0, :cond_9

    .line 237
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/apps/plus/views/ItemClickListener;->onSpanClick(Landroid/text/style/URLSpan;)V

    .line 239
    :cond_9
    return-void
.end method

.method public onUserImageClick(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "gaiaId"
    .parameter "authorName"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    if-eqz v0, :cond_9

    .line 244
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/apps/plus/views/ItemClickListener;->onUserImageClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_9
    return-void
.end method

.method public setAlbum(JLjava/lang/String;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "albumId"
    .parameter "albumStream"
    .parameter "albumName"

    .prologue
    .line 139
    iput-object p4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumContent:Ljava/lang/CharSequence;

    .line 140
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumId:J

    .line 141
    iput-object p3, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAlbumStream:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setCommentCount(I)V
    .registers 5
    .parameter "commentCount"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCommentText:Ljava/lang/String;

    .line 156
    .local v0, oldCommentText:Ljava/lang/String;
    if-gez p1, :cond_5

    .line 171
    :cond_4
    :goto_4
    return-void

    .line 160
    :cond_5
    if-nez p1, :cond_16

    .line 161
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCommentText:Ljava/lang/String;

    .line 168
    :goto_a
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCommentText:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 169
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->invalidate()V

    goto :goto_4

    .line 162
    :cond_16
    const/16 v1, 0x63

    if-le p1, v1, :cond_28

    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCommentText:Ljava/lang/String;

    goto :goto_a

    .line 165
    :cond_28
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mCommentText:Ljava/lang/String;

    goto :goto_a
.end method

.method public setEvent(Ljava/lang/String;)V
    .registers 2
    .parameter "eventId"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mEventId:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setExternalClickListener(Lcom/google/android/apps/plus/views/ItemClickListener;)V
    .registers 2
    .parameter "clickListener"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mClickListener:Lcom/google/android/apps/plus/views/ItemClickListener;

    .line 199
    return-void
.end method

.method public setOwner(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 8
    .parameter "gaiaId"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 120
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerId:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerName:Ljava/lang/CharSequence;

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerName:Ljava/lang/CharSequence;

    if-nez v1, :cond_1d

    const/4 v0, 0x0

    .line 124
    .local v0, nameString:Ljava/lang/String;
    :goto_a
    new-instance v1, Lcom/google/android/apps/plus/views/ClickableUserImage;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerId:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v0, p0}, Lcom/google/android/apps/plus/views/ClickableUserImage;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/views/ClickableUserImage$UserImageClickListener;)V

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    .line 125
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mAvatar:Lcom/google/android/apps/plus/views/ClickableUserImage;

    sget v2, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarWidth:I

    sget v3, Lcom/google/android/apps/plus/views/PhotoInfoView;->sInfoAvatarHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/google/android/apps/plus/views/ClickableUserImage;->setRect(IIII)V

    .line 126
    return-void

    .line 122
    .end local v0           #nameString:Ljava/lang/String;
    :cond_1d
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mOwnerName:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public setPhotoDate(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "date"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mDate:Ljava/lang/CharSequence;

    .line 133
    return-void
.end method

.method public setPlusOneCount(I)V
    .registers 5
    .parameter "plusOneCount"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mPlusOneText:Ljava/lang/String;

    .line 178
    .local v0, oldPlusOneText:Ljava/lang/String;
    if-gez p1, :cond_5

    .line 195
    :cond_4
    :goto_4
    return-void

    .line 182
    :cond_5
    if-nez p1, :cond_16

    .line 183
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mPlusOneText:Ljava/lang/String;

    .line 192
    :goto_a
    iget-object v1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mPlusOneText:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 193
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->invalidate()V

    goto :goto_4

    .line 185
    :cond_16
    const/16 v1, 0x63

    if-le p1, v1, :cond_28

    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mPlusOneText:Ljava/lang/String;

    goto :goto_a

    .line 188
    :cond_28
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mPlusOneText:Ljava/lang/String;

    goto :goto_a
.end method

.method public showHeaderInfoView(Z)V
    .registers 7
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    .line 205
    iput-boolean v4, p0, Lcom/google/android/apps/plus/views/PhotoInfoView;->mHide:Z

    .line 207
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 208
    .local v0, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_c

    .line 209
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 212
    :cond_c
    if-eqz p1, :cond_1c

    .line 213
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoInfoView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040004

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 215
    .local v1, titleAnimation:Landroid/view/animation/Animation;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/views/PhotoInfoView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 217
    .end local v1           #titleAnimation:Landroid/view/animation/Animation;
    :cond_1c
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/views/PhotoInfoView;->setVisibility(I)V

    .line 218
    return-void
.end method
