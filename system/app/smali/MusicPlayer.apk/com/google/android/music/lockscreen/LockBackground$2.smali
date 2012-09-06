.class Lcom/google/android/music/lockscreen/LockBackground$2;
.super Ljava/lang/Object;
.source "LockBackground.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/lockscreen/LockBackground;->setRepresentativeAlbum(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/lockscreen/LockBackground;

.field final synthetic val$albumId:J


# direct methods
.method constructor <init>(Lcom/google/android/music/lockscreen/LockBackground;J)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/google/android/music/lockscreen/LockBackground$2;->this$0:Lcom/google/android/music/lockscreen/LockBackground;

    iput-wide p2, p0, Lcom/google/android/music/lockscreen/LockBackground$2;->val$albumId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 203
    iget-wide v1, p0, Lcom/google/android/music/lockscreen/LockBackground$2;->val$albumId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_14

    .line 204
    iget-object v1, p0, Lcom/google/android/music/lockscreen/LockBackground$2;->this$0:Lcom/google/android/music/lockscreen/LockBackground;

    #getter for: Lcom/google/android/music/lockscreen/LockBackground;->mDefaultBackground:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/google/android/music/lockscreen/LockBackground;->access$300(Lcom/google/android/music/lockscreen/LockBackground;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    .local v0, nextBitmap:Landroid/graphics/Bitmap;
    :cond_e
    :goto_e
    iget-object v1, p0, Lcom/google/android/music/lockscreen/LockBackground$2;->this$0:Lcom/google/android/music/lockscreen/LockBackground;

    invoke-virtual {v1, v0}, Lcom/google/android/music/lockscreen/LockBackground;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 212
    return-void

    .line 206
    .end local v0           #nextBitmap:Landroid/graphics/Bitmap;
    :cond_14
    iget-object v1, p0, Lcom/google/android/music/lockscreen/LockBackground$2;->this$0:Lcom/google/android/music/lockscreen/LockBackground;

    #getter for: Lcom/google/android/music/lockscreen/LockBackground;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/lockscreen/LockBackground;->access$000(Lcom/google/android/music/lockscreen/LockBackground;)Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/lockscreen/LockBackground$2;->val$albumId:J

    invoke-static {v1, v2, v3}, Lcom/google/android/music/utils/BackgroundUtils;->getAdaptedBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 207
    .restart local v0       #nextBitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_28

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 208
    :cond_28
    iget-object v1, p0, Lcom/google/android/music/lockscreen/LockBackground$2;->this$0:Lcom/google/android/music/lockscreen/LockBackground;

    #getter for: Lcom/google/android/music/lockscreen/LockBackground;->mDefaultBackground:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/google/android/music/lockscreen/LockBackground;->access$300(Lcom/google/android/music/lockscreen/LockBackground;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_e
.end method
