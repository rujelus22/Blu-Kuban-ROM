.class Lcom/cooliris/media/GridLayer$13;
.super Ljava/lang/Object;
.source "GridLayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/cooliris/media/GridLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 2666
    iput-object p1, p0, Lcom/cooliris/media/GridLayer$13;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2669
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$13;->this$0:Lcom/cooliris/media/GridLayer;

    const/4 v1, 0x1

    #setter for: Lcom/cooliris/media/GridLayer;->mEndUpdateAnimation:Z
    invoke-static {v0, v1}, Lcom/cooliris/media/GridLayer;->access$402(Lcom/cooliris/media/GridLayer;Z)Z

    .line 2670
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$13;->this$0:Lcom/cooliris/media/GridLayer;

    #getter for: Lcom/cooliris/media/GridLayer;->mMotionDialogShow:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/cooliris/media/GridLayer;->access$700(Lcom/cooliris/media/GridLayer;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 2671
    return-void
.end method
