.class Lcom/cooliris/media/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/cooliris/media/RotateBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/ImageViewTouchBase;

.field final synthetic val$bitmap:Lcom/cooliris/media/RotateBitmap;

.field final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/cooliris/media/ImageViewTouchBase;Lcom/cooliris/media/RotateBitmap;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/cooliris/media/ImageViewTouchBase$1;->this$0:Lcom/cooliris/media/ImageViewTouchBase;

    iput-object p2, p0, Lcom/cooliris/media/ImageViewTouchBase$1;->val$bitmap:Lcom/cooliris/media/RotateBitmap;

    iput-boolean p3, p0, Lcom/cooliris/media/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cooliris/media/ImageViewTouchBase$1;->this$0:Lcom/cooliris/media/ImageViewTouchBase;

    iget-object v1, p0, Lcom/cooliris/media/ImageViewTouchBase$1;->val$bitmap:Lcom/cooliris/media/RotateBitmap;

    iget-boolean v2, p0, Lcom/cooliris/media/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/cooliris/media/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/cooliris/media/RotateBitmap;Z)V

    .line 149
    return-void
.end method
