.class Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$2;
.super Ljava/lang/Object;
.source "MXController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->onThumbnailDispatched(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$p:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 245
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    iput-object p2, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$2;->val$p:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$2;->val$p:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaFile;->isInstallFileType(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$2;->val$p:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$2;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->setIcon(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V

    .line 254
    :goto_19
    return-void

    .line 252
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$2;->this$0:Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;

    iget-object v0, v0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController;->mView:Lcom/sec/android/app/myfiles/fileselector/views/MXView;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$2;->val$p:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXController$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/myfiles/fileselector/views/MXView;->setThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_19
.end method
