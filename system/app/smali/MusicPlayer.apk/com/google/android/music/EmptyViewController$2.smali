.class Lcom/google/android/music/EmptyViewController$2;
.super Ljava/lang/Object;
.source "EmptyViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/EmptyViewController;->updateNoMusicState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/EmptyViewController;

.field final synthetic val$finalEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

.field final synthetic val$finalEmptyStateFlags:I


# direct methods
.method constructor <init>(Lcom/google/android/music/EmptyViewController;Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;I)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/google/android/music/EmptyViewController$2;->this$0:Lcom/google/android/music/EmptyViewController;

    iput-object p2, p0, Lcom/google/android/music/EmptyViewController$2;->val$finalEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    iput p3, p0, Lcom/google/android/music/EmptyViewController$2;->val$finalEmptyStateFlags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 168
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController$2;->this$0:Lcom/google/android/music/EmptyViewController;

    #getter for: Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;
    invoke-static {v1}, Lcom/google/android/music/EmptyViewController;->access$000(Lcom/google/android/music/EmptyViewController;)Lcom/google/android/music/widgets/EmptyMusicView;

    move-result-object v1

    if-nez v1, :cond_37

    .line 169
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController$2;->this$0:Lcom/google/android/music/EmptyViewController;

    #getter for: Lcom/google/android/music/EmptyViewController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;
    invoke-static {v1}, Lcom/google/android/music/EmptyViewController;->access$300(Lcom/google/android/music/EmptyViewController;)Lcom/google/android/music/activitymanagement/TopLevelActivity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 172
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040017

    iget-object v2, p0, Lcom/google/android/music/EmptyViewController$2;->this$0:Lcom/google/android/music/EmptyViewController;

    #getter for: Lcom/google/android/music/EmptyViewController;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/google/android/music/EmptyViewController;->access$100(Lcom/google/android/music/EmptyViewController;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 173
    iget-object v2, p0, Lcom/google/android/music/EmptyViewController$2;->this$0:Lcom/google/android/music/EmptyViewController;

    iget-object v1, p0, Lcom/google/android/music/EmptyViewController$2;->this$0:Lcom/google/android/music/EmptyViewController;

    #getter for: Lcom/google/android/music/EmptyViewController;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/google/android/music/EmptyViewController;->access$100(Lcom/google/android/music/EmptyViewController;)Landroid/view/ViewGroup;

    move-result-object v1

    const v3, 0x7f10004f

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/widgets/EmptyMusicView;

    #setter for: Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;
    invoke-static {v2, v1}, Lcom/google/android/music/EmptyViewController;->access$002(Lcom/google/android/music/EmptyViewController;Lcom/google/android/music/widgets/EmptyMusicView;)Lcom/google/android/music/widgets/EmptyMusicView;

    .line 176
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_37
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController$2;->this$0:Lcom/google/android/music/EmptyViewController;

    #getter for: Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;
    invoke-static {v1}, Lcom/google/android/music/EmptyViewController;->access$000(Lcom/google/android/music/EmptyViewController;)Lcom/google/android/music/widgets/EmptyMusicView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/EmptyViewController$2;->val$finalEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    iget v3, p0, Lcom/google/android/music/EmptyViewController$2;->val$finalEmptyStateFlags:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/music/widgets/EmptyMusicView;->setEmptyStateWithFlags(Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;I)V

    .line 177
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController$2;->this$0:Lcom/google/android/music/EmptyViewController;

    #calls: Lcom/google/android/music/EmptyViewController;->emptyViewStateChanged(Z)V
    invoke-static {v1, v4}, Lcom/google/android/music/EmptyViewController;->access$200(Lcom/google/android/music/EmptyViewController;Z)V

    .line 178
    return-void
.end method
