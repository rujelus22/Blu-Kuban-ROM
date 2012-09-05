.class Lcom/sec/android/app/music/TrackListView$1;
.super Ljava/lang/Thread;
.source "TrackListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/music/TrackListView;->updatePlayOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/music/TrackListView;

.field final synthetic val$c:Landroid/database/Cursor;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$loading:Landroid/app/ProgressDialog;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sec/android/app/music/TrackListView;Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/app/ProgressDialog;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/sec/android/app/music/TrackListView$1;->this$0:Lcom/sec/android/app/music/TrackListView;

    iput-object p2, p0, Lcom/sec/android/app/music/TrackListView$1;->val$c:Landroid/database/Cursor;

    iput-object p3, p0, Lcom/sec/android/app/music/TrackListView$1;->val$cr:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/sec/android/app/music/TrackListView$1;->val$uri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/sec/android/app/music/TrackListView$1;->val$loading:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 651
    iget-object v6, p0, Lcom/sec/android/app/music/TrackListView$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 652
    iget-object v6, p0, Lcom/sec/android/app/music/TrackListView$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 653
    .local v2, length:I
    const-string v4, "_id=?"

    .line 654
    .local v4, where:Ljava/lang/String;
    new-array v5, v9, [Ljava/lang/String;

    .line 655
    .local v5, wherearg:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_12
    if-ge v0, v2, :cond_86

    .line 657
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updatePlayOrder i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mTabId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/music/TrackListView$1;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mTabId:I
    invoke-static {v8}, Lcom/sec/android/app/music/TrackListView;->access$100(Lcom/sec/android/app/music/TrackListView;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mKeyWord : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/music/TrackListView$1;->this$0:Lcom/sec/android/app/music/TrackListView;

    #getter for: Lcom/sec/android/app/music/TrackListView;->mKeyWord:Ljava/lang/String;
    invoke-static {v8}, Lcom/sec/android/app/music/TrackListView;->access$200(Lcom/sec/android/app/music/TrackListView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object v6, p0, Lcom/sec/android/app/music/TrackListView$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v0, v6, :cond_5e

    .line 662
    iget-object v6, p0, Lcom/sec/android/app/music/TrackListView$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 668
    :cond_5e
    move v1, v0

    .local v1, j:I
    :goto_5f
    if-ge v1, v2, :cond_86

    .line 669
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 670
    .local v3, values:Landroid/content/ContentValues;
    const-string v6, "play_order"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 671
    iget-object v6, p0, Lcom/sec/android/app/music/TrackListView$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 672
    iget-object v6, p0, Lcom/sec/android/app/music/TrackListView$1;->val$cr:Landroid/content/ContentResolver;

    iget-object v7, p0, Lcom/sec/android/app/music/TrackListView$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v6, v7, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 673
    iget-object v6, p0, Lcom/sec/android/app/music/TrackListView$1;->val$c:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 668
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 680
    .end local v1           #j:I
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_86
    iget-object v6, p0, Lcom/sec/android/app/music/TrackListView$1;->val$loading:Landroid/app/ProgressDialog;

    if-eqz v6, :cond_a0

    iget-object v6, p0, Lcom/sec/android/app/music/TrackListView$1;->val$loading:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 681
    iget-object v6, p0, Lcom/sec/android/app/music/TrackListView$1;->val$loading:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 683
    invoke-static {}, Lcom/sec/android/app/music/TrackListView;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "updatePlayOrder dismiss..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_a0
    iget-object v6, p0, Lcom/sec/android/app/music/TrackListView$1;->this$0:Lcom/sec/android/app/music/TrackListView;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/music/TrackListView;->setAutoReQuery(Z)V

    .line 688
    return-void
.end method
