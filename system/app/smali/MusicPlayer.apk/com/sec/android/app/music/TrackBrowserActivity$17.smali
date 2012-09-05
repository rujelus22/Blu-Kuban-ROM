.class Lcom/sec/android/app/music/TrackBrowserActivity$17;
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

.field final synthetic val$keyWord:Ljava/lang/String;

.field final synthetic val$tabFrom:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackBrowserActivity;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    iput p2, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->val$tabFrom:I

    iput-object p3, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->val$keyWord:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1117
    invoke-virtual {p1, v6}, Landroid/view/View;->setClickable(Z)V

    .line 1118
    iget v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->val$tabFrom:I

    if-ne v4, v7, :cond_68

    .line 1119
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->val$keyWord:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1120
    .local v0, albumId:J
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/music/MusicContentListView;->getSelectedItemId()[J

    move-result-object v2

    .line 1121
    .local v2, list:[J
    const-wide/16 v4, -0xe

    cmp-long v4, v0, v4

    if-nez v4, :cond_30

    .line 1122
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const-string v5, "recently_added_remove_flag"

    invoke-static {v4, v2, v5, v7}, Lcom/sec/android/app/music/MusicUtils;->updateDbColumnWith(Landroid/content/Context;[JLjava/lang/String;I)V

    .line 1124
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    .line 1175
    .end local v0           #albumId:J
    .end local v2           #list:[J
    :goto_2f
    return-void

    .line 1125
    .restart local v0       #albumId:J
    .restart local v2       #list:[J
    :cond_30
    const-wide/16 v4, -0xc

    cmp-long v4, v0, v4

    if-nez v4, :cond_43

    .line 1126
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const-string v5, "most_played"

    invoke-static {v4, v2, v5, v6}, Lcom/sec/android/app/music/MusicUtils;->updateDbColumnWith(Landroid/content/Context;[JLjava/lang/String;I)V

    .line 1128
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    goto :goto_2f

    .line 1129
    :cond_43
    const-wide/16 v4, -0xd

    cmp-long v4, v0, v4

    if-nez v4, :cond_56

    .line 1130
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const-string v5, "recently_played"

    invoke-static {v4, v2, v5, v6}, Lcom/sec/android/app/music/MusicUtils;->updateDbColumnWith(Landroid/content/Context;[JLjava/lang/String;I)V

    .line 1132
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    goto :goto_2f

    .line 1134
    :cond_56
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1100(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1135
    new-instance v3, Lcom/sec/android/app/music/TrackBrowserActivity$17$1;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/sec/android/app/music/TrackBrowserActivity$17$1;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity$17;J[J)V

    .line 1149
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_2f

    .line 1151
    .end local v0           #albumId:J
    .end local v2           #list:[J
    .end local v3           #t:Ljava/lang/Thread;
    :cond_68
    iget v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->val$tabFrom:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_8d

    .line 1152
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mListView:Lcom/sec/android/app/music/MusicContentListView;
    invoke-static {v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$100(Lcom/sec/android/app/music/TrackBrowserActivity;)Lcom/sec/android/app/music/MusicContentListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/music/MusicContentListView;->getSelectedItemId()[J

    move-result-object v5

    invoke-static {v4, v5, v7}, Lcom/sec/android/app/music/MusicUtils;->deletePlaylists(Landroid/content/Context;[JZ)V

    .line 1154
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/app/music/TrackBrowserActivity;->setResult(I)V

    .line 1155
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->finish()V

    goto :goto_2f

    .line 1157
    :cond_8d
    iget-object v4, p0, Lcom/sec/android/app/music/TrackBrowserActivity$17;->this$0:Lcom/sec/android/app/music/TrackBrowserActivity;

    #getter for: Lcom/sec/android/app/music/TrackBrowserActivity;->mLoadingProgressBarHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/music/TrackBrowserActivity;->access$1100(Lcom/sec/android/app/music/TrackBrowserActivity;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1158
    new-instance v3, Lcom/sec/android/app/music/TrackBrowserActivity$17$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/music/TrackBrowserActivity$17$2;-><init>(Lcom/sec/android/app/music/TrackBrowserActivity$17;)V

    .line 1173
    .restart local v3       #t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_2f
.end method
