.class public Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;
.super Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
.source "MXListPlayerItem.java"


# instance fields
.field private bSelected:Z

.field isSetDrawable:Z

.field mContext:Landroid/content/Context;

.field private mDrawableHeight:I

.field mProgressBar:Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;

.field mProgressBarDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBar:Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;

    .line 30
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->isSetDrawable:Z

    .line 34
    iput v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mDrawableHeight:I

    .line 36
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->bSelected:Z

    .line 40
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBar:Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;

    .line 30
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->isSetDrawable:Z

    .line 34
    iput v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mDrawableHeight:I

    .line 36
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->bSelected:Z

    .line 45
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBar:Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;

    .line 30
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->isSetDrawable:Z

    .line 34
    iput v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mDrawableHeight:I

    .line 36
    iput-boolean v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->bSelected:Z

    .line 50
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->bSelected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->bSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mDrawableHeight:I

    return v0
.end method


# virtual methods
.method public execute()V
    .registers 3

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    .local v0, path:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_26

    .line 62
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->stop()V

    .line 66
    :goto_25
    return-void

    .line 64
    :cond_26
    invoke-static {}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->getInstance()Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/myfiles/fileselector/components/MXListPlayer;->play(Ljava/lang/String;)I

    goto :goto_25
.end method

.method public setPlaying(II)V
    .registers 5
    .parameter "position"
    .parameter "duration"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$1;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method public setProgressBar(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .parameter "iv"
    .parameter "d"

    .prologue
    .line 126
    iput-object p2, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    check-cast p1, Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBar:Lcom/sec/android/app/myfiles/fileselector/views/MXListPlayerProgressView;

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mProgressBarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mDrawableHeight:I

    .line 131
    return-void
.end method

.method public setStop()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem$2;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/items/MXListPlayerItem;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method
