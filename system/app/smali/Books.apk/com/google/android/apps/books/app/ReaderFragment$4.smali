.class Lcom/google/android/apps/books/app/ReaderFragment$4;
.super Ljava/lang/Object;
.source "ReaderFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/books/app/ReaderFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/app/ReaderFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/app/ReaderFragment;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 567
    iput-object p1, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    iput-object p2, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 13
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 572
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastLeft:I
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$900(Lcom/google/android/apps/books/app/ReaderFragment;)I

    move-result v1

    if-ne v1, p2, :cond_20

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastTop:I
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1000(Lcom/google/android/apps/books/app/ReaderFragment;)I

    move-result v1

    if-ne v1, p3, :cond_20

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastRight:I
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1100(Lcom/google/android/apps/books/app/ReaderFragment;)I

    move-result v1

    if-ne v1, p4, :cond_20

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastBottom:I
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1200(Lcom/google/android/apps/books/app/ReaderFragment;)I

    move-result v1

    if-eq v1, p5, :cond_4f

    .line 574
    :cond_20
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #getter for: Lcom/google/android/apps/books/app/ReaderFragment;->mPageTurnView:Lcom/google/android/apps/books/widget/PageTurnView;
    invoke-static {v1}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1300(Lcom/google/android/apps/books/app/ReaderFragment;)Lcom/google/android/apps/books/widget/PageTurnView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/books/widget/PageTurnView;->onSpecialViewsLayoutChange()V

    .line 576
    new-instance v0, Lcom/google/android/apps/books/render/ReaderSettings;

    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->getTextZoomForVolume()F
    invoke-static {v2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1400(Lcom/google/android/apps/books/app/ReaderFragment;)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/books/render/ReaderSettings;-><init>(Landroid/content/Context;F)V

    .line 578
    .local v0, settings:Lcom/google/android/apps/books/render/ReaderSettings;
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #calls: Lcom/google/android/apps/books/app/ReaderFragment;->applySettings(Lcom/google/android/apps/books/render/ReaderSettings;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1500(Lcom/google/android/apps/books/app/ReaderFragment;Lcom/google/android/apps/books/render/ReaderSettings;)V

    .line 580
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastLeft:I
    invoke-static {v1, p2}, Lcom/google/android/apps/books/app/ReaderFragment;->access$902(Lcom/google/android/apps/books/app/ReaderFragment;I)I

    .line 581
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastTop:I
    invoke-static {v1, p3}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1002(Lcom/google/android/apps/books/app/ReaderFragment;I)I

    .line 582
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastRight:I
    invoke-static {v1, p4}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1102(Lcom/google/android/apps/books/app/ReaderFragment;I)I

    .line 583
    iget-object v1, p0, Lcom/google/android/apps/books/app/ReaderFragment$4;->this$0:Lcom/google/android/apps/books/app/ReaderFragment;

    #setter for: Lcom/google/android/apps/books/app/ReaderFragment;->mViewLastBottom:I
    invoke-static {v1, p5}, Lcom/google/android/apps/books/app/ReaderFragment;->access$1202(Lcom/google/android/apps/books/app/ReaderFragment;I)I

    .line 585
    .end local v0           #settings:Lcom/google/android/apps/books/render/ReaderSettings;
    :cond_4f
    return-void
.end method
