.class Lcom/sec/android/app/music/TrackBrowserActivity$19;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackBrowserActivity;->makeDeleteItemsHeader(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

.field final synthetic val$leftButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;Landroid/widget/Button;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$19;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iput-object p2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$19;->val$leftButton:Landroid/widget/Button;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1189
    invoke-static {}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CheckBox clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$19;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->getIsSelectedAll()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1193
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$19;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/music/MusicContentListView;->setAllItemChecked(Z)V

    .line 1194
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$19;->val$leftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1200
    :goto_25
    return-void

    .line 1197
    :cond_26
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$19;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v0}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/music/MusicContentListView;->setAllItemChecked(Z)V

    .line 1198
    iget-object v0, p0, Lcom/sec/android/app/music/TrackBrowserActivity$19;->val$leftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_25
.end method
