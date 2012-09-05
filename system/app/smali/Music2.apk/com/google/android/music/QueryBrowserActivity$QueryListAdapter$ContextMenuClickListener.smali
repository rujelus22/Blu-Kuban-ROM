.class Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ContextMenuClickListener;
.super Ljava/lang/Object;
.source "QueryBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextMenuClickListener"
.end annotation


# instance fields
.field private final mViewHolder:Lcom/google/android/music/QueryBrowserActivity$ViewHolder;

.field final synthetic this$0:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;


# direct methods
.method public constructor <init>(Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;Lcom/google/android/music/QueryBrowserActivity$ViewHolder;)V
    .registers 3
    .parameter
    .parameter "viewHolder"

    .prologue
    .line 903
    iput-object p1, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ContextMenuClickListener;->this$0:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 904
    iput-object p2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ContextMenuClickListener;->mViewHolder:Lcom/google/android/music/QueryBrowserActivity$ViewHolder;

    .line 905
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 907
    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ContextMenuClickListener;->this$0:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    #getter for: Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;
    invoke-static {v1}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->access$1000(Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;)Lcom/google/android/music/QueryBrowserActivity;

    move-result-object v1

    #getter for: Lcom/google/android/music/QueryBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/google/android/music/QueryBrowserActivity;->access$1100(Lcom/google/android/music/QueryBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 908
    .local v0, position:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 912
    :goto_11
    return-void

    .line 911
    :cond_12
    iget-object v1, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ContextMenuClickListener;->this$0:Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;

    #getter for: Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/google/android/music/QueryBrowserActivity;
    invoke-static {v1}, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;->access$1000(Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter;)Lcom/google/android/music/QueryBrowserActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/QueryBrowserActivity$QueryListAdapter$ContextMenuClickListener;->mViewHolder:Lcom/google/android/music/QueryBrowserActivity$ViewHolder;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/music/QueryBrowserActivity;->onCreateListContextMusicMenu(Landroid/view/View;Lcom/google/android/music/QueryBrowserActivity$ViewHolder;)V

    goto :goto_11
.end method
