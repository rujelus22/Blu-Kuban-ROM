.class public Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;
.super Ljava/lang/Object;
.source "FeedListBinder.java"


# static fields
.field private static instance:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;

.field public static paramWidth:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImageCashManager:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->paramWidth:I

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->instance:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->Initialize()V

    .line 34
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;
    .registers 3
    .parameter

    .prologue
    .line 38
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->instance:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;

    if-nez v0, :cond_f

    .line 40
    const-class v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;

    monitor-enter v1

    .line 42
    :try_start_7
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->instance:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;

    .line 43
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_12

    .line 45
    :cond_f
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->instance:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;

    return-object v0

    .line 43
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public Initialize()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mImageCashManager:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    .line 52
    return-void
.end method

.method public bindView(Landroid/view/View;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 5
    .parameter "parent"
    .parameter "data"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;

    .line 62
    .local v0, view:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;
    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAllContents:Lcom/sec/android/widgetapp/socialhub/view/HubLinearLayout;

    invoke-virtual {v1}, Lcom/sec/android/widgetapp/socialhub/view/HubLinearLayout;->getWidth()I

    move-result v1

    sput v1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->paramWidth:I

    .line 63
    invoke-virtual {p0, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->inflateMediaListener(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 64
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->drawProfile(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 65
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->drawName(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 66
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->drawContent(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 67
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->drawMood(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 68
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->drawMedia(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 69
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->drawComment(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 70
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->drawRetweetedBy(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 71
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->drawAttachment(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 72
    invoke-virtual {p0, v0, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->setClickLisener(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 73
    return-void
.end method

.method public drawAttachment(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 5
    .parameter "view"
    .parameter "data"

    .prologue
    .line 308
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->getViewType(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;

    move-result-object v0

    .line 309
    .local v0, type:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;
    invoke-virtual {v0, p1, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->drawAttachment(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 310
    return-void
.end method

.method public drawComment(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 8
    .parameter "view"
    .parameter "data"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 314
    iget v1, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miSpType:I

    invoke-static {v1}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->getService(I)Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;

    move-result-object v0

    .line 317
    .local v0, sns:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;
    const/16 v1, 0x1a

    invoke-interface {v0, v1}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;->isSupport(I)Z

    move-result v1

    if-eqz v1, :cond_49

    iget v1, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miRecommendCount:I

    if-lez v1, :cond_49

    .line 319
    iget-object v1, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutLike:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    iget-object v1, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextLike:Landroid/widget/TextView;

    iget v2, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miRecommendCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    iget-object v1, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageComment:Landroid/widget/ImageView;

    invoke-interface {v0, v3}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;->getDrawable(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 328
    :goto_2e
    invoke-interface {v0, v4}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;->isSupport(I)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget v1, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miCommentCount:I

    if-lez v1, :cond_4f

    .line 330
    iget-object v1, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutComment:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    iget-object v1, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextComment:Landroid/widget/TextView;

    iget v2, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miCommentCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :goto_48
    return-void

    .line 325
    :cond_49
    iget-object v1, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutLike:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2e

    .line 336
    :cond_4f
    iget-object v1, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutComment:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_48
.end method

.method public drawContent(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 5
    .parameter "view"
    .parameter "data"

    .prologue
    const/16 v1, 0x8

    .line 253
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrContents:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 255
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrContents:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    .line 257
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextContent:Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->setVisibility(I)V

    .line 258
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextContent:Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;

    iget-object v1, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrContents:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 269
    :goto_1b
    return-void

    .line 262
    :cond_1c
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextContent:Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->setVisibility(I)V

    goto :goto_1b

    .line 267
    :cond_22
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextContent:Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->setVisibility(I)V

    goto :goto_1b
.end method

.method public drawMedia(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 5
    .parameter "view"
    .parameter "data"

    .prologue
    .line 303
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->getViewType(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;

    move-result-object v0

    .line 304
    .local v0, type:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->drawMedia(Landroid/content/Context;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V

    .line 305
    return-void
.end method

.method public drawMood(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 12
    .parameter "view"
    .parameter "data"

    .prologue
    const/16 v2, 0x8

    const/4 v8, 0x0

    .line 273
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    if-eqz v0, :cond_72

    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrAttachmentType:Ljava/lang/String;

    const-string v1, "mood"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 275
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrMoodName:Ljava/lang/String;

    if-eqz v0, :cond_6c

    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrMoodText:Ljava/lang/String;

    if-eqz v0, :cond_6c

    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrMoodIconUrl:Ljava/lang/String;

    if-eqz v0, :cond_6c

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mContext:Landroid/content/Context;

    const v2, 0x7f07000e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miRecommendCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrMoodText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 278
    .local v7, moodText:Ljava/lang/String;
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextMood:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mImageCashManager:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrMoodIconUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageMood:Landroid/widget/ImageView;

    const v5, 0x7f020023

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 282
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_66

    .line 284
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageMood:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 287
    :cond_66
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMood:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 299
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #moodText:Ljava/lang/String;
    :goto_6b
    return-void

    .line 292
    :cond_6c
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMood:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6b

    .line 297
    :cond_72
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutMood:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_6b
.end method

.method public drawName(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 18
    .parameter "view"
    .parameter "data"

    .prologue
    .line 127
    const/4 v14, 0x0

    .line 129
    .local v14, time:Ljava/lang/CharSequence;
    move-object/from16 v0, p2

    iget-wide v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mlTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_131

    .line 131
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mlTime:J

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/SocialHubDateFormat;->getDateTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    .line 136
    :goto_15
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextDate:Landroid/widget/TextView;

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const-string v1, "FeedListBinder"

    const-string v2, "drawName"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActorName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TargetDisplayName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrTargetDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorName:Ljava/lang/String;

    if-eqz v1, :cond_22b

    .line 142
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrTargetDisplayName:Ljava/lang/String;

    if-eqz v1, :cond_1e8

    .line 144
    const/4 v9, 0x0

    .line 146
    .local v9, layout_width:I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextName:Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImgWallPost:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 152
    .local v10, mConfig:Landroid/content/res/Configuration;
    iget v1, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_135

    .line 154
    const/16 v9, 0x119

    .line 161
    :cond_79
    :goto_79
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v13, v1

    .line 162
    .local v13, text_my:I
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrTargetDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v12, v1

    .line 164
    .local v12, text_friend:I
    add-int/lit8 v1, v9, -0x1a

    if-le v13, v1, :cond_183

    .line 166
    add-int/lit8 v1, v9, -0x12

    if-le v12, v1, :cond_13e

    .line 168
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImgWallPost:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImgWallPostDown:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownDown:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownDown:Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrTargetDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    .end local v9           #layout_width:I
    .end local v10           #mConfig:Landroid/content/res/Configuration;
    .end local v12           #text_friend:I
    .end local v13           #text_my:I
    :cond_eb
    :goto_eb
    move-object/from16 v0, p2

    iget v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miSpType:I

    invoke-static {v1}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->getService(I)Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;

    move-result-object v11

    .line 228
    .local v11, sns:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;
    :try_start_f3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageMediaType:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 230
    const/16 v1, 0xe

    invoke-interface {v11, v1}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;->isSupport(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_130

    .line 232
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrIconUrl:Ljava/lang/String;

    if-eqz v1, :cond_130

    .line 234
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageMediaType:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mImageCashManager:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrIconUrl:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageMediaType:Landroid/widget/ImageView;

    const v6, 0x7f02002a

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 236
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_130

    .line 238
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageMediaType:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_130
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_130} :catch_236

    .line 248
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_130
    :goto_130
    return-void

    .line 134
    .end local v11           #sns:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;
    :cond_131
    const-string v14, ""

    goto/16 :goto_15

    .line 156
    .restart local v9       #layout_width:I
    .restart local v10       #mConfig:Landroid/content/res/Configuration;
    :cond_135
    iget v1, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_79

    .line 158
    const/16 v9, 0x259

    goto/16 :goto_79

    .line 177
    .restart local v12       #text_friend:I
    .restart local v13       #text_my:I
    :cond_13e
    add-int/lit8 v1, v9, -0x12

    if-gt v12, v1, :cond_eb

    .line 179
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImgWallPost:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImgWallPostDown:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrTargetDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownDown:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_eb

    .line 188
    :cond_183
    add-int/lit8 v1, v9, -0x1a

    if-gt v13, v1, :cond_eb

    .line 190
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImgWallPostDown:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 191
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownDown:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    add-int/lit8 v1, v13, 0x1a

    add-int/2addr v1, v12

    if-le v1, v9, :cond_1c5

    .line 196
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrTargetDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_eb

    .line 200
    :cond_1c5
    add-int/lit8 v1, v13, 0x1a

    add-int/2addr v1, v12

    if-gt v1, v9, :cond_eb

    .line 202
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 204
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrTargetDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_eb

    .line 210
    .end local v9           #layout_width:I
    .end local v10           #mConfig:Landroid/content/res/Configuration;
    .end local v12           #text_friend:I
    .end local v13           #text_my:I
    :cond_1e8
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImgWallPost:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImgWallPostDown:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 212
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 213
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDown:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 214
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownTwo:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTargetNameDownDown:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextName:Landroid/widget/TextView;

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_eb

    .line 221
    :cond_22b
    const-string v1, "FeedListBinder"

    const-string v2, "drawName"

    const-string v3, "data.mstrActorName is null"

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_eb

    .line 243
    .restart local v11       #sns:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;
    :catch_236
    move-exception v8

    .line 245
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_130
.end method

.method public drawProfile(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 11
    .parameter "view"
    .parameter "data"

    .prologue
    .line 99
    iget v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miSpType:I

    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->getService(I)Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;

    move-result-object v7

    .line 100
    .local v7, sns:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mImageCashManager:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mContext:Landroid/content/Context;

    iget-object v2, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrActorPhotoUrl:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageProfile:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;->getImageResource(I)I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->getImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/Adapter;Landroid/widget/ImageView;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 102
    .local v6, bitmap:Landroid/graphics/Bitmap;
    if-nez v7, :cond_24

    .line 104
    const-string v0, "FeedListBinder"

    const-string v1, "drawProfile()"

    const-string v2, "ISnsAdapter is null!!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_23
    return-void

    .line 109
    :cond_24
    const-string v0, "FeedListBinder"

    const-string v1, "drawProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sns type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miSpType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sns = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    if-eqz v6, :cond_51

    .line 114
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageProfile:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    :cond_51
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageISP:Landroid/widget/ImageView;

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;->getImageResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_23
.end method

.method public drawRetweetedBy(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 8
    .parameter "view"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 342
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutRetweetBy:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 344
    iget-object v0, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrForwarderName:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 346
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutRetweetBy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 347
    iget-object v0, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextRetweetBy:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mContext:Landroid/content/Context;

    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->mstrForwarderName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 349
    :cond_2a
    return-void
.end method

.method public inflateMediaListener(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 6
    .parameter "data"

    .prologue
    .line 77
    iget-object v3, p0, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedListBinder;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/ViewTypeFactory;->getViewType(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;

    move-result-object v2

    .line 78
    .local v2, type:Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;
    iget v3, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miSpType:I

    invoke-static {v3}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->getService(I)Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;

    move-result-object v1

    .line 79
    .local v1, sns:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;
    invoke-interface {v1}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;->getEventHandler()Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;

    move-result-object v0

    .line 81
    .local v0, handler:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->getVideoClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->setVideoClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->getPhotoClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/socialhub/feedslist/viewtype/AbstractViewType;->setPhotoClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method public setClickLisener(Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;)V
    .registers 7
    .parameter "view"
    .parameter "data"

    .prologue
    .line 86
    iget v2, p2, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedDataWrapper;->miSpType:I

    invoke-static {v2}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/SnsSpManager;->getService(I)Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;

    move-result-object v1

    .line 87
    .local v1, sns:Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;
    invoke-interface {v1}, Lcom/sec/android/widgetapp/socialhub/sns/adapter/sp/ISnsAdapter;->getEventHandler()Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;

    move-result-object v0

    .line 89
    .local v0, handler:Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;
    iget-object v2, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAllContents:Lcom/sec/android/widgetapp/socialhub/view/HubLinearLayout;

    invoke-virtual {v2, p2}, Lcom/sec/android/widgetapp/socialhub/view/HubLinearLayout;->setTag(Ljava/lang/Object;)V

    .line 90
    iget-object v2, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mLayoutAllContents:Lcom/sec/android/widgetapp/socialhub/view/HubLinearLayout;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->getFeedTextListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/socialhub/view/HubLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v2, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextContent:Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;

    invoke-virtual {v2, p2}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->setTag(Ljava/lang/Object;)V

    .line 92
    iget-object v2, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mTextContent:Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->getFeedTextListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/widgetapp/socialhub/view/LinkTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object v2, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageProfile:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v2, p1, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedViewWrapper;->mImageProfile:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/FeedEventHandler;->getActorPhotoClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    return-void
.end method
