.class Lcom/google/android/apps/translate/editor/InputMethodView$7;
.super Ljava/lang/Object;
.source "InputMethodView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/editor/InputMethodView;->onEditPanelHeightChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

.field final synthetic val$actionBarHeight:I


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/editor/InputMethodView;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/google/android/apps/translate/editor/InputMethodView$7;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    iput p2, p0, Lcom/google/android/apps/translate/editor/InputMethodView$7;->val$actionBarHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 463
    sget-object v2, Lcom/google/android/apps/translate/editor/InputMethodView$17;->$SwitchMap$com$google$android$apps$translate$editor$InputMethodView$InputMethod:[I

    iget-object v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView$7;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mActiveInputMethod:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;
    invoke-static {v3}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$000(Lcom/google/android/apps/translate/editor/InputMethodView;)Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethod;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_52

    .line 478
    :goto_11
    return-void

    .line 465
    :pswitch_12
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView$7;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$100(Lcom/google/android/apps/translate/editor/InputMethodView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 467
    .local v0, fullHeight:I
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView$7;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$200(Lcom/google/android/apps/translate/editor/InputMethodView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 468
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView$7;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mCameraHeight:I
    invoke-static {v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$300(Lcom/google/android/apps/translate/editor/InputMethodView;)I

    move-result v2

    sub-int v2, v0, v2

    iget v3, p0, Lcom/google/android/apps/translate/editor/InputMethodView$7;->val$actionBarHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 469
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView$7;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$200(Lcom/google/android/apps/translate/editor/InputMethodView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 470
    iget-object v2, p0, Lcom/google/android/apps/translate/editor/InputMethodView$7;->this$0:Lcom/google/android/apps/translate/editor/InputMethodView;

    #getter for: Lcom/google/android/apps/translate/editor/InputMethodView;->mTranslateView:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/apps/translate/editor/InputMethodView;->access$200(Lcom/google/android/apps/translate/editor/InputMethodView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_11

    .line 463
    :pswitch_data_52
    .packed-switch 0x4
        :pswitch_12
    .end packed-switch
.end method
