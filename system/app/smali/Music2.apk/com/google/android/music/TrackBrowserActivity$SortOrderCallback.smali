.class Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/menu/MusicMenu$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortOrderCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/TrackBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/music/TrackBrowserActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/TrackBrowserActivity;Lcom/google/android/music/TrackBrowserActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 589
    invoke-direct {p0, p1}, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;-><init>(Lcom/google/android/music/TrackBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const/4 v8, 0x1

    .line 591
    const-string v4, "TrackBrowser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SortOrderCallback.onMusicMenuItemSelected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mSortChooser:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$800(Lcom/google/android/music/TrackBrowserActivity;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/TrackBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mSortOrderNameList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$700(Lcom/google/android/music/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mSortOrderList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$900(Lcom/google/android/music/TrackBrowserActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 595
    .local v3, order:I
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/music/medialist/SongList;->setSortOrder(I)V

    .line 596
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mMediaList:Lcom/google/android/music/medialist/SongList;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/medialist/SongList;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4, v5}, Lcom/google/android/music/medialist/SongList;->storeDefaultSortOrder(Landroid/content/Context;)V

    .line 599
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    #getter for: Lcom/google/android/music/TrackBrowserActivity;->mSortOrderMenu:Lcom/google/android/music/menu/MusicDropdownMenu;
    invoke-static {v4}, Lcom/google/android/music/TrackBrowserActivity;->access$1000(Lcom/google/android/music/TrackBrowserActivity;)Lcom/google/android/music/menu/MusicDropdownMenu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/menu/MusicDropdownMenu;->getItems()Ljava/util/ArrayList;

    move-result-object v2

    .line 600
    .local v2, menuItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/menu/MusicMenuItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_73
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_86

    .line 601
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/menu/MusicMenuItem;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/music/menu/MusicMenuItem;->setChecked(Z)V

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 604
    :cond_86
    invoke-virtual {p1, v8}, Lcom/google/android/music/menu/MusicMenuItem;->setChecked(Z)V

    .line 607
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    const/4 v5, 0x0

    #calls: Lcom/google/android/music/TrackBrowserActivity;->getTrackCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v4, v5}, Lcom/google/android/music/TrackBrowserActivity;->access$1100(Lcom/google/android/music/TrackBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 615
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_97

    .line 616
    iget-object v4, p0, Lcom/google/android/music/TrackBrowserActivity$SortOrderCallback;->this$0:Lcom/google/android/music/TrackBrowserActivity;

    invoke-virtual {v4, v0}, Lcom/google/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 618
    :cond_97
    return v8
.end method
