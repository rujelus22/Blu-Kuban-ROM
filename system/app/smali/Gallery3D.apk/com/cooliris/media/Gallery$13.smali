.class Lcom/cooliris/media/Gallery$13;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/Gallery;->motionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/Gallery;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Gallery;)V
    .registers 2
    .parameter

    .prologue
    .line 1836
    iput-object p1, p0, Lcom/cooliris/media/Gallery$13;->this$0:Lcom/cooliris/media/Gallery;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/cooliris/media/Gallery$13;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_zooming"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1841
    iget-object v0, p0, Lcom/cooliris/media/Gallery$13;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_zooming_sensitivity"

    iget-object v2, p0, Lcom/cooliris/media/Gallery$13;->this$0:Lcom/cooliris/media/Gallery;

    iget v2, v2, Lcom/cooliris/media/Gallery;->mMotionPreviewMove:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1844
    iget-object v0, p0, Lcom/cooliris/media/Gallery$13;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->finish()V

    .line 1845
    return-void
.end method
