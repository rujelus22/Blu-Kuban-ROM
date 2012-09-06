.class Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
.super Ljava/lang/Object;
.source "CircleListItemView.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/CircleListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvatarHolder"
.end annotation


# instance fields
.field private mAvatarInvalidated:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mGaiaId:Ljava/lang/String;

.field private mRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

.field private mVisible:Z

.field final synthetic this$0:Lcom/google/android/apps/plus/views/CircleListItemView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/views/CircleListItemView;)V
    .registers 3
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->this$0:Lcom/google/android/apps/plus/views/CircleListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-direct {v0}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/views/CircleListItemView;Lcom/google/android/apps/plus/views/CircleListItemView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;-><init>(Lcom/google/android/apps/plus/views/CircleListItemView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mGaiaId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGaiaId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mGaiaId:Ljava/lang/String;

    return-object v0
.end method

.method public isAvatarVisible()Z
    .registers 2

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mVisible:Z

    return v0
.end method

.method public loadAvatar()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 131
    :goto_4
    return-void

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mGaiaId:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mVisible:Z

    if-nez v0, :cond_16

    .line 126
    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mBitmap:Landroid/graphics/Bitmap;

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->this$0:Lcom/google/android/apps/plus/views/CircleListItemView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/CircleListItemView;->invalidate()V

    goto :goto_4

    .line 129
    :cond_16
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->this$0:Lcom/google/android/apps/plus/views/CircleListItemView;

    #getter for: Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/CircleListItemView;->access$000(Lcom/google/android/apps/plus/views/CircleListItemView;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/ImageCache;->loadImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    goto :goto_4
.end method

.method public refreshIfNecessary()V
    .registers 3

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mAvatarInvalidated:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mVisible:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v0, :cond_1a

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mAvatarInvalidated:Z

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->this$0:Lcom/google/android/apps/plus/views/CircleListItemView;

    #getter for: Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/ImageCache;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/CircleListItemView;->access$000(Lcom/google/android/apps/plus/views/CircleListItemView;)Lcom/google/android/apps/plus/service/ImageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/ImageCache;->refreshImage(Lcom/google/android/apps/plus/service/ImageCache$ImageConsumer;Lcom/google/android/apps/plus/content/ImageRequest;)V

    .line 163
    :cond_1a
    return-void
.end method

.method public reloadAvatar()V
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mGaiaId:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mVisible:Z

    if-eqz v0, :cond_b

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mAvatarInvalidated:Z

    .line 137
    :cond_b
    return-void
.end method

.method public setAvatarVisible(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mVisible:Z

    .line 152
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 4
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mVisible:Z

    if-eqz v0, :cond_b

    .line 145
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mBitmap:Landroid/graphics/Bitmap;

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->this$0:Lcom/google/android/apps/plus/views/CircleListItemView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/CircleListItemView;->invalidate()V

    .line 148
    :cond_b
    return-void
.end method

.method public setGaiaId(Ljava/lang/String;)V
    .registers 4
    .parameter "gaiaId"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mGaiaId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 106
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mGaiaId:Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mBitmap:Landroid/graphics/Bitmap;

    .line 110
    :cond_15
    return-void
.end method
