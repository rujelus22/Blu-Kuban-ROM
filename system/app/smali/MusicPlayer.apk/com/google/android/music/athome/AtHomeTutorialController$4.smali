.class Lcom/google/android/music/athome/AtHomeTutorialController$4;
.super Ljava/lang/Object;
.source "AtHomeTutorialController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeTutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeTutorialController;


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomeTutorialController;)V
    .registers 2
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 134
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mLoadedFromPreferences:Z
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$400(Lcom/google/android/music/athome/AtHomeTutorialController;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mTutorialDisabled:Z
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$600(Lcom/google/android/music/athome/AtHomeTutorialController;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 163
    :cond_14
    :goto_14
    return-void

    .line 138
    :cond_15
    const/16 v1, 0x8

    .line 139
    .local v1, visibility:I
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeIcon:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$700(Lcom/google/android/music/athome/AtHomeTutorialController;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeIcon:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$700(Lcom/google/android/music/athome/AtHomeTutorialController;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_40

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeState:I
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$800(Lcom/google/android/music/athome/AtHomeTutorialController;)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeStateController;->isAtHomeAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeTutorialViewed:Z
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$000(Lcom/google/android/music/athome/AtHomeTutorialController;)Z

    move-result v2

    if-nez v2, :cond_40

    .line 143
    const/4 v1, 0x0

    .line 146
    :cond_40
    if-nez v1, :cond_a3

    .line 147
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$900(Lcom/google/android/music/athome/AtHomeTutorialController;)Lcom/google/android/music/ClingTutorialView;

    move-result-object v2

    if-nez v2, :cond_97

    .line 148
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mContext:Landroid/app/Activity;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$200(Lcom/google/android/music/athome/AtHomeTutorialController;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 151
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04000a

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$1000(Lcom/google/android/music/athome/AtHomeTutorialController;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 152
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$1000(Lcom/google/android/music/athome/AtHomeTutorialController;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const v4, 0x7f10001f

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/ClingTutorialView;

    #setter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v3, v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$902(Lcom/google/android/music/athome/AtHomeTutorialController;Lcom/google/android/music/ClingTutorialView;)Lcom/google/android/music/ClingTutorialView;

    .line 154
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$900(Lcom/google/android/music/athome/AtHomeTutorialController;)Lcom/google/android/music/ClingTutorialView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mDismissListener:Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$1100(Lcom/google/android/music/athome/AtHomeTutorialController;)Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/ClingTutorialView;->setClingTutorialDismissListener(Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;)V

    .line 155
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$900(Lcom/google/android/music/athome/AtHomeTutorialController;)Lcom/google/android/music/ClingTutorialView;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mAtHomeIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$700(Lcom/google/android/music/athome/AtHomeTutorialController;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/music/ClingTutorialView;->setIconToClingAround(Landroid/view/View;)V

    .line 157
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_97
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$900(Lcom/google/android/music/athome/AtHomeTutorialController;)Lcom/google/android/music/ClingTutorialView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/ClingTutorialView;->setVisibility(I)V

    goto/16 :goto_14

    .line 158
    :cond_a3
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$900(Lcom/google/android/music/athome/AtHomeTutorialController;)Lcom/google/android/music/ClingTutorialView;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 159
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$900(Lcom/google/android/music/athome/AtHomeTutorialController;)Lcom/google/android/music/ClingTutorialView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/google/android/music/ClingTutorialView;->setClingTutorialDismissListener(Lcom/google/android/music/ClingTutorialView$ClingTutorialDismissListener;)V

    .line 160
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$1000(Lcom/google/android/music/athome/AtHomeTutorialController;)Landroid/widget/RelativeLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #getter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$900(Lcom/google/android/music/athome/AtHomeTutorialController;)Lcom/google/android/music/ClingTutorialView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 161
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeTutorialController$4;->this$0:Lcom/google/android/music/athome/AtHomeTutorialController;

    #setter for: Lcom/google/android/music/athome/AtHomeTutorialController;->mClingTutorialView:Lcom/google/android/music/ClingTutorialView;
    invoke-static {v2, v4}, Lcom/google/android/music/athome/AtHomeTutorialController;->access$902(Lcom/google/android/music/athome/AtHomeTutorialController;Lcom/google/android/music/ClingTutorialView;)Lcom/google/android/music/ClingTutorialView;

    goto/16 :goto_14
.end method
