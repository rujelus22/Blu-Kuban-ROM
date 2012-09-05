.class public final Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;
.super Landroid/widget/LinearLayout;
.source "ThumbnailViewGroup.java"

# interfaces
.implements Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$TimeLineHorizontalScrollViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;
    }
.end annotation


# static fields
.field public static final MODE_EFFECT:I = 0x5

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_SPLIT:I = 0x2

.field public static final MODE_SUB_RETOUCH:I = 0x4

.field public static final MODE_SUB_TRANSITION:I = 0x3

.field public static final MODE_TRIM:I = 0x1

.field private static final MSG_WHAT_UPDATE_CURRENT_VIEW:I = 0x64

.field private static _instance:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;


# instance fields
.field private imgData:Ljava/lang/Object;

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/app/video/editor/external/ClipartParams;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseLinePos:I

.field private mBaselineTimebox:Landroid/widget/TextView;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentTimeInSec:F

.field private mCurrentView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mImageDurationBtn:Landroid/widget/Button;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastCurrentView:Landroid/view/View;

.field private mLastTransitionView:Landroid/widget/ImageView;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;",
            ">;"
        }
    .end annotation
.end field

.field toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$1;-><init>(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mHandler:Landroid/os/Handler;

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->list:Ljava/util/List;

    .line 602
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;-><init>(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 97
    sput-object p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->_instance:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    .line 98
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mContext:Landroid/content/Context;

    .line 99
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->init()V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$1;-><init>(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mHandler:Landroid/os/Handler;

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->list:Ljava/util/List;

    .line 602
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$2;-><init>(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 90
    sput-object p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->_instance:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    .line 91
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mContext:Landroid/content/Context;

    .line 92
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->init()V

    .line 93
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;Ljava/lang/Object;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 570
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->imgData:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 570
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->imgData:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;)Landroid/widget/Button;
    .registers 2
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mImageDurationBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;
    .registers 1

    .prologue
    .line 103
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->_instance:Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    return-object v0
.end method

.method private final getPrevView(Landroid/view/View;)Landroid/view/View;
    .registers 8
    .parameter "view"

    .prologue
    .line 557
    const/4 v3, 0x0

    .line 558
    .local v3, prevView:Landroid/view/View;
    const/4 v1, 0x0

    .line 559
    .local v1, currView:Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v5

    if-lt v2, v5, :cond_b

    move-object v4, v3

    .line 567
    .end local v3           #prevView:Landroid/view/View;
    .local v4, prevView:Landroid/view/View;
    :goto_a
    return-object v4

    .line 560
    .end local v4           #prevView:Landroid/view/View;
    .restart local v3       #prevView:Landroid/view/View;
    :cond_b
    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 561
    .local v0, child:Landroid/view/View;
    move-object v3, v1

    .line 562
    move-object v1, v0

    .line 563
    if-ne v0, p1, :cond_15

    move-object v4, v3

    .line 564
    .end local v3           #prevView:Landroid/view/View;
    .restart local v4       #prevView:Landroid/view/View;
    goto :goto_a

    .line 559
    .end local v4           #prevView:Landroid/view/View;
    .restart local v3       #prevView:Landroid/view/View;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method private getViewIndex(Landroid/view/View;)I
    .registers 5
    .parameter "v"

    .prologue
    .line 986
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_9

    .line 992
    const/4 v1, -0x1

    .end local v1           #i:I
    :cond_8
    return v1

    .line 987
    .restart local v1       #i:I
    :cond_9
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 988
    .local v0, child:Landroid/view/View;
    if-eq v0, p1, :cond_8

    .line 986
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private init()V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->setOnTimeLineHorizontalScrollViewListener(Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView$TimeLineHorizontalScrollViewListener;)V

    .line 109
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->getInstance()Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->init()V

    .line 111
    return-void
.end method

.method private removeChilds(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 6
    .parameter "element"

    .prologue
    .line 1486
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_6
    if-gez v1, :cond_9

    .line 1502
    return-void

    .line 1487
    :cond_9
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1489
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v3, :cond_24

    move-object v3, v2

    .line 1490
    check-cast v3, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    .line 1491
    .local v0, childElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1492
    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeView(Landroid/view/View;)V

    .line 1486
    .end local v2           #view:Landroid/view/View;
    :cond_21
    :goto_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 1495
    .end local v0           #childElement:Lcom/samsung/app/video/editor/external/Element;
    .restart local v2       #view:Landroid/view/View;
    :cond_24
    check-cast v2, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    .line 1496
    .restart local v0       #childElement:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1497
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeViewAt(I)V

    goto :goto_21
.end method

.method private timeFormat(I)Ljava/lang/String;
    .registers 15
    .parameter "timesec"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 949
    rem-int/lit8 v7, p1, 0x3c

    int-to-long v5, v7

    .line 950
    .local v5, seconds:J
    div-int/lit8 v7, p1, 0x3c

    rem-int/lit8 v7, v7, 0x3c

    int-to-long v3, v7

    .line 951
    .local v3, minutes:J
    div-int/lit16 v0, p1, 0xe10

    .line 952
    .local v0, hours:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 953
    .local v1, mFormatBuilder:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/Formatter;

    .line 954
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 953
    invoke-direct {v2, v1, v7}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 955
    .local v2, mFormatter:Ljava/util/Formatter;
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 956
    if-lez v0, :cond_40

    .line 957
    const-string v7, "%02d:%02d:%02d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v2, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v7

    .line 959
    :goto_3f
    return-object v7

    :cond_40
    const-string v7, "%02d:%02d"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v2, v7, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3f
.end method


# virtual methods
.method public addTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1423
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1424
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    .line 1425
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 2
    .parameter "child"

    .prologue
    .line 275
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 14
    .parameter "child"
    .parameter "index"

    .prologue
    const v10, 0x7f0b010f

    const v9, 0x7f0b010d

    const/16 v8, 0x8

    const/4 v7, 0x0

    const v6, 0x7f0b0103

    .line 240
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 242
    instance-of v2, p1, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v2, :cond_41

    .line 243
    const/4 v0, 0x0

    .local v0, i:I
    :goto_14
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_e3

    .line 246
    :cond_20
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ThumbnaiViewGroup addView :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 250
    .end local v0           #i:I
    :cond_41
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    if-eqz v2, :cond_e2

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v2

    if-eqz v2, :cond_e2

    .line 251
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_78

    .line 252
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 253
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    const v3, 0x7f0b00f4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :cond_78
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8d

    .line 256
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :cond_8d
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_bf

    .line 258
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 260
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getThemeName()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/app/video/editor/external/Constants;->getThemeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    :cond_bf
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    .line 263
    .local v1, tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_db

    .line 265
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    move-result-object v2

    if-eqz v2, :cond_db

    .line 266
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->enableDoneButton()V

    .line 269
    :cond_db
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->makeMusicDurationButtonVisible()V

    .line 272
    .end local v1           #tElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_e2
    return-void

    .line 244
    .restart local v0       #i:I
    :cond_e3
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;

    move-object v3, p1

    check-cast v3, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;->onAdded(Lcom/samsung/app/video/editor/external/Element;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_14
.end method

.method final calculateCurrentTime()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 842
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    if-eqz v7, :cond_e2

    .line 843
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v5

    .line 845
    .local v5, startPos:I
    iget v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mBaseLinePos:I

    sub-int v0, v7, v5

    .line 847
    .local v0, diff:I
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentViewScale()F

    move-result v3

    .line 849
    .local v3, scale:F
    int-to-float v7, v0

    mul-float v4, v7, v3

    .line 851
    .local v4, sec:F
    iput v4, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentTimeInSec:F

    .line 855
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    instance-of v7, v7, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v7, :cond_8d

    .line 856
    const/4 v2, 0x0

    .local v2, i:I
    :goto_20
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_2c

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_6c

    .line 880
    .end local v2           #i:I
    :cond_2c
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mBaselineTimebox:Landroid/widget/TextView;

    if-nez v7, :cond_3f

    .line 881
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v7

    const v8, 0x7f0b010c

    invoke-virtual {v7, v8}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mBaselineTimebox:Landroid/widget/TextView;

    .line 883
    :cond_3f
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mBaselineTimebox:Landroid/widget/TextView;

    if-eqz v7, :cond_6b

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mBaselineTimebox:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_6b

    .line 884
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->timeFormat(I)Ljava/lang/String;

    move-result-object v6

    .line 886
    .local v6, str:Ljava/lang/String;
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_da

    .line 887
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mBaselineTimebox:Landroid/widget/TextView;

    const/high16 v8, 0x4190

    invoke-virtual {v7, v11, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 891
    :goto_66
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mBaselineTimebox:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 902
    .end local v0           #diff:I
    .end local v3           #scale:F
    .end local v4           #sec:F
    .end local v5           #startPos:I
    .end local v6           #str:Ljava/lang/String;
    :cond_6b
    return-void

    .line 858
    .restart local v0       #diff:I
    .restart local v2       #i:I
    .restart local v3       #scale:F
    .restart local v4       #sec:F
    .restart local v5       #startPos:I
    :cond_6c
    :try_start_6c
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    check-cast v8, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v4, v9}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;->onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_80} :catch_83

    .line 856
    :goto_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 859
    :catch_83
    move-exception v1

    .line 860
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "Ingore below error <<<<<"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 861
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_80

    .line 864
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    :cond_8d
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    instance-of v7, v7, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    if-eqz v7, :cond_2c

    .line 865
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_94
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_2c

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2c

    .line 867
    :try_start_a0
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;

    .line 868
    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    check-cast v8, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v9

    .line 869
    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    check-cast v8, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v8

    .line 870
    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v10

    .line 871
    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    check-cast v8, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    .line 872
    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    .line 869
    sub-float v8, v10, v8

    .line 867
    invoke-interface {v7, v9, v8, v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;->onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_cd} :catch_d0

    .line 865
    :goto_cd
    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    .line 873
    :catch_d0
    move-exception v1

    .line 874
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "Ingore below error <<<<<"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_cd

    .line 889
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #i:I
    .restart local v6       #str:Ljava/lang/String;
    :cond_da
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mBaselineTimebox:Landroid/widget/TextView;

    const/high16 v8, 0x41b0

    invoke-virtual {v7, v11, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_66

    .line 895
    .end local v0           #diff:I
    .end local v3           #scale:F
    .end local v4           #sec:F
    .end local v5           #startPos:I
    .end local v6           #str:Ljava/lang/String;
    :cond_e2
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    if-eqz v7, :cond_6b

    .line 896
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getTotalDuration()J

    move-result-wide v7

    long-to-int v7, v7

    int-to-float v7, v7

    iput v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentTimeInSec:F

    .line 897
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_f9
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_6b

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_6b

    .line 898
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;

    const/4 v8, 0x0

    iget v9, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentTimeInSec:F

    invoke-interface {v7, v8, v9, v10}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;->onScrolled(Lcom/samsung/app/video/editor/external/Element;FF)V

    .line 897
    add-int/lit8 v2, v2, 0x1

    goto :goto_f9
.end method

.method public changeMode(I)V
    .registers 10
    .parameter "mode"

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 433
    const/4 v4, 0x5

    if-ne p1, v4, :cond_6b

    .line 435
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_19

    .line 450
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v4

    if-lt v0, v4, :cond_5b

    .line 455
    invoke-static {}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->lostAllFocus()V

    .line 485
    :cond_18
    return-void

    .line 437
    :cond_19
    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 438
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v4, :cond_58

    .line 441
    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f02018b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    .line 442
    .local v2, tview:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;
    check-cast v3, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .end local v3           #view:Landroid/view/View;
    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->setElement(Lcom/samsung/app/video/editor/external/Element;)V

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "adding transition at :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 444
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 445
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x10

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 446
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v2, v4, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 448
    .end local v1           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v2           #tview:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;
    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 451
    :cond_5b
    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 452
    .restart local v3       #view:Landroid/view/View;
    instance-of v4, v3, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v4, :cond_68

    .line 453
    check-cast v3, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .end local v3           #view:Landroid/view/View;
    invoke-virtual {v3, p1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->changeMode(I)V

    .line 450
    :cond_68
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 460
    .end local v0           #i:I
    :cond_6b
    if-nez p1, :cond_80

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_80

    .line 461
    const-string v4, "Going for scrolling to zero..."

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4, v6, v6, v6}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(IIZ)V

    .line 464
    :cond_80
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_81
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_18

    .line 465
    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 466
    .restart local v3       #view:Landroid/view/View;
    instance-of v4, v3, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v4, :cond_94

    .line 468
    check-cast v3, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .end local v3           #view:Landroid/view/View;
    invoke-virtual {v3, p1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->changeMode(I)V

    .line 470
    :cond_94
    add-int/lit8 v0, v0, 0x1

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_81
.end method

.method public changePosition(FFLandroid/view/View;)V
    .registers 21
    .parameter "x"
    .parameter "y"
    .parameter "movingView"

    .prologue
    .line 1281
    move-object/from16 v15, p3

    check-cast v15, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v15}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v5

    .line 1283
    .local v5, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentTransitionMap()Ljava/util/HashMap;

    move-result-object v4

    .line 1285
    .local v4, editHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/app/video/editor/external/Edit;>;"
    const/4 v7, 0x0

    .line 1290
    .local v7, mElementPos:I
    move/from16 v0, p1

    float-to-int v15, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getPaddingLeft()I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mBaseLinePos:I

    move/from16 v16, v0

    add-int v10, v15, v16

    .line 1291
    .local v10, scrollerX:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getView(I)Landroid/view/View;

    move-result-object v13

    .line 1292
    .local v13, targetView:Landroid/view/View;
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "changePosition found view :"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1294
    move-object/from16 v0, p3

    if-ne v13, v0, :cond_3b

    .line 1378
    :goto_3a
    return-void

    .line 1296
    :cond_3b
    if-nez v13, :cond_9a

    .line 1299
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeView(Landroid/view/View;)V

    .line 1301
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addView(Landroid/view/View;)V

    .line 1302
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v15

    add-int/lit8 v7, v15, -0x1

    .line 1350
    :goto_51
    :try_start_51
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v15

    invoke-virtual {v15, v5, v7}, Lcom/samsung/app/video/editor/external/TranscodeElement;->insertElement(Lcom/samsung/app/video/editor/external/Element;I)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5c} :catch_12d

    .line 1357
    :goto_5c
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->changeTransition(Ljava/util/HashMap;)V

    .line 1360
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v11

    .line 1361
    .local v11, startXPos:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStoryBoardTime(I)F

    move-result v12

    .line 1363
    .local v12, storyboardTime:F
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "StoryBoardTime :"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1364
    const/4 v6, 0x0

    .local v6, i:I
    :goto_82
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->list:Ljava/util/List;

    if-eqz v15, :cond_92

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->list:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lt v6, v15, :cond_133

    .line 1375
    :cond_92
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/ve/view/timeline/caption/CaptionViewGroup;->update()V

    goto :goto_3a

    .line 1306
    .end local v6           #i:I
    .end local v11           #startXPos:I
    .end local v12           #storyboardTime:F
    :cond_9a
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v11

    .line 1308
    .restart local v11       #startXPos:I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getViewIndex(Landroid/view/View;)I

    move-result v14

    .line 1309
    .local v14, targetViewpos:I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getViewIndex(Landroid/view/View;)I

    move-result v8

    .line 1310
    .local v8, movingViewPos:I
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "changePosition targetViewpos  movingViewPos :"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1311
    const/4 v9, 0x0

    .line 1312
    .local v9, nextToClip:Z
    sub-int v15, v10, v11

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    if-le v15, v0, :cond_d8

    .line 1313
    const/4 v9, 0x1

    .line 1315
    :cond_d8
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "nextToClip :"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1317
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeView(Landroid/view/View;)V

    .line 1318
    if-eqz v9, :cond_112

    .line 1322
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v15

    if-ne v14, v15, :cond_108

    .line 1323
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addView(Landroid/view/View;)V

    .line 1324
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v15

    add-int/lit8 v7, v15, -0x1

    goto/16 :goto_51

    .line 1327
    :cond_108
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addView(Landroid/view/View;I)V

    .line 1328
    move v7, v14

    goto/16 :goto_51

    .line 1335
    :cond_112
    sub-int v15, v14, v8

    if-lez v15, :cond_123

    .line 1336
    add-int/lit8 v15, v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v15}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addView(Landroid/view/View;I)V

    .line 1337
    add-int/lit8 v7, v14, -0x1

    goto/16 :goto_51

    .line 1340
    :cond_123
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addView(Landroid/view/View;I)V

    .line 1341
    move v7, v14

    goto/16 :goto_51

    .line 1352
    .end local v8           #movingViewPos:I
    .end local v9           #nextToClip:Z
    .end local v11           #startXPos:I
    .end local v14           #targetViewpos:I
    :catch_12d
    move-exception v3

    .line 1353
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5c

    .line 1365
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v6       #i:I
    .restart local v11       #startXPos:I
    .restart local v12       #storyboardTime:F
    :cond_133
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->list:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 1366
    .local v2, clipArt:Lcom/samsung/app/video/editor/external/ClipartParams;
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v15

    .line 1367
    add-float/2addr v15, v12

    .line 1366
    invoke-virtual {v2, v15}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardStartTime(F)V

    .line 1368
    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v15

    .line 1369
    add-float/2addr v15, v12

    .line 1368
    invoke-virtual {v2, v15}, Lcom/samsung/app/video/editor/external/ClipartParams;->setStoryBoardEndTime(F)V

    .line 1370
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v15

    invoke-virtual {v15, v2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->addTextEleList(Lcom/samsung/app/video/editor/external/ClipartParams;)V

    .line 1371
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Final clipArt :"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardStartTime()F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/ClipartParams;->getStoryBoardEndTime()F

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1364
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_82
.end method

.method changeTransition(Ljava/util/HashMap;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/Edit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1393
    .local p1, editHashMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/app/video/editor/external/Edit;>;"
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    if-nez v3, :cond_7

    .line 1420
    :cond_6
    return-void

    .line 1411
    :cond_7
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v1

    .line 1412
    .local v1, elementList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 1413
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 1414
    .local v0, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->removetransitionEdit()V

    .line 1416
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_38

    .line 1417
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/app/video/editor/external/Edit;

    invoke-virtual {v0, v3}, Lcom/samsung/app/video/editor/external/Element;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)V

    .line 1412
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_14
.end method

.method public checkElements()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 1460
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    if-nez v4, :cond_8

    .line 1483
    :cond_7
    return-void

    .line 1462
    :cond_8
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    .line 1464
    .local v3, transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_16
    if-ltz v2, :cond_7

    .line 1465
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/Element;

    .line 1466
    .local v0, element:Lcom/samsung/app/video/editor/external/Element;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1467
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_91

    .line 1470
    :cond_37
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1471
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->previewStopFromOutside()V

    .line 1473
    :cond_48
    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1474
    invoke-direct {p0, v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeChilds(Lcom/samsung/app/video/editor/external/Element;)V

    .line 1476
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_91

    .line 1477
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeTransitionView()V

    .line 1478
    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->removetransitionEdit()V

    .line 1464
    :cond_91
    add-int/lit8 v2, v2, -0x1

    goto :goto_16
.end method

.method final createElement(Ljava/lang/String;ILjava/lang/String;)Lcom/samsung/app/video/editor/external/Element;
    .registers 10
    .parameter "filePath"
    .parameter "type"
    .parameter "duration"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const/high16 v3, 0x447a

    .line 1077
    new-instance v1, Lcom/samsung/app/video/editor/external/Element;

    invoke-direct {v1}, Lcom/samsung/app/video/editor/external/Element;-><init>()V

    .line 1078
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v1, p1}, Lcom/samsung/app/video/editor/external/Element;->setFilePath(Ljava/lang/String;)V

    .line 1079
    if-nez p2, :cond_57

    .line 1080
    invoke-virtual {v1, v4}, Lcom/samsung/app/video/editor/external/Element;->setType(I)V

    .line 1084
    :goto_11
    if-eqz p3, :cond_46

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v2

    if-eq v2, v4, :cond_46

    .line 1085
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/Element;->setEndTime(F)V

    .line 1086
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/samsung/app/video/editor/external/Element;->setDuration(F)V

    .line 1087
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Recording duration::::"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v3

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1089
    :cond_46
    new-instance v0, Lcom/samsung/app/video/editor/external/Edit;

    invoke-direct {v0}, Lcom/samsung/app/video/editor/external/Edit;-><init>()V

    .line 1090
    .local v0, edit:Lcom/samsung/app/video/editor/external/Edit;
    invoke-virtual {v0, v5}, Lcom/samsung/app/video/editor/external/Edit;->setType(I)V

    .line 1091
    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/samsung/app/video/editor/external/Edit;->setVolumeLevel(I)V

    .line 1092
    invoke-virtual {v1, v0}, Lcom/samsung/app/video/editor/external/Element;->addEdit(Lcom/samsung/app/video/editor/external/Edit;)V

    .line 1093
    return-object v1

    .line 1082
    .end local v0           #edit:Lcom/samsung/app/video/editor/external/Edit;
    :cond_57
    invoke-virtual {v1, v5}, Lcom/samsung/app/video/editor/external/Element;->setType(I)V

    goto :goto_11
.end method

.method final createVideoClipViewGroup(Landroid/graphics/drawable/Drawable;ILjava/lang/String;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .registers 8
    .parameter "drawable"
    .parameter "type"
    .parameter "filePath"

    .prologue
    .line 230
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mInflater:Landroid/view/LayoutInflater;

    .line 231
    const v2, 0x7f03003b

    const/4 v3, 0x0

    .line 230
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 232
    .local v0, view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->init()V

    .line 233
    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->addThumbNailImage(Landroid/graphics/drawable/Drawable;)V

    .line 236
    return-object v0
.end method

.method finishInflate()V
    .registers 12

    .prologue
    .line 125
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    if-nez v7, :cond_7

    .line 169
    :cond_6
    :goto_6
    return-void

    .line 127
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeAllViews()V

    .line 132
    const-string v7, "ThumnailViewGroup Inflatefinished"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v5

    .line 134
    .local v5, transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v7

    if-eqz v7, :cond_6

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    .line 142
    const/4 v3, 0x0

    .local v3, i:I
    :cond_30
    :goto_30
    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v7

    if-lt v3, v7, :cond_52

    .line 164
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    .line 165
    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 166
    const-string v7, "Launching AddMedia when when there are no elements"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchAddMedia()V

    goto :goto_6

    .line 143
    :cond_52
    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    .line 144
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 147
    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v8

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->createVideoClipViewGroup(Landroid/graphics/drawable/Drawable;ILjava/lang/String;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v6

    .line 148
    .local v6, view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-virtual {v6, v1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setElement(Lcom/samsung/app/video/editor/external/Element;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 149
    invoke-virtual {p0, v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addView(Landroid/view/View;)V

    .line 151
    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 153
    .end local v6           #view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    :cond_8a
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 154
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->deleteAllClipArts()V

    .line 155
    invoke-virtual {v5, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->removeElement(Lcom/samsung/app/video/editor/external/Element;)Ljava/util/List;

    move-result-object v0

    .line 156
    .local v0, cList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    if-eqz v0, :cond_30

    .line 157
    const/4 v4, 0x0

    .local v4, k:I
    :goto_c4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_30

    .line 158
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/ClipartParams;->remove()V

    .line 157
    add-int/lit8 v4, v4, 0x1

    goto :goto_c4
.end method

.method public getBaseLinePosition()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mBaseLinePos:I

    return v0
.end method

.method public declared-synchronized getCurrentElement()Lcom/samsung/app/video/editor/external/Element;
    .registers 2

    .prologue
    .line 1012
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_22

    .line 1013
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    instance-of v0, v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v0, :cond_15

    .line 1014
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_24

    move-result-object v0

    .line 1019
    :goto_13
    monitor-exit p0

    return-object v0

    .line 1015
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    instance-of v0, v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    if-eqz v0, :cond_22

    .line 1016
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    check-cast v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->getElement()Lcom/samsung/app/video/editor/external/Element;
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_24

    .line 1019
    :cond_22
    const/4 v0, 0x0

    goto :goto_13

    .line 1012
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentTimeInSec()F
    .registers 2

    .prologue
    .line 837
    iget v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentTimeInSec:F

    return v0
.end method

.method getCurrentTransitionMap()Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/app/video/editor/external/Edit;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1381
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    if-nez v4, :cond_8

    .line 1382
    const/4 v0, 0x0

    .line 1389
    :cond_7
    return-object v0

    .line 1383
    :cond_8
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v2

    .line 1384
    .local v2, elementList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1385
    .local v0, editMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lcom/samsung/app/video/editor/external/Edit;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_7

    .line 1386
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    .line 1387
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a
.end method

.method public declared-synchronized getCurrentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1004
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentViewPositionInList()I
    .registers 4

    .prologue
    .line 1027
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_6
    if-gez v0, :cond_a

    .line 1032
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_9
    return v0

    .line 1028
    .restart local v0       #i:I
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_9

    .line 1027
    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method

.method public getCurrentViewScale()F
    .registers 6

    .prologue
    const/4 v4, 0x5

    .line 905
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    instance-of v2, v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v2, :cond_65

    .line 906
    const/4 v1, 0x0

    .line 907
    .local v1, totalTime:F
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2b

    .line 908
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    check-cast v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v1

    .line 915
    :cond_1f
    :goto_1f
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    check-cast v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 925
    .end local v1           #totalTime:F
    :goto_2a
    return v0

    .line 909
    .restart local v1       #totalTime:F
    :cond_2b
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v2

    if-eqz v2, :cond_4a

    .line 910
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4a

    .line 911
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v2

    if-ne v2, v4, :cond_1f

    .line 912
    :cond_4a
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    check-cast v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v3

    .line 913
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    check-cast v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v2

    .line 912
    sub-float v1, v3, v2

    goto :goto_1f

    .line 917
    .end local v1           #totalTime:F
    :cond_65
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    instance-of v2, v2, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    if-eqz v2, :cond_97

    .line 918
    const/4 v1, 0x0

    .line 919
    .restart local v1       #totalTime:F
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v2

    if-ne v2, v4, :cond_8d

    .line 920
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    check-cast v2, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->getEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v2

    if-eqz v2, :cond_8d

    .line 921
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    check-cast v2, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->getEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v2

    int-to-float v1, v2

    .line 922
    :cond_8d
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 923
    .local v0, scale:F
    goto :goto_2a

    .line 925
    .end local v0           #scale:F
    .end local v1           #totalTime:F
    :cond_97
    const/high16 v0, -0x4080

    goto :goto_2a
.end method

.method public getGivenViewScale(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;)F
    .registers 6
    .parameter "view"

    .prologue
    .line 929
    const/4 v1, 0x0

    .line 930
    .local v1, totalTime:F
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    .line 931
    invoke-virtual {p1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v1

    .line 936
    :cond_14
    :goto_14
    invoke-virtual {p1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 937
    .local v0, scale:F
    return v0

    .line 932
    .end local v0           #scale:F
    :cond_1c
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v2

    if-eqz v2, :cond_31

    .line 933
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    .line 934
    :cond_31
    invoke-virtual {p1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v3

    sub-float v1, v2, v3

    goto :goto_14
.end method

.method public getMyWidth()I
    .registers 5

    .prologue
    .line 822
    const/4 v2, 0x0

    .line 823
    .local v2, width:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_9

    .line 832
    return v2

    .line 824
    :cond_9
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 825
    .local v0, childView:Landroid/view/View;
    instance-of v3, v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v3, :cond_1b

    .line 826
    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .end local v0           #childView:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 823
    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 827
    .restart local v0       #childView:Landroid/view/View;
    :cond_1b
    instance-of v3, v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    if-eqz v3, :cond_18

    .line 828
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_18
.end method

.method public final getStartPositionInTimeLine(Landroid/view/View;)I
    .registers 7
    .parameter "view"

    .prologue
    .line 494
    const/4 v3, 0x0

    .line 495
    .local v3, pos:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v4

    if-lt v2, v4, :cond_9

    .line 509
    :cond_8
    return v3

    .line 496
    :cond_9
    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 497
    .local v1, childView:Landroid/view/View;
    if-eq v1, p1, :cond_8

    .line 500
    instance-of v4, v1, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v4, :cond_1e

    move-object v0, v1

    .line 502
    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 503
    .local v0, childVideoClipView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v4

    add-int/2addr v3, v4

    .line 495
    .end local v0           #childVideoClipView:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    :cond_1b
    :goto_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 504
    :cond_1e
    instance-of v4, v1, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    if-eqz v4, :cond_1b

    move-object v0, v1

    .line 505
    check-cast v0, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    .line 506
    .local v0, childVideoClipView:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1b
.end method

.method public getStoryBoardTime(I)F
    .registers 12
    .parameter "x"

    .prologue
    const/4 v9, 0x5

    .line 1159
    const/4 v4, 0x0

    .line 1160
    .local v4, time:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v7

    if-lt v2, v7, :cond_b

    move v5, v4

    .line 1210
    .end local v4           #time:F
    .local v5, time:F
    :goto_a
    return v5

    .line 1161
    .end local v5           #time:F
    .restart local v4       #time:F
    :cond_b
    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1163
    .local v0, childView:Landroid/view/View;
    const/4 v6, 0x0

    .line 1164
    .local v6, width:I
    const/4 v1, 0x0

    .line 1166
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    instance-of v7, v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v7, :cond_51

    move-object v7, v0

    .line 1167
    check-cast v7, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v6

    move-object v7, v0

    .line 1168
    check-cast v7, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .line 1174
    :goto_23
    if-lt p1, v6, :cond_6e

    .line 1175
    instance-of v7, v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v7, :cond_5d

    .line 1176
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v7

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    sub-float/2addr v7, v8

    add-float/2addr v4, v7

    .line 1177
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v7

    if-eq v7, v9, :cond_4d

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v7

    if-eqz v7, :cond_4d

    .line 1178
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    .line 1187
    :cond_4d
    :goto_4d
    sub-int/2addr p1, v6

    .line 1160
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1170
    :cond_51
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    move-object v7, v0

    .line 1171
    check-cast v7, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    goto :goto_23

    .line 1183
    :cond_5d
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v7

    if-eqz v7, :cond_4d

    .line 1184
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v4, v7

    goto :goto_4d

    .line 1190
    :cond_6e
    const/4 v3, 0x0

    .line 1191
    .local v3, scale:F
    instance-of v7, v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v7, :cond_b9

    .line 1192
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v7

    if-eq v7, v9, :cond_a6

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v7

    if-eqz v7, :cond_a6

    .line 1193
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v7

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .end local v0           #childView:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v3, v7, v8

    .line 1204
    :cond_9f
    :goto_9f
    int-to-float v7, p1

    mul-float/2addr v7, v3

    add-float/2addr v4, v7

    .line 1205
    sub-int/2addr p1, v6

    move v5, v4

    .line 1206
    .end local v4           #time:F
    .restart local v5       #time:F
    goto/16 :goto_a

    .line 1195
    .end local v5           #time:F
    .restart local v0       #childView:Landroid/view/View;
    .restart local v4       #time:F
    :cond_a6
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v7

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    sub-float/2addr v7, v8

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .end local v0           #childView:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v3, v7, v8

    goto :goto_9f

    .line 1199
    .restart local v0       #childView:Landroid/view/View;
    :cond_b9
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v7

    if-eqz v7, :cond_9f

    .line 1200
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v3, v7, v8

    goto :goto_9f
.end method

.method public getStoryBoardX(F)I
    .registers 12
    .parameter "time"

    .prologue
    const/4 v9, 0x5

    .line 1214
    const/4 v4, 0x0

    .line 1216
    .local v4, pix:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v7

    if-lt v3, v7, :cond_b

    move v5, v4

    .line 1268
    .end local v4           #pix:I
    .local v5, pix:I
    :goto_a
    return v5

    .line 1217
    .end local v5           #pix:I
    .restart local v4       #pix:I
    :cond_b
    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1219
    .local v0, childView:Landroid/view/View;
    const/4 v2, 0x0

    .line 1220
    .local v2, etime:F
    const/4 v1, 0x0

    .line 1222
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    instance-of v7, v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v7, :cond_53

    move-object v7, v0

    .line 1223
    check-cast v7, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .line 1224
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v7

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    sub-float v2, v7, v8

    .line 1225
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v7

    if-eq v7, v9, :cond_40

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v7

    if-eqz v7, :cond_40

    .line 1226
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v2, v7

    .line 1238
    :cond_40
    :goto_40
    cmpl-float v7, p1, v2

    if-ltz v7, :cond_76

    .line 1239
    instance-of v7, v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v7, :cond_70

    .line 1240
    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .end local v0           #childView:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v7

    add-int/2addr v4, v7

    .line 1246
    :goto_4f
    sub-float/2addr p1, v2

    .line 1216
    :goto_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .restart local v0       #childView:Landroid/view/View;
    :cond_53
    move-object v7, v0

    .line 1230
    check-cast v7, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .line 1231
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v7

    if-nez v7, :cond_66

    .line 1232
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v4, v7

    .line 1233
    goto :goto_50

    .line 1235
    :cond_66
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v7

    int-to-float v2, v7

    goto :goto_40

    .line 1243
    :cond_70
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_4f

    .line 1249
    :cond_76
    const/4 v6, 0x0

    .line 1250
    .local v6, scale:F
    instance-of v7, v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v7, :cond_c4

    .line 1251
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v7

    if-eq v7, v9, :cond_b1

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v7

    if-eqz v7, :cond_b1

    .line 1252
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v7

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .end local v0           #childView:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 1256
    :goto_a7
    div-float v7, p1, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v4, v7

    :goto_ae
    move v5, v4

    .line 1263
    .end local v4           #pix:I
    .restart local v5       #pix:I
    goto/16 :goto_a

    .line 1254
    .end local v5           #pix:I
    .restart local v0       #childView:Landroid/view/View;
    .restart local v4       #pix:I
    :cond_b1
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v7

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    sub-float/2addr v7, v8

    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .end local v0           #childView:Landroid/view/View;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    goto :goto_a7

    .line 1259
    .restart local v0       #childView:Landroid/view/View;
    :cond_c4
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getTransitionEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Edit;->getTrans_duration()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 1260
    div-float v7, p1, v6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-int/2addr v4, v7

    goto :goto_ae
.end method

.method public final getView(I)Landroid/view/View;
    .registers 6
    .parameter "x"

    .prologue
    .line 349
    const/4 v2, 0x0

    .line 351
    .local v2, t:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_a

    .line 370
    const/4 v0, 0x0

    :cond_9
    return-object v0

    .line 352
    :cond_a
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 355
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v3, :cond_27

    move-object v3, v0

    .line 356
    check-cast v3, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 359
    :goto_1a
    if-lt p1, v2, :cond_9

    .line 363
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_9

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 358
    :cond_27
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1a
.end method

.method public getView(Lcom/samsung/app/video/editor/external/Element;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    .registers 5
    .parameter "element"

    .prologue
    .line 1041
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_9

    .line 1049
    const/4 v0, 0x0

    :goto_8
    return-object v0

    .line 1042
    :cond_9
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1043
    .local v0, child:Landroid/view/View;
    instance-of v2, v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v2, :cond_21

    move-object v2, v0

    .line 1044
    check-cast v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1045
    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    goto :goto_8

    .line 1041
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public goToNextClip()V
    .registers 6

    .prologue
    .line 378
    iget v3, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mBaseLinePos:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getView(I)Landroid/view/View;

    move-result-object v2

    .line 379
    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_9

    .line 387
    :goto_8
    return-void

    .line 381
    :cond_9
    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v1

    .line 383
    .local v1, startPos:I
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v0, v1, v3

    .line 384
    .local v0, finalPos:I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "finalPos :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 385
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    goto :goto_8
.end method

.method public goToPrevClip()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 517
    iget v4, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mBaseLinePos:I

    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getView(I)Landroid/view/View;

    move-result-object v3

    .line 536
    .local v3, view:Landroid/view/View;
    if-nez v3, :cond_a

    .line 549
    :goto_9
    return-void

    .line 538
    :cond_a
    invoke-direct {p0, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getViewIndex(Landroid/view/View;)I

    move-result v1

    .line 539
    .local v1, index:I
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "got the index :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 540
    if-lez v1, :cond_41

    .line 541
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v2

    .line 542
    .local v2, startX:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v0, v4, -0x1

    .line 543
    .local v0, finalPos:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4, v0, v6}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    goto :goto_9

    .line 545
    .end local v0           #finalPos:I
    .end local v2           #startX:I
    :cond_41
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    goto :goto_9
.end method

.method public hideCaptionBar()V
    .registers 6

    .prologue
    .line 416
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_8

    .line 425
    return-void

    .line 417
    :cond_8
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 418
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v3, :cond_3c

    move-object v0, v2

    .line 419
    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 420
    .local v0, child:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->decreaseThumbnail(I)V

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hideCaptionBar child count for the view :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 416
    .end local v0           #child:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public insertMedia(FFLandroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;)V
    .registers 21
    .parameter "x"
    .parameter "y"
    .parameter "drawable"
    .parameter "type"
    .parameter "filePath"
    .parameter "duration"

    .prologue
    .line 1107
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v12

    if-nez v12, :cond_7

    .line 1150
    :cond_6
    :goto_6
    return-void

    .line 1110
    :cond_7
    move-object/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->createVideoClipViewGroup(Landroid/graphics/drawable/Drawable;ILjava/lang/String;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v11

    .line 1111
    .local v11, view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v10

    .line 1112
    .local v10, transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    move-object/from16 v0, p5

    move/from16 v1, p4

    move-object/from16 v2, p6

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->createElement(Ljava/lang/String;ILjava/lang/String;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v3

    .line 1113
    .local v3, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v11, v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setElement(Lcom/samsung/app/video/editor/external/Element;)Z

    move-result v5

    .line 1115
    .local v5, s:Z
    if-eqz v5, :cond_6

    .line 1120
    float-to-int v12, p1

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getPaddingLeft()I

    move-result v13

    sub-int/2addr v12, v13

    iget v13, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mBaseLinePos:I

    add-int v6, v12, v13

    .line 1121
    .local v6, scrollerX:I
    invoke-virtual {p0, v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getView(I)Landroid/view/View;

    move-result-object v8

    .line 1122
    .local v8, targetView:Landroid/view/View;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "insertView found view :"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1123
    if-nez v8, :cond_52

    .line 1124
    invoke-virtual {v10, v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->addElement(Lcom/samsung/app/video/editor/external/Element;)V

    .line 1125
    invoke-virtual {p0, v11}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 1129
    :cond_52
    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v7

    .line 1131
    .local v7, startXPos:I
    invoke-direct {p0, v8}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getViewIndex(Landroid/view/View;)I

    move-result v9

    .line 1133
    .local v9, targetViewpos:I
    const/4 v4, 0x0

    .line 1134
    .local v4, nextToClip:Z
    sub-int v12, v6, v7

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    if-le v12, v13, :cond_66

    .line 1135
    const/4 v4, 0x1

    .line 1137
    :cond_66
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "nextToClip :"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1138
    if-eqz v4, :cond_85

    .line 1139
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v10, v3, v12}, Lcom/samsung/app/video/editor/external/TranscodeElement;->insertElement(Lcom/samsung/app/video/editor/external/Element;I)V

    .line 1140
    add-int/lit8 v12, v9, 0x1

    invoke-virtual {p0, v11, v12}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_6

    .line 1142
    :cond_85
    invoke-virtual {v10, v3, v9}, Lcom/samsung/app/video/editor/external/TranscodeElement;->insertElement(Lcom/samsung/app/video/editor/external/Element;I)V

    .line 1144
    invoke-virtual {p0, v11, v9}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addView(Landroid/view/View;I)V

    goto/16 :goto_6
.end method

.method public insertMedia(Landroid/graphics/drawable/Drawable;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 10
    .parameter "drawable"
    .parameter "type"
    .parameter "filePath"
    .parameter "duration"
    .parameter "pos"

    .prologue
    .line 1061
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    if-nez v3, :cond_7

    .line 1071
    :cond_6
    :goto_6
    return-void

    .line 1064
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->createVideoClipViewGroup(Landroid/graphics/drawable/Drawable;ILjava/lang/String;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v2

    .line 1065
    .local v2, view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v1

    .line 1066
    .local v1, transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {p0, p3, p2, p4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->createElement(Ljava/lang/String;ILjava/lang/String;)Lcom/samsung/app/video/editor/external/Element;

    move-result-object v0

    .line 1067
    .local v0, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v2, v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setElement(Lcom/samsung/app/video/editor/external/Element;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1068
    invoke-virtual {v1, v0, p5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->insertElement(Lcom/samsung/app/video/editor/external/Element;I)V

    .line 1069
    invoke-virtual {p0, v2, p5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_6
.end method

.method public notifyMusicChange(Lcom/samsung/app/video/editor/external/Element;Z)V
    .registers 5
    .parameter "element"
    .parameter "added"

    .prologue
    .line 1435
    const-string v1, "lets notify music"

    invoke-static {v1}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 1436
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_13

    .line 1442
    :cond_12
    return-void

    .line 1438
    :cond_13
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    .line 1439
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;

    .line 1440
    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;->onMusicChanged(Lcom/samsung/app/video/editor/external/Element;Z)V

    .line 1436
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public notifyOnUpdateElement(Lcom/samsung/app/video/editor/external/Element;)V
    .registers 4
    .parameter "element"

    .prologue
    .line 941
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_e

    .line 944
    :cond_d
    return-void

    .line 942
    :cond_e
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;

    invoke-interface {v1, p1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;->onUpdate(Lcom/samsung/app/video/editor/external/Element;)V

    .line 941
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 114
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 115
    invoke-static {}, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->getInstance()Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/thread/ThumbnaiFetcher;->terminate()V

    .line 116
    return-void
.end method

.method protected onFinishInflate()V
    .registers 12

    .prologue
    .line 172
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 173
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    if-nez v7, :cond_a

    .line 222
    :cond_9
    :goto_9
    return-void

    .line 175
    :cond_a
    const-string v7, "ThumnailViewGroup Inflatefinished"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v5

    .line 177
    .local v5, transcodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v7

    if-eqz v7, :cond_9

    .line 184
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    .line 185
    const/4 v3, 0x0

    .local v3, i:I
    :cond_30
    :goto_30
    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v7

    if-lt v3, v7, :cond_52

    .line 207
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->dismissWaitProgress()V

    .line 208
    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v7

    if-nez v7, :cond_9

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 209
    const-string v7, "Launching AddMedia when when there are no elements"

    invoke-static {v7}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchAddMedia()V

    goto :goto_9

    .line 186
    :cond_52
    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/app/video/editor/external/Element;

    .line 187
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 190
    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v8

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->createVideoClipViewGroup(Landroid/graphics/drawable/Drawable;ILjava/lang/String;)Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    move-result-object v6

    .line 191
    .local v6, view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-virtual {v6, v1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setElement(Lcom/samsung/app/video/editor/external/Element;)Z

    move-result v7

    if-eqz v7, :cond_87

    .line 192
    invoke-virtual {p0, v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->addView(Landroid/view/View;)V

    .line 194
    :cond_87
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 196
    .end local v6           #view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    :cond_8a
    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " -"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 197
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->deleteAllClipArts()V

    .line 198
    invoke-virtual {v5, v1}, Lcom/samsung/app/video/editor/external/TranscodeElement;->removeElement(Lcom/samsung/app/video/editor/external/Element;)Ljava/util/List;

    move-result-object v0

    .line 199
    .local v0, cList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/ClipartParams;>;"
    if-eqz v0, :cond_30

    .line 200
    const/4 v4, 0x0

    .local v4, k:I
    :goto_c4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_30

    .line 201
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/app/video/editor/external/ClipartParams;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/ClipartParams;->remove()V

    .line 200
    add-int/lit8 v4, v4, 0x1

    goto :goto_c4
.end method

.method public declared-synchronized onScrollChanged(I)V
    .registers 3
    .parameter "x"

    .prologue
    .line 965
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mBaseLinePos:I

    .line 966
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 973
    monitor-exit p0

    return-void

    .line 965
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeTimeLineListener(Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 1430
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1432
    :cond_9
    return-void
.end method

.method public removeTransitionView()V
    .registers 4

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_6
    if-gez v0, :cond_9

    .line 399
    return-void

    .line 394
    :cond_9
    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 395
    .local v1, view:Landroid/view/View;
    instance-of v2, v1, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    if-eqz v2, :cond_14

    .line 396
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeView(Landroid/view/View;)V

    .line 393
    :cond_14
    add-int/lit8 v0, v0, -0x1

    goto :goto_6
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 291
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->removeView(Landroid/view/View;Z)V

    .line 292
    return-void
.end method

.method public removeView(Landroid/view/View;Z)V
    .registers 12
    .parameter "view"
    .parameter "updateCaption"

    .prologue
    const v8, 0x7f0b0110

    const v7, 0x7f0b00f4

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Remove view :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 297
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 298
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    if-nez v3, :cond_25

    .line 340
    .end local p1
    :cond_24
    :goto_24
    return-void

    .line 300
    .restart local p1
    :cond_25
    instance-of v3, p1, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v3, :cond_4e

    .line 302
    const/4 v1, 0x0

    .line 304
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    :try_start_2a
    check-cast p1, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .end local p1
    invoke-virtual {p1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .line 305
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    .line 306
    invoke-virtual {v3, v1, p2}, Lcom/samsung/app/video/editor/external/TranscodeElement;->removeElement(Lcom/samsung/app/video/editor/external/Element;Z)Ljava/util/List;

    move-result-object v3

    .line 305
    iput-object v3, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->list:Ljava/util/List;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3e} :catch_e4

    .line 311
    :goto_3e
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3f
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_ea

    .line 314
    :cond_4b
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 316
    .end local v1           #element:Lcom/samsung/app/video/editor/external/Element;
    .end local v2           #i:I
    :cond_4e
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementCount()I

    move-result v3

    if-nez v3, :cond_f9

    .line 317
    const-string v3, "Thumbnails are zero"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v3

    const v4, 0x7f0b010f

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 320
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 322
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getThemeName()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/app/video/editor/external/Constants;->getThemeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v3

    const v4, 0x7f0b010d

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 324
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v3

    const v4, 0x7f0b0103

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 326
    const-string v3, "Launching AddMedia when when there are no elements"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->launchAddMedia()V

    .line 329
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    move-result-object v3

    if-eqz v3, :cond_cd

    .line 330
    invoke-static {}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/addmedia/AddMediaControlView;->disableDoneButton()V

    .line 332
    :cond_cd
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 333
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_24

    .line 308
    .restart local v1       #element:Lcom/samsung/app/video/editor/external/Element;
    :catch_e4
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3e

    .line 312
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #i:I
    :cond_ea
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;

    invoke-interface {v3, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;->onRemoved(Lcom/samsung/app/video/editor/external/Element;)V

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3f

    .line 337
    .end local v1           #element:Lcom/samsung/app/video/editor/external/Element;
    .end local v2           #i:I
    :cond_f9
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->makeMusicDurationButtonInVisible()V

    goto/16 :goto_24
.end method

.method public saveImageDurationData(I)V
    .registers 11
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    .line 573
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v1

    .line 574
    .local v1, element:Lcom/samsung/app/video/editor/external/Element;
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v6

    sub-float v4, v5, v6

    .line 575
    .local v4, startTime:F
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v5

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v6

    sub-float v2, v5, v6

    .line 576
    .local v2, endTime:F
    sub-float v3, v2, v4

    .line 577
    .local v3, fduration:F
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 578
    .local v0, duration:I
    if-ne p1, v0, :cond_28

    .line 599
    :goto_27
    return-void

    .line 580
    :cond_28
    invoke-virtual {v1, v7}, Lcom/samsung/app/video/editor/external/Element;->setStartTime(F)V

    .line 581
    int-to-float v5, p1

    invoke-virtual {v1, v5}, Lcom/samsung/app/video/editor/external/Element;->setEndTime(F)V

    .line 582
    int-to-float v5, p1

    invoke-virtual {v1, v5}, Lcom/samsung/app/video/editor/external/Element;->setDuration(F)V

    .line 583
    invoke-virtual {v1, v7}, Lcom/samsung/app/video/editor/external/Element;->setSplitTime(F)V

    .line 585
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->notifyOnUpdateElement(Lcom/samsung/app/video/editor/external/Element;)V

    .line 586
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->calculateCurrentTime()V

    .line 589
    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mImageDurationBtn:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_69

    .line 590
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimBarView;->removeUndoInformation()V

    .line 591
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->removeSplitUndoInformation()V

    .line 592
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;

    move-result-object v5

    if-eqz v5, :cond_69

    .line 593
    invoke-static {}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->getInstance()Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/ve/view/trim/TrimMediaControlView;->resetSelection()V

    .line 597
    :cond_69
    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mImageDurationBtn:Landroid/widget/Button;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 598
    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mImageDurationBtn:Landroid/widget/Button;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27
.end method

.method public showCaptionBar()V
    .registers 6

    .prologue
    .line 405
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_8

    .line 413
    return-void

    .line 406
    :cond_8
    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 407
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v3, :cond_36

    move-object v0, v2

    .line 408
    check-cast v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 409
    .local v0, child:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->captionShown()V

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "showCaptionBar child count for the view :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 405
    .end local v0           #child:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public declared-synchronized updateCurrentView()V
    .registers 6

    .prologue
    .line 648
    monitor-enter p0

    :try_start_1
    iget v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mBaseLinePos:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getView(I)Landroid/view/View;

    move-result-object v1

    .line 650
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_13

    .line 651
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    if-eq v1, v2, :cond_11

    .line 652
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    iput-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mLastCurrentView:Landroid/view/View;

    .line 654
    :cond_11
    iput-object v1, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    .line 656
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->calculateCurrentTime()V

    .line 660
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mLastCurrentView:Landroid/view/View;

    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    if-eq v2, v3, :cond_2f

    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    instance-of v2, v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v2, :cond_2f

    .line 663
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_53

    .line 687
    .end local v0           #i:I
    :cond_2f
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mLastCurrentView:Landroid/view/View;

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mLastCurrentView:Landroid/view/View;

    instance-of v2, v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v2, :cond_40

    .line 688
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mLastCurrentView:Landroid/view/View;

    check-cast v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->lostFocus()V

    .line 691
    :cond_40
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    instance-of v2, v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v2, :cond_51

    .line 692
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    check-cast v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->gotFocus()V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_81

    .line 701
    :cond_51
    monitor-exit p0

    return-void

    .line 664
    .restart local v0       #i:I
    :cond_53
    :try_start_53
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    if-eqz v2, :cond_7c

    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mLastCurrentView:Landroid/view/View;

    if-eqz v2, :cond_7c

    .line 666
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;

    .line 667
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    check-cast v3, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    .line 668
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mLastCurrentView:Landroid/view/View;

    instance-of v3, v3, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    if-eqz v3, :cond_7f

    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mLastCurrentView:Landroid/view/View;

    check-cast v3, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v3

    .line 666
    :goto_79
    invoke-interface {v2, v4, v3}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup$TimeLineListener;->onFocusedChange(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    :try_end_7c
    .catchall {:try_start_53 .. :try_end_7c} :catchall_81

    .line 663
    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 668
    :cond_7f
    const/4 v3, 0x0

    goto :goto_79

    .line 648
    .end local v0           #i:I
    .end local v1           #view:Landroid/view/View;
    :catchall_81
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public updateImageDurationButton()V
    .registers 9

    .prologue
    .line 705
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v4

    if-eqz v4, :cond_b9

    .line 706
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v4

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mImageDurationBtn:Landroid/widget/Button;

    if-nez v4, :cond_2a

    .line 707
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v4

    const v5, 0x7f0b009e

    invoke-virtual {v4, v5}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mImageDurationBtn:Landroid/widget/Button;

    .line 708
    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mImageDurationBtn:Landroid/widget/Button;

    if-eqz v4, :cond_b9

    .line 711
    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mImageDurationBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    :cond_2a
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v4

    if-nez v4, :cond_b9

    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mCurrentView:Landroid/view/View;

    check-cast v4, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b9

    .line 721
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v4

    sub-float v3, v5, v4

    .line 722
    .local v3, startTime:F
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v4

    sub-float v1, v5, v4

    .line 723
    .local v1, endTime:F
    sub-float v2, v1, v3

    .line 725
    .local v2, fduration:F
    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mImageDurationBtn:Landroid/widget/Button;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f08002c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->mImageDurationBtn:Landroid/widget/Button;

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b9} :catch_ba

    .line 735
    .end local v1           #endTime:F
    .end local v2           #fduration:F
    .end local v3           #startTime:F
    :cond_b9
    :goto_b9
    return-void

    .line 732
    :catch_ba
    move-exception v0

    .line 733
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ignore :- "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_b9
.end method

.method public final updatePosition(Lcom/samsung/app/video/editor/external/Element;J)V
    .registers 16
    .parameter "e"
    .parameter "sec"

    .prologue
    const/4 v11, 0x5

    const/high16 v10, 0x447a

    .line 739
    const/4 v5, 0x0

    .line 742
    .local v5, totalTime:F
    :try_start_4
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v8

    if-eqz v8, :cond_1f

    .line 743
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v6

    .line 744
    .local v6, transCodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v1

    .line 746
    .local v1, elementList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    if-eqz v1, :cond_1f

    .line 748
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lt v2, v8, :cond_20

    .line 786
    .end local v1           #elementList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    .end local v2           #i:I
    .end local v6           #transCodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_1f
    :goto_1f
    return-void

    .line 750
    .restart local v1       #elementList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    .restart local v2       #i:I
    .restart local v6       #transCodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_20
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_137

    .line 752
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v8

    if-ne v8, v11, :cond_104

    .line 753
    const-string v8, "gettting view at i+i"

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 754
    add-int v8, v2, v2

    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .line 758
    .local v7, view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    :goto_41
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v4

    .line 759
    .local v4, startPos:I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "start pos in Element view:::"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 760
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v8

    if-eqz v8, :cond_76

    .line 761
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v8

    if-eq v8, v11, :cond_76

    .line 762
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_10c

    .line 763
    :cond_76
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v8

    sub-float v8, v9, v8

    mul-float v5, v8, v10

    .line 764
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Total time in Element view:::"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 769
    :cond_a0
    :goto_a0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "number of thumbnails:::"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " size of thumb::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 770
    invoke-virtual {v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v3, v5, v8

    .line 771
    .local v3, scale:F
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Scale in Element view:::"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 773
    long-to-float v8, p2

    div-float/2addr v8, v3

    int-to-float v9, v4

    add-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 774
    .local v0, currentPos:I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Current pos in Element view:::"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 776
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    goto/16 :goto_1f

    .line 783
    .end local v0           #currentPos:I
    .end local v1           #elementList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    .end local v2           #i:I
    .end local v3           #scale:F
    .end local v4           #startPos:I
    .end local v6           #transCodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    .end local v7           #view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    :catch_101
    move-exception v8

    goto/16 :goto_1f

    .line 756
    .restart local v1       #elementList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    .restart local v2       #i:I
    .restart local v6       #transCodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_104
    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;

    .restart local v7       #view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    goto/16 :goto_41

    .line 765
    .restart local v4       #startPos:I
    :cond_10c
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_a0

    .line 766
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v8

    mul-float v5, v8, v10

    .line 767
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Total time in Element view:::"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_135} :catch_101

    goto/16 :goto_a0

    .line 748
    .end local v4           #startPos:I
    .end local v7           #view:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
    :cond_137
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_19
.end method

.method public final updatePositionForTransition(Lcom/samsung/app/video/editor/external/Element;JJ)V
    .registers 16
    .parameter "e"
    .parameter "currentTranSec"
    .parameter "transDuration"

    .prologue
    .line 790
    const/4 v5, 0x0

    .line 792
    .local v5, totalTime:F
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v8

    if-eqz v8, :cond_1a

    .line 793
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getCurrentTranscodeElement()Lcom/samsung/app/video/editor/external/TranscodeElement;

    move-result-object v6

    .line 794
    .local v6, transCodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/TranscodeElement;->getElementList()Ljava/util/List;

    move-result-object v1

    .line 795
    .local v1, elementList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lt v2, v8, :cond_1b

    .line 819
    .end local v1           #elementList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    .end local v2           #i:I
    .end local v6           #transCodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_1a
    :goto_1a
    return-void

    .line 797
    .restart local v1       #elementList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    .restart local v2       #i:I
    .restart local v6       #transCodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_1b
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 798
    const-string v8, "in  updatePositionForTransition::::got element for transition"

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 800
    add-int v8, v2, v2

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/ve/view/effect/transition/TransitionView;

    .line 801
    .local v7, view:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v4

    .line 802
    .local v4, startPos:I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "start pos in Element view:::"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 803
    long-to-float v5, p4

    .line 805
    const/high16 v8, 0x4210

    div-float v3, v5, v8

    .line 806
    .local v3, scale:F
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Scale in Element view:::"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 808
    long-to-float v8, p2

    div-float/2addr v8, v3

    int-to-float v9, v4

    add-float/2addr v8, v9

    float-to-int v0, v8

    .line 809
    .local v0, currentPos:I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Current pos in Element view:::"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 811
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_80} :catch_81

    goto :goto_1a

    .line 816
    .end local v0           #currentPos:I
    .end local v1           #elementList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    .end local v2           #i:I
    .end local v3           #scale:F
    .end local v4           #startPos:I
    .end local v6           #transCodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    .end local v7           #view:Lcom/sec/android/app/ve/view/effect/transition/TransitionView;
    :catch_81
    move-exception v8

    goto :goto_1a

    .line 795
    .restart local v1       #elementList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/app/video/editor/external/Element;>;"
    .restart local v2       #i:I
    .restart local v6       #transCodeElement:Lcom/samsung/app/video/editor/external/TranscodeElement;
    :cond_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_14
.end method
