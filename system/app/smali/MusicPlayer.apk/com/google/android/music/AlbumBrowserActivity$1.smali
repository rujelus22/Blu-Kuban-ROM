.class Lcom/google/android/music/AlbumBrowserActivity$1;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/BottomBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/AlbumBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$1;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBottomBarChanged()V
    .registers 6

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/music/AlbumBrowserActivity$1;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/google/android/music/AlbumBrowserActivity;->access$000(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/AlbumBrowserActivity$1;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mListContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/google/android/music/AlbumBrowserActivity;->access$000(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/AlbumBrowserActivity$1;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mListContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/google/android/music/AlbumBrowserActivity;->access$000(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/AlbumBrowserActivity$1;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    #getter for: Lcom/google/android/music/AlbumBrowserActivity;->mListContainer:Landroid/view/View;
    invoke-static {v3}, Lcom/google/android/music/AlbumBrowserActivity;->access$000(Lcom/google/android/music/AlbumBrowserActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/music/AlbumBrowserActivity$1;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/AlbumBrowserActivity;->getMusicUIController()Lcom/google/android/music/activitymanagement/MusicUIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/activitymanagement/MusicUIController;->getBottomBarHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 241
    return-void
.end method
