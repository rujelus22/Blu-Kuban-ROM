.class Lcom/sec/android/app/music/TrackBrowserActivity$5;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;->makeAddToPlayListHeader()V
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
    .line 665
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$5;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x10

    .line 668
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$5;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 670
    const-string v1, "tabFrom"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 672
    const-string v1, "mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$5;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iget-object v2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$5;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/music/MusicContentListView;->getAlignedSelectedItemId()[J

    move-result-object v2

    #setter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mSelectedIds:[J
    invoke-static {v1, v2}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$402(Lcom/sec/android/app/music/TrackBrowserActivity;[J)[J

    .line 674
    iget-object v1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$5;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v1, v0, v3}, Lcom/sec/android/app/music/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 675
    return-void
.end method
