.class Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$1;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)V
    .registers 2
    .parameter

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$1;->this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 1313
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$1;->this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->access$2400(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/google/android/music/TrackBrowserActivity;

    move-result-object v1

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mTrackList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity;->access$2300(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 1314
    .local v0, position:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 1318
    :goto_11
    return-void

    .line 1317
    :cond_12
    iget-object v1, p0, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter$1;->this$0:Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/google/android/music/TrackBrowserActivity;
    invoke-static {v1}, Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;->access$2400(Lcom/google/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/google/android/music/TrackBrowserActivity;

    move-result-object v1

    #calls: Lcom/google/android/music/TrackBrowserActivity;->onCreateListContextMusicMenu(Landroid/view/View;I)V
    invoke-static {v1, p1, v0}, Lcom/google/android/music/TrackBrowserActivity;->access$2500(Lcom/google/android/music/TrackBrowserActivity;Landroid/view/View;I)V

    goto :goto_11
.end method
