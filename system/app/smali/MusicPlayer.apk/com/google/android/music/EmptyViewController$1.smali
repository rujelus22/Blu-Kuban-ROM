.class Lcom/google/android/music/EmptyViewController$1;
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


# direct methods
.method constructor <init>(Lcom/google/android/music/EmptyViewController;)V
    .registers 2
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/android/music/EmptyViewController$1;->this$0:Lcom/google/android/music/EmptyViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController$1;->this$0:Lcom/google/android/music/EmptyViewController;

    #getter for: Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;
    invoke-static {v0}, Lcom/google/android/music/EmptyViewController;->access$000(Lcom/google/android/music/EmptyViewController;)Lcom/google/android/music/widgets/EmptyMusicView;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 155
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController$1;->this$0:Lcom/google/android/music/EmptyViewController;

    #getter for: Lcom/google/android/music/EmptyViewController;->mRootView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/music/EmptyViewController;->access$100(Lcom/google/android/music/EmptyViewController;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/EmptyViewController$1;->this$0:Lcom/google/android/music/EmptyViewController;

    #getter for: Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;
    invoke-static {v1}, Lcom/google/android/music/EmptyViewController;->access$000(Lcom/google/android/music/EmptyViewController;)Lcom/google/android/music/widgets/EmptyMusicView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController$1;->this$0:Lcom/google/android/music/EmptyViewController;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;
    invoke-static {v0, v1}, Lcom/google/android/music/EmptyViewController;->access$002(Lcom/google/android/music/EmptyViewController;Lcom/google/android/music/widgets/EmptyMusicView;)Lcom/google/android/music/widgets/EmptyMusicView;

    .line 158
    :cond_1d
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController$1;->this$0:Lcom/google/android/music/EmptyViewController;

    const/4 v1, 0x0

    #calls: Lcom/google/android/music/EmptyViewController;->emptyViewStateChanged(Z)V
    invoke-static {v0, v1}, Lcom/google/android/music/EmptyViewController;->access$200(Lcom/google/android/music/EmptyViewController;Z)V

    .line 159
    return-void
.end method
