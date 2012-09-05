.class public Lcom/google/android/finsky/utils/BadgeUtils;
.super Ljava/lang/Object;
.source "BadgeUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configureCreatorBadge(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/layout/DecoratedTextView;)V
    .registers 8
    .parameter "doc"
    .parameter "bitmapLoader"
    .parameter "creatorTextView"

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasCreatorBadges()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 28
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getFirstCreatorBadge()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    move-result-object v2

    .line 29
    .local v2, firstCreatorBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;I)Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, badgeAnnotationUrl:Ljava/lang/String;
    if-eqz v0, :cond_20

    .line 32
    invoke-virtual {p2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 34
    .local v1, badgeSize:I
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->loadDecoration(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;I)V

    .line 39
    .end local v0           #badgeAnnotationUrl:Ljava/lang/String;
    .end local v1           #badgeSize:I
    .end local v2           #firstCreatorBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_20
    :goto_20
    return-void

    .line 37
    :cond_21
    invoke-virtual {p2, v4, v4, v4, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_20
.end method

.method public static configureRatingItemSection(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader;Landroid/widget/RatingBar;Lcom/google/android/finsky/layout/DecoratedTextView;)V
    .registers 12
    .parameter "doc"
    .parameter "bitmapLoader"
    .parameter "ratingBar"
    .parameter "textView"

    .prologue
    const/4 v7, 0x0

    .line 43
    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 44
    if-eqz p3, :cond_c

    .line 45
    const/16 v3, 0x8

    invoke-virtual {p3, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 48
    :cond_c
    if-eqz p3, :cond_43

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasItemBadges()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 49
    invoke-virtual {p3, v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 50
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getFirstItemBadge()Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;

    move-result-object v2

    .line 51
    .local v2, firstItemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/BadgeUtils;->getImageUrl(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, badgeAnnotationUrl:Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 54
    invoke-virtual {p3}, Lcom/google/android/finsky/layout/DecoratedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b005b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 56
    .local v1, badgeSize:I
    invoke-virtual {p3, p1, v0, v1}, Lcom/google/android/finsky/layout/DecoratedTextView;->loadDecoration(Lcom/google/android/finsky/utils/BitmapLoader;Ljava/lang/String;I)V

    .line 58
    .end local v1           #badgeSize:I
    :cond_30
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v3, 0x7f0a0006

    invoke-virtual {p3, v3, v7}, Lcom/google/android/finsky/layout/DecoratedTextView;->setContentColorId(IZ)V

    .line 60
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p3, v3, v4}, Lcom/google/android/finsky/layout/DecoratedTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 67
    .end local v0           #badgeAnnotationUrl:Ljava/lang/String;
    .end local v2           #firstItemBadge:Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;
    :cond_42
    :goto_42
    return-void

    .line 61
    :cond_43
    if-eqz p3, :cond_55

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasCensoring()Z

    move-result v3

    if-nez v3, :cond_51

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasReleaseType()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 62
    :cond_51
    invoke-static {p0, p3}, Lcom/google/android/finsky/utils/BadgeUtils;->configureTipperSticker(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    goto :goto_42

    .line 63
    :cond_55
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasRating()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getRatingCount()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_42

    .line 64
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getStarRating()F

    move-result v3

    invoke-virtual {p2, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 65
    invoke-virtual {p2, v7}, Landroid/widget/RatingBar;->setVisibility(I)V

    goto :goto_42
.end method

.method public static configureTipperSticker(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/DecoratedTextView;)V
    .registers 8
    .parameter "doc"
    .parameter "textView"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 70
    const/4 v2, -0x1

    .line 72
    .local v2, stringId:I
    const v0, 0x7f0a003b

    .line 73
    .local v0, colorId:I
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasCensoring()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 74
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getCensoring()I

    move-result v3

    packed-switch v3, :pswitch_data_56

    .line 85
    :cond_13
    :goto_13
    if-ne v2, v4, :cond_22

    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->hasReleaseType()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 86
    invoke-virtual {p0}, Lcom/google/android/finsky/api/model/Document;->getReleaseType()I

    move-result v3

    packed-switch v3, :pswitch_data_5e

    .line 98
    :cond_22
    :goto_22
    if-le v2, v4, :cond_3e

    .line 99
    invoke-virtual {p1, v5}, Lcom/google/android/finsky/layout/DecoratedTextView;->setVisibility(I)V

    .line 100
    invoke-virtual {p1}, Lcom/google/android/finsky/layout/DecoratedTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, stickerLabel:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Lcom/google/android/finsky/layout/DecoratedTextView;->setContentColorId(IZ)V

    .line 103
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v5}, Lcom/google/android/finsky/layout/DecoratedTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 105
    .end local v1           #stickerLabel:Ljava/lang/String;
    :cond_3e
    return-void

    .line 76
    :pswitch_3f
    const v2, 0x7f07020a

    .line 77
    const v0, 0x7f0a003a

    .line 78
    goto :goto_13

    .line 80
    :pswitch_46
    const v2, 0x7f07020b

    goto :goto_13

    .line 88
    :pswitch_4a
    const v2, 0x7f07020d

    .line 89
    goto :goto_22

    .line 91
    :pswitch_4e
    const v2, 0x7f07020f

    .line 92
    goto :goto_22

    .line 94
    :pswitch_52
    const v2, 0x7f07020c

    goto :goto_22

    .line 74
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_46
    .end packed-switch

    .line 86
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_52
        :pswitch_4a
        :pswitch_4e
    .end packed-switch
.end method

.method public static getImageUrl(Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;I)Ljava/lang/String;
    .registers 5
    .parameter "badge"
    .parameter "imageType"

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$Badge;->getImageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/Doc$Image;

    .line 18
    .local v1, image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageType()I

    move-result v2

    if-ne v2, p1, :cond_8

    .line 19
    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Doc$Image;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 22
    .end local v1           #image:Lcom/google/android/finsky/remoting/protos/Doc$Image;
    :goto_1e
    return-object v2

    :cond_1f
    const/4 v2, 0x0

    goto :goto_1e
.end method
