.class public Lcom/lifevibes/trimapp/Trim$ThumbnailImage;
.super Ljava/lang/Object;
.source "Trim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/trimapp/Trim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThumbnailImage"
.end annotation


# instance fields
.field public mBitmap:Landroid/graphics/Bitmap;

.field public mImageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/lifevibes/trimapp/Trim;


# direct methods
.method public constructor <init>(Lcom/lifevibes/trimapp/Trim;)V
    .registers 2
    .parameter

    .prologue
    .line 1489
    iput-object p1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailImage;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
