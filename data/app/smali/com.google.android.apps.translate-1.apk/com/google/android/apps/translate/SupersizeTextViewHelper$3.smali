.class Lcom/google/android/apps/translate/SupersizeTextViewHelper$3;
.super Ljava/lang/Object;
.source "SupersizeTextViewHelper.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/SupersizeTextViewHelper;->setupZoomButtons()V
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
    .line 323
    iput-object p1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$3;->this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .registers 4
    .parameter "visible"

    .prologue
    .line 326
    if-nez p1, :cond_11

    .line 327
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$3;->this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    #getter for: Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->access$400(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$3;->this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    #getter for: Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTriggerZoomButtonsListener:Landroid/view/View$OnTouchListener;
    invoke-static {v1}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->access$600(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 329
    :cond_11
    return-void
.end method

.method public onZoom(Z)V
    .registers 4
    .parameter "zoomIn"

    .prologue
    .line 333
    iget-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$3;->this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    if-eqz p1, :cond_10

    const v0, 0x3f8ccccd

    :goto_7
    #calls: Lcom/google/android/apps/translate/SupersizeTextViewHelper;->zoomSupersizeText(F)V
    invoke-static {v1, v0}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->access$200(Lcom/google/android/apps/translate/SupersizeTextViewHelper;F)V

    .line 334
    iget-object v0, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$3;->this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    #calls: Lcom/google/android/apps/translate/SupersizeTextViewHelper;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->access$100(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)V

    .line 335
    return-void

    .line 333
    :cond_10
    const v0, 0x3f666666

    goto :goto_7
.end method
