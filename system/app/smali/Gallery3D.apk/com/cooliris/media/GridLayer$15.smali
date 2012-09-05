.class Lcom/cooliris/media/GridLayer$15;
.super Ljava/lang/Object;
.source "GridLayer.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/GridLayer;->motionDialogInitialOff()V
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
    .line 2716
    iput-object p1, p0, Lcom/cooliris/media/GridLayer$15;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2719
    iget-object v0, p0, Lcom/cooliris/media/GridLayer$15;->this$0:Lcom/cooliris/media/GridLayer;

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getGridInputProcessor()Lcom/cooliris/media/GridInputProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridInputProcessor;->getMotionDetector()Lcom/cooliris/media/MotionDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/cooliris/media/MotionDetector;->setMotionDialogOff(Z)V

    .line 2720
    return-void
.end method
