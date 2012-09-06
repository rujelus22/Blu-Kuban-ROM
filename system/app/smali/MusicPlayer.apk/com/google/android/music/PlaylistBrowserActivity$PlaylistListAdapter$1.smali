.class Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$1;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$1;->this$1:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 609
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$1;->this$1:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    iget-object v1, v1, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity;->mList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/google/android/music/PlaylistBrowserActivity;->access$500(Lcom/google/android/music/PlaylistBrowserActivity;)Landroid/widget/ListView;

    move-result-object v0

    .line 610
    .local v0, lv:Landroid/widget/ListView;
    iget-object v1, p0, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter$1;->this$1:Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    #getter for: Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->mActivity:Lcom/google/android/music/PlaylistBrowserActivity;
    invoke-static {v1}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->access$600(Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/google/android/music/PlaylistBrowserActivity;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/music/PlaylistBrowserActivity;->createContextMusicMenu(Landroid/view/View;I)V

    .line 611
    return-void
.end method
