.class Lcom/sec/android/app/music/TrackBrowserActivity$8;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;->makeAddToThisPlayListHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$8;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 724
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 725
    .local v0, i:Landroid/content/Intent;
    const-string v1, "selectedList"

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$8;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicContentListView;->getAlignedSelectedItemId()[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 726
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$8;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->setResult(ILandroid/content/Intent;)V

    .line 727
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$8;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    .line 728
    return-void
.end method
