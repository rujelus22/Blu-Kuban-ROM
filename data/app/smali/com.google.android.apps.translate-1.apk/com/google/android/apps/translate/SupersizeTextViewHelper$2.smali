.class Lcom/google/android/apps/translate/SupersizeTextViewHelper$2;
.super Ljava/lang/Object;
.source "SupersizeTextViewHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/SupersizeTextViewHelper;->setupZoomSupport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

.field final synthetic val$scaleDetector:Lcom/google/android/apps/translate/ScaleGestureDetector;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/SupersizeTextViewHelper;Lcom/google/android/apps/translate/ScaleGestureDetector;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$2;->this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    iput-object p2, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$2;->val$scaleDetector:Lcom/google/android/apps/translate/ScaleGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 304
    iget-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$2;->val$scaleDetector:Lcom/google/android/apps/translate/ScaleGestureDetector;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/translate/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 306
    iget-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$2;->val$scaleDetector:Lcom/google/android/apps/translate/ScaleGestureDetector;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    .line 309
    .local v0, isInProgress:Z
    iget-object v1, p0, Lcom/google/android/apps/translate/SupersizeTextViewHelper$2;->this$0:Lcom/google/android/apps/translate/SupersizeTextViewHelper;

    #getter for: Lcom/google/android/apps/translate/SupersizeTextViewHelper;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->access$400(Lcom/google/android/apps/translate/SupersizeTextViewHelper;)Landroid/widget/TextView;

    move-result-object v2

    if-nez v0, :cond_18

    const/4 v1, 0x1

    :goto_14
    #calls: Lcom/google/android/apps/translate/SupersizeTextViewHelper;->enableTextScrolling(Landroid/widget/TextView;Z)V
    invoke-static {v2, v1}, Lcom/google/android/apps/translate/SupersizeTextViewHelper;->access$500(Landroid/widget/TextView;Z)V

    .line 310
    return v0

    .line 309
    :cond_18
    const/4 v1, 0x0

    goto :goto_14
.end method
