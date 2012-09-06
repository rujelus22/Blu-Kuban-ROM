.class Lcom/google/android/music/ShopTutorialController$5;
.super Ljava/lang/Object;
.source "ShopTutorialController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ShopTutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/ShopTutorialController;


# direct methods
.method constructor <init>(Lcom/google/android/music/ShopTutorialController;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 162
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 164
    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mLoadedFromPreferences:Z
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$1000(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mDisableShopTutorial:Z
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$1200(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 211
    :cond_14
    :goto_14
    return-void

    .line 168
    :cond_15
    const/16 v1, 0x8

    .line 169
    .local v1, visibility:I
    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopIcon:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$1300(Lcom/google/android/music/ShopTutorialController;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mUIControllerAllowTutorial:Z
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$1400(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopIcon:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$1300(Lcom/google/android/music/ShopTutorialController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_54

    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mStaticConfigAllowShopTutorial:Z
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$1100(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mLayoutConfigAllowShopTutorial:Z
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$1500(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mHasStoreContent:Z
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$600(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v2

    if-nez v2, :cond_54

    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialViewed:Z
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$000(Lcom/google/android/music/ShopTutorialController;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 176
    const/4 v1, 0x0

    .line 194
    :cond_54
    if-nez v1, :cond_b6

    .line 195
    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$1600(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/ClingTutorialView;

    move-result-object v2

    if-nez v2, :cond_ab

    .line 196
    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$200(Lcom/google/android/music/ShopTutorialController;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 199
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04004e

    iget-object v3, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/google/android/music/ShopTutorialController;->access$1700(Lcom/google/android/music/ShopTutorialController;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 200
    iget-object v3, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$1700(Lcom/google/android/music/ShopTutorialController;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const v4, 0x7f1000da

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/ClingTutorialView;

    #setter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v3, v2}, Lcom/google/android/music/ShopTutorialController;->access$1602(Lcom/google/android/music/ShopTutorialController;Lcom/google/android/music/ClingTutorialView;)Lcom/google/android/music/ClingTutorialView;

    .line 202
    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$1600(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/ClingTutorialView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mDismissListener:Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;
    invoke-static {v3}, Lcom/google/android/music/ShopTutorialController;->access$1800(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/ClingTutorialView;->setClingTutorialDismissListener(Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;)V

    .line 203
    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$1600(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/ClingTutorialView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/music/ShopTutorialController;->access$1300(Lcom/google/android/music/ShopTutorialController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/ClingTutorialView;->setIconToClingAround(Landroid/view/View;)V

    .line 205
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_ab
    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$1600(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/ClingTutorialView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/music/ClingTutorialView;->setVisibility(I)V

    goto/16 :goto_14

    .line 206
    :cond_b6
    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$1600(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/ClingTutorialView;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 207
    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$1600(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/ClingTutorialView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/music/ClingTutorialView;->setClingTutorialDismissListener(Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;)V

    .line 208
    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/google/android/music/ShopTutorialController;->access$1700(Lcom/google/android/music/ShopTutorialController;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #getter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v3}, Lcom/google/android/music/ShopTutorialController;->access$1600(Lcom/google/android/music/ShopTutorialController;)Lcom/google/android/music/ClingTutorialView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 209
    iget-object v2, p0, Lcom/google/android/music/ShopTutorialController$5;->this$0:Lcom/google/android/music/ShopTutorialController;

    #setter for: Lcom/google/android/music/ShopTutorialController;->mShopTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v2, v4}, Lcom/google/android/music/ShopTutorialController;->access$1602(Lcom/google/android/music/ShopTutorialController;Lcom/google/android/music/ClingTutorialView;)Lcom/google/android/music/ClingTutorialView;

    goto/16 :goto_14
.end method
