.class public Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "APNewsItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;",
        ">;"
    }
.end annotation


# static fields
.field private static NewsImage:Landroid/graphics/Bitmap;


# instance fields
.field private final resId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 4
    .parameter "context"
    .parameter "resourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p3, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 31
    iput p2, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->resId:I

    .line 32
    return-void
.end method

.method private dataBindView(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;Landroid/content/Context;Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)V
    .registers 11
    .parameter "holder"
    .parameter "context"
    .parameter "container"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 69
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    .line 70
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_10
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewContent:Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    .line 74
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewContent:Landroid/widget/TextView;

    iget-object v2, p3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsContentText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_1b
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_5c

    .line 78
    iget-object v1, p3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    if-eqz v1, :cond_94

    .line 79
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :try_start_28
    iget-object v1, p3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    const/4 v2, 0x0

    iget-object v3, p3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsImageData:[B

    array-length v3, v3

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->NewsImage:Landroid/graphics/Bitmap;

    .line 84
    sget-object v1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->NewsImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_74

    .line 85
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    sget-object v2, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->NewsImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3f
    .catch Ljava/lang/OutOfMemoryError; {:try_start_28 .. :try_end_3f} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_3f} :catch_88

    .line 99
    :goto_3f
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/engine/Util;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 100
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_53

    .line 101
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLines(I)V

    .line 103
    :cond_53
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewContent:Landroid/widget/TextView;

    if-eqz v1, :cond_5c

    .line 104
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewContent:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 121
    :cond_5c
    :goto_5c
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewTime:Landroid/widget/TextView;

    if-eqz v1, :cond_73

    .line 122
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewTime:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p3, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;->NewsPublishTime:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sec/android/widgetapp/apnews/engine/Util;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_73
    return-void

    .line 87
    :cond_74
    :try_start_74
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_7b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_74 .. :try_end_7b} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7b} :catch_88

    goto :goto_3f

    .line 89
    :catch_7c
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 91
    sput-object v6, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->NewsImage:Landroid/graphics/Bitmap;

    .line 92
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3f

    .line 93
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_88
    move-exception v0

    .line 94
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    sput-object v6, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->NewsImage:Landroid/graphics/Bitmap;

    .line 96
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3f

    .line 108
    .end local v0           #e:Ljava/lang/Exception;
    :cond_94
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/widgetapp/apnews/engine/Util;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 111
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_ac

    .line 112
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLines(I)V

    .line 114
    :cond_ac
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewContent:Landroid/widget/TextView;

    if-eqz v1, :cond_5c

    .line 115
    iget-object v1, p1, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewContent:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLines(I)V

    goto :goto_5c
.end method

.method private setView(Landroid/content/Context;)Landroid/view/View;
    .registers 5
    .parameter "context"

    .prologue
    .line 35
    iget v1, p0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->resId:I

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, sView:Landroid/view/View;
    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 41
    move-object v2, p2

    .line 44
    .local v2, mView:Landroid/view/View;
    if-nez v2, :cond_4f

    .line 45
    new-instance v0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;-><init>()V

    .line 46
    .local v0, holder:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->setView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 47
    const v3, 0x7f0c0007

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewTitle:Landroid/widget/TextView;

    .line 48
    const v3, 0x7f0c0009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewContent:Landroid/widget/TextView;

    .line 49
    const v3, 0x7f0c0008

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mImageView:Landroid/widget/ImageView;

    .line 50
    const v3, 0x7f0c000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;->mTextViewTime:Landroid/widget/TextView;

    .line 51
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_3f
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;

    .line 56
    .local v1, mApNewsContainer:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    if-eqz v1, :cond_4e

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v0, v3, v1}, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter;->dataBindView(Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;Landroid/content/Context;Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;)V

    .line 60
    :cond_4e
    return-object v2

    .line 53
    .end local v0           #holder:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;
    .end local v1           #mApNewsContainer:Lcom/sec/android/widgetapp/apnews/engine/apnews/ApNewsContainer;
    :cond_4f
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/sec/android/widgetapp/apnews/activity/apnews/APNewsItemAdapter$ViewHolder;
    goto :goto_3f
.end method
