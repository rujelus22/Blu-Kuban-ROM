.class Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;
.super Ljava/lang/Object;
.source "CircleListItemView.java"

# interfaces
.implements Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;


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

.field private mContactId:J

.field private mRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

.field private mVisible:Z

.field final synthetic this$0:Lcom/google/android/apps/plus/views/CircleListItemView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/views/CircleListItemView;)V
    .registers 3
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->this$0:Lcom/google/android/apps/plus/views/CircleListItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
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
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;-><init>(Lcom/google/android/apps/plus/views/CircleListItemView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mContactId:J

    return-wide v0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getContactId()J
    .registers 3

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mContactId:J

    return-wide v0
.end method

.method public isAvatarVisible()Z
    .registers 2

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mVisible:Z

    return v0
.end method

.method public loadAvatar()V
    .registers 5

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    .line 128
    :goto_4
    return-void

    .line 122
    :cond_5
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mContactId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mVisible:Z

    if-nez v0, :cond_1a

    .line 123
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mBitmap:Landroid/graphics/Bitmap;

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->this$0:Lcom/google/android/apps/plus/views/CircleListItemView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/CircleListItemView;->invalidate()V

    goto :goto_4

    .line 126
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->this$0:Lcom/google/android/apps/plus/views/CircleListItemView;

    #getter for: Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/CircleListItemView;->access$000(Lcom/google/android/apps/plus/views/CircleListItemView;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/AvatarCache;->loadAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;)V

    goto :goto_4
.end method

.method public refreshIfNecessary()V
    .registers 3

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mAvatarInvalidated:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mVisible:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    if-eqz v0, :cond_1a

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mAvatarInvalidated:Z

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->this$0:Lcom/google/android/apps/plus/views/CircleListItemView;

    #getter for: Lcom/google/android/apps/plus/views/CircleListItemView;->mAvatarCache:Lcom/google/android/apps/plus/service/AvatarCache;
    invoke-static {v0}, Lcom/google/android/apps/plus/views/CircleListItemView;->access$000(Lcom/google/android/apps/plus/views/CircleListItemView;)Lcom/google/android/apps/plus/service/AvatarCache;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    invoke-virtual {v0, p0, v1}, Lcom/google/android/apps/plus/service/AvatarCache;->refreshAvatar(Lcom/google/android/apps/plus/service/AvatarCache$AvatarConsumer;Lcom/google/android/apps/plus/content/AvatarRequest;)V

    .line 160
    :cond_1a
    return-void
.end method

.method public reloadAvatar()V
    .registers 5

    .prologue
    .line 131
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mContactId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mVisible:Z

    if-eqz v0, :cond_f

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mAvatarInvalidated:Z

    .line 134
    :cond_f
    return-void
.end method

.method public setAvatarBitmap(Landroid/graphics/Bitmap;Z)V
    .registers 4
    .parameter "bitmap"
    .parameter "loading"

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mVisible:Z

    if-eqz v0, :cond_b

    .line 142
    iput-object p1, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mBitmap:Landroid/graphics/Bitmap;

    .line 143
    iget-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->this$0:Lcom/google/android/apps/plus/views/CircleListItemView;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/views/CircleListItemView;->invalidate()V

    .line 145
    :cond_b
    return-void
.end method

.method public setAvatarVisible(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 148
    iput-boolean p1, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mVisible:Z

    .line 149
    return-void
.end method

.method public setContactId(J)V
    .registers 5
    .parameter "contactId"

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mContactId:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_13

    .line 103
    iput-wide p1, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mContactId:J

    .line 104
    new-instance v0, Lcom/google/android/apps/plus/content/AvatarRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/apps/plus/content/AvatarRequest;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mRequest:Lcom/google/android/apps/plus/content/AvatarRequest;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/views/CircleListItemView$AvatarHolder;->mBitmap:Landroid/graphics/Bitmap;

    .line 107
    :cond_13
    return-void
.end method
