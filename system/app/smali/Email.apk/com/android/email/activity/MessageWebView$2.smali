.class Lcom/android/email/activity/MessageWebView$2;
.super Ljava/lang/Object;
.source "MessageWebView.java"

# interfaces
.implements Landroid/webkit/PinchZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageWebView;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageWebView;

.field final synthetic val$temp:Lcom/android/email/activity/MessageWebView;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageWebView;Lcom/android/email/activity/MessageWebView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    iput-object p2, p0, Lcom/android/email/activity/MessageWebView$2;->val$temp:Lcom/android/email/activity/MessageWebView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleScale(Landroid/webkit/WebviewScaleGestureDetector;F)Z
    .registers 4
    .parameter "detector"
    .parameter "actualScale"

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(FFF)Z
    .registers 7
    .parameter "minScale"
    .parameter "maxScale"
    .parameter "beginScale"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    #setter for: Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F
    invoke-static {v0, p3}, Lcom/android/email/activity/MessageWebView;->access$402(Lcom/android/email/activity/MessageWebView;F)F

    .line 138
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v0, :cond_3b

    .line 139
    const-string v0, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleEnd() - beginScale ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] minScale ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] maxScale ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_3b
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
    .registers 5
    .parameter "detector"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    iget-object v1, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    iget-object v2, p0, Lcom/android/email/activity/MessageWebView$2;->val$temp:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v2}, Lcom/android/email/activity/MessageWebView;->getScale()F

    move-result v2

    #setter for: Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageWebView;->access$202(Lcom/android/email/activity/MessageWebView;F)F

    move-result v1

    #setter for: Lcom/android/email/activity/MessageWebView;->mCurScale:F
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageWebView;->access$102(Lcom/android/email/activity/MessageWebView;F)F

    .line 123
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    const/high16 v1, 0x3f80

    iget-object v2, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    #getter for: Lcom/android/email/activity/MessageWebView;->mCurScale:F
    invoke-static {v2}, Lcom/android/email/activity/MessageWebView;->access$100(Lcom/android/email/activity/MessageWebView;)F

    move-result v2

    div-float/2addr v1, v2

    #setter for: Lcom/android/email/activity/MessageWebView;->mInvScale:F
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageWebView;->access$302(Lcom/android/email/activity/MessageWebView;F)F

    .line 125
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    #getter for: Lcom/android/email/activity/MessageWebView;->mPinchZoomEndScale:F
    invoke-static {v0}, Lcom/android/email/activity/MessageWebView;->access$200(Lcom/android/email/activity/MessageWebView;)F

    move-result v0

    iget-object v1, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    #getter for: Lcom/android/email/activity/MessageWebView;->mPinchZoomStartScale:F
    invoke-static {v1}, Lcom/android/email/activity/MessageWebView;->access$400(Lcom/android/email/activity/MessageWebView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_34

    .line 126
    iget-object v0, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageWebView;->setScaleChangeWebView()V

    .line 128
    :cond_34
    sget-boolean v0, Lcom/android/email/util/EmailFeature;->DEBUG_VIEWPAGER_SIZECHANGE:Z

    if-eqz v0, :cond_5c

    .line 129
    const-string v0, "DEBUG_VIEWPAGER_SIZECHANGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleEnd() - mCurScale ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageWebView$2;->this$0:Lcom/android/email/activity/MessageWebView;

    #getter for: Lcom/android/email/activity/MessageWebView;->mCurScale:F
    invoke-static {v2}, Lcom/android/email/activity/MessageWebView;->access$100(Lcom/android/email/activity/MessageWebView;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/Email;->logd2(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_5c
    return-void
.end method
