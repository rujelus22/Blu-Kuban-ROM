.class Lcom/google/android/music/lockscreen/LockBackground$1;
.super Ljava/lang/Object;
.source "LockBackground.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/lockscreen/LockBackground;->getDefaultBackground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/lockscreen/LockBackground;


# direct methods
.method constructor <init>(Lcom/google/android/music/lockscreen/LockBackground;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/music/lockscreen/LockBackground$1;->this$0:Lcom/google/android/music/lockscreen/LockBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/16 v4, 0xde1

    const/4 v3, 0x0

    .line 80
    iget-object v1, p0, Lcom/google/android/music/lockscreen/LockBackground$1;->this$0:Lcom/google/android/music/lockscreen/LockBackground;

    #getter for: Lcom/google/android/music/lockscreen/LockBackground;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/music/lockscreen/LockBackground;->access$000(Lcom/google/android/music/lockscreen/LockBackground;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/utils/BackgroundUtils;->getDefaultBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/16 v2, 0x40

    #calls: Lcom/google/android/music/lockscreen/LockBackground;->resize(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Lcom/google/android/music/lockscreen/LockBackground;->access$100(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, background:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/google/android/music/lockscreen/LockBackground$1;->this$0:Lcom/google/android/music/lockscreen/LockBackground;

    #getter for: Lcom/google/android/music/lockscreen/LockBackground;->mDefaultBackgroundId:I
    invoke-static {v1}, Lcom/google/android/music/lockscreen/LockBackground;->access$200(Lcom/google/android/music/lockscreen/LockBackground;)I

    move-result v1

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 83
    invoke-static {v4, v3, v0, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 84
    iget-object v1, p0, Lcom/google/android/music/lockscreen/LockBackground$1;->this$0:Lcom/google/android/music/lockscreen/LockBackground;

    #setter for: Lcom/google/android/music/lockscreen/LockBackground;->mDefaultBackground:Landroid/graphics/Bitmap;
    invoke-static {v1, v0}, Lcom/google/android/music/lockscreen/LockBackground;->access$302(Lcom/google/android/music/lockscreen/LockBackground;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 85
    return-void
.end method
