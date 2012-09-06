.class Lcom/google/android/apps/translate/SupersizeTextViewHelper$1;
.super Ljava/lang/Object;
.source "SupersizeTextViewHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/SupersizeTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$1;->this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$1;->this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    #getter for: Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomController:Landroid/widget/ZoomButtonsController;
    invoke-static {v0}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->access$000(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$1;->this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    #getter for: Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mZoomController:Landroid/widget/ZoomButtonsController;
    invoke-static {v0}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->access$000(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)Landroid/widget/ZoomButtonsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$1;->this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    #calls: Lcom/google/android/apps/translate/SupersizeTextViewHelper;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->access$100(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)V

    .line 76
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method
