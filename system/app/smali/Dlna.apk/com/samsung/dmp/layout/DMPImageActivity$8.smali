.class Lcom/samsung/dmp/layout/DMPImageActivity$8;
.super Ljava/lang/Object;
.source "DMPImageActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/dmp/layout/DMPImageActivity;->initializeUIForLandscape()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/dmp/layout/DMPImageActivity;


# direct methods
.method constructor <init>(Lcom/samsung/dmp/layout/DMPImageActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_30

    .line 449
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mMusicPlayerControlsHidden:Z
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1800(Lcom/samsung/dmp/layout/DMPImageActivity;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 450
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mMusicPlayerControls:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1900(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 451
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mPrevious:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2000(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 452
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #getter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mNext:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$2100(Lcom/samsung/dmp/layout/DMPImageActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 453
    iget-object v1, p0, Lcom/samsung/dmp/layout/DMPImageActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #setter for: Lcom/samsung/dmp/layout/DMPImageActivity;->mMusicPlayerControlsHidden:Z
    invoke-static {v1, v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$1802(Lcom/samsung/dmp/layout/DMPImageActivity;Z)Z

    .line 457
    :goto_2f
    const/4 v0, 0x1

    .line 459
    :cond_30
    return v0

    .line 455
    :cond_31
    iget-object v0, p0, Lcom/samsung/dmp/layout/DMPImageActivity$8;->this$0:Lcom/samsung/dmp/layout/DMPImageActivity;

    #calls: Lcom/samsung/dmp/layout/DMPImageActivity;->playAnimation()V
    invoke-static {v0}, Lcom/samsung/dmp/layout/DMPImageActivity;->access$000(Lcom/samsung/dmp/layout/DMPImageActivity;)V

    goto :goto_2f
.end method
