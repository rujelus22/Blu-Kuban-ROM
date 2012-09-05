.class Lcom/cooliris/media/GridLayer$14;
.super Ljava/lang/Object;
.source "GridLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/GridLayer;->motionDialogInitialOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/GridLayer;

.field final synthetic val$builder:Landroid/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/cooliris/media/GridLayer;Landroid/app/AlertDialog$Builder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2676
    iput-object p1, p0, Lcom/cooliris/media/GridLayer$14;->this$0:Lcom/cooliris/media/GridLayer;

    iput-object p2, p0, Lcom/cooliris/media/GridLayer$14;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2679
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$14;->this$0:Lcom/cooliris/media/GridLayer;

    iget-object v1, p0, Lcom/cooliris/media/GridLayer$14;->val$builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/cooliris/media/GridLayer;->mMotionDialogShow:Landroid/content/DialogInterface;
    invoke-static {v0, v1}, Lcom/cooliris/media/GridLayer;->access$702(Lcom/cooliris/media/GridLayer;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 2680
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$14;->this$0:Lcom/cooliris/media/GridLayer;

    #calls: Lcom/cooliris/media/GridLayer;->createMotionAnimationHander()V
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$800(Lcom/cooliris/media/GridLayer;)V

    .line 2681
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$14;->this$0:Lcom/cooliris/media/GridLayer;

    const/4 v1, 0x0

    #calls: Lcom/cooliris/media/GridLayer;->updateAnimation(I)V
    invoke-static {v0, v1}, Lcom/cooliris/media/GridLayer;->access$600(Lcom/cooliris/media/GridLayer;I)V

    .line 2682
    return-void
.end method
