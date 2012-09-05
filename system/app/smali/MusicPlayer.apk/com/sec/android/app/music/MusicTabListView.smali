.class public Lcom/sec/android/app/music/MusicTabListView;
.super Lcom/sec/android/app/music/widget/CommonMusicListView;
.source "MusicTabListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/sec/android/app/music/widget/SweepableListView$OnItemDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;
    }
.end annotation


# static fields
.field private static final CLASSNAME:Ljava/lang/String;

.field public static sSelectedSplitViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAdapter:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

.field private final mAlbumIdColumnString:Ljava/lang/String;

.field private mAlbumIdIdx:I

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mHasSecondLine:Z

.field private final mIndexColumnString:Ljava/lang/String;

.field private mIndexIdx:I

.field private mIsSelectMode:Z

.field private mIsSelectedAll:Z

.field private mIsSplitBarPressed:Z

.field private mKeyWordIdx:I

.field private final mKeyWordcolumnString:Ljava/lang/String;

.field private mNumberOfDefaultPlayListItem:I

.field private mOnMusicListItemClickListener:Lcom/sec/android/app/music/widget/OnMusicPlayListItemClickListener;

.field private final mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

.field private mSoftButton:Landroid/widget/Button;

.field mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

.field private final mTabId:I

.field private mTabListCursor:Landroid/database/Cursor;

.field private mTabListCursorCount:I

.field private final mText1ColumnString:Ljava/lang/String;

.field private mText1Idx:I

.field private mText2ColumnString:Ljava/lang/String;

.field private mText2Idx:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    const-class v0, Lcom/sec/android/app/music/MusicTabListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicTabListView;->CLASSNAME:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/music/MusicTabListView;->sSelectedSplitViewMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 14
    .parameter "context"
    .parameter "tabId"
    .parameter "isSelectMode"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/widget/CommonMusicListView;-><init>(Landroid/content/Context;)V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mHasSecondLine:Z

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mNumberOfDefaultPlayListItem:I

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mIsSelectMode:Z

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mIsSelectedAll:Z

    .line 878
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mIsSplitBarPressed:Z

    .line 121
    iput p2, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    .line 122
    iput-boolean p3, p0, Lcom/sec/android/app/music/MusicTabListView;->mIsSelectMode:Z

    .line 123
    invoke-static {p2}, Lcom/sec/android/app/music/MusicUtils;->getTabListArgsForQuery(I)Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget v1, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->albumIdxNumber:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAlbumIdColumnString:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->indexBy:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mIndexColumnString:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget v1, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->albumIdxNumber:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mText1ColumnString:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->keyWord:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mKeyWordcolumnString:Ljava/lang/String;

    .line 130
    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_55

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget v1, v1, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->albumIdxNumber:I

    add-int/lit8 v1, v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mText2ColumnString:Ljava/lang/String;

    .line 135
    :cond_55
    const/4 v8, 0x0

    .local v8, i:I
    :goto_56
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget-object v0, v0, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_94

    .line 136
    sget-object v0, Lcom/sec/android/app/music/MusicTabListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mQueryArgs projection["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicTabListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    iget-object v2, v2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    add-int/lit8 v8, v8, 0x1

    goto :goto_56

    .line 141
    :cond_94
    const/4 v4, -0x1

    .line 142
    .local v4, layout:I
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mIsSelectMode:Z

    if-eqz v0, :cond_10c

    .line 143
    const v4, 0x7f030009

    .line 148
    :goto_9c
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAdapter:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

    if-nez v0, :cond_e9

    .line 150
    sget-object v0, Lcom/sec/android/app/music/MusicTabListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAdapter == null, so create it!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-array v7, v1, [I

    move-object v1, p0

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;-><init>(Lcom/sec/android/app/music/MusicTabListView;Landroid/content/Context;Lcom/sec/android/app/music/widget/TwIndexListView;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAdapter:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAdapter:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicTabListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 161
    const/4 v9, 0x1

    .line 162
    .local v9, isSync:Z
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAdapter:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->getQueryHandler()Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    invoke-direct {p0, v0, v1, v9}, Lcom/sec/android/app/music/MusicTabListView;->getCursor(Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;Lcom/sec/android/app/music/MusicUtils$QueryArgs;Z)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicTabListView;->init(Landroid/database/Cursor;)V

    .line 176
    .end local v9           #isSync:Z
    :cond_e9
    invoke-virtual {p0, p0}, Lcom/sec/android/app/music/MusicTabListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f4

    .line 178
    invoke-virtual {p0, p0}, Lcom/sec/android/app/music/MusicTabListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 189
    :cond_f4
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mIsSelectMode:Z

    if-eqz v0, :cond_104

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicTabListView;->setItemsCanFocus(Z)V

    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicTabListView;->setSelected(Z)V

    .line 192
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicTabListView;->setChoiceMode(I)V

    .line 194
    :cond_104
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mIsSelectMode:Z

    if-nez v0, :cond_10b

    .line 195
    invoke-virtual {p0, p0}, Lcom/sec/android/app/music/MusicTabListView;->setOnDragListener(Lcom/sec/android/app/music/widget/SweepableListView$OnItemDragListener;)V

    .line 197
    :cond_10b
    return-void

    .line 145
    :cond_10c
    const v4, 0x7f030007

    goto :goto_9c
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/sec/android/app/music/MusicTabListView;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/MusicTabListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/music/MusicTabListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAlbumIdIdx:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/music/MusicTabListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mIsSplitBarPressed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/MusicTabListView;IJLjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/music/MusicTabListView;->contextItemSelected(IJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/music/MusicTabListView;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/music/MusicTabListView;Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/music/MusicTabListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/music/MusicTabListView;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/music/MusicTabListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mNumberOfDefaultPlayListItem:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/music/MusicTabListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mIsSelectMode:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/music/MusicTabListView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mHasSecondLine:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/music/MusicTabListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mText1Idx:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/music/MusicTabListView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mText2Idx:I

    return v0
.end method

.method private contextItemSelected(IJLjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f09016e

    const/4 v3, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 634
    sparse-switch p1, :sswitch_data_19e

    .line 738
    :cond_9
    :goto_9
    return-void

    .line 636
    :sswitch_a
    new-array v0, v7, [J

    aput-wide p2, v0, v8

    .line 639
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v7}, Lcom/sec/android/app/music/MusicUtils;->deletePlaylists(Landroid/content/Context;[JZ)V

    .line 640
    sget v0, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    if-ne v0, v7, :cond_9

    .line 641
    sget-object v0, Lcom/sec/android/app/music/MusicTabListView;->sSelectedSplitViewMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    iget v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v8, v8}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->closeListCursor()V

    goto :goto_9

    .line 647
    :sswitch_35
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 648
    const-string v1, "tabFrom"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 650
    const-string v1, "headTitle"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string v1, "keyword"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    const-string v1, "mode"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 653
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 654
    sget v0, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    if-ne v0, v7, :cond_9

    .line 655
    sget-object v0, Lcom/sec/android/app/music/MusicTabListView;->sSelectedSplitViewMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    iget v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    const-string v2, ""

    invoke-virtual {v0, v1, v2, v8, v8}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicContentListView;->closeListCursor()V

    goto :goto_9

    .line 664
    :sswitch_7d
    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_87

    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_88

    :cond_87
    move-object p5, p4

    .line 668
    :cond_88
    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    invoke-static {v0, p5}, Lcom/sec/android/app/music/MusicUtils;->getTrackListArgsForQuery(ILjava/lang/String;)Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    move-result-object v4

    .line 670
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, v4, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, v4, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v4, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v4, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 674
    if-eqz v1, :cond_147

    .line 676
    :try_start_aa
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_144

    .line 677
    sget-object v2, Lcom/sec/android/app/music/MusicTabListView;->CLASSNAME:Ljava/lang/String;

    const-string v3, "[CONTEXTMENU_SMART_BT] Count = %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v7, :cond_e3

    .line 681
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f09016e

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_de
    .catchall {:try_start_aa .. :try_end_de} :catchall_131

    .line 707
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_9

    .line 685
    :cond_e3
    :goto_e3
    :try_start_e3
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_144

    .line 687
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 689
    iget v3, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    if-ne v3, v7, :cond_136

    .line 690
    const/4 v3, 0x0

    const-string v4, "audio_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 695
    :goto_fd
    const/4 v3, 0x1

    const-string v4, "title"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 697
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 699
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 700
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_130
    .catchall {:try_start_e3 .. :try_end_130} :catchall_131

    goto :goto_e3

    .line 707
    :catchall_131
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    .line 692
    :cond_136
    const/4 v3, 0x0

    :try_start_137
    const-string v4, "_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_143
    .catchall {:try_start_137 .. :try_end_143} :catchall_131

    goto :goto_fd

    .line 707
    :cond_144
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 711
    :cond_147
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_15a

    .line 712
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_9

    .line 716
    :cond_15a
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 718
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v7, :cond_18c

    .line 719
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 726
    :goto_16f
    const-string v0, "audio/*"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 729
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.bluetooth"

    const-string v3, "com.android.bluetooth.opp.BluetoothOppLauncherActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 731
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 722
    :cond_18c
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_16f

    .line 634
    nop

    :sswitch_data_19e
    .sparse-switch
        0xb -> :sswitch_a
        0xf -> :sswitch_35
        0x14 -> :sswitch_7d
    .end sparse-switch
.end method

.method private createContextMenu(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 17
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mText1Idx:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mAlbumIdIdx:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 562
    .local v6, keyWord:Ljava/lang/String;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 563
    .local v9, menuName:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 565
    .local v2, menuIndex:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f090041

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f090040

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 577
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 578
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [Ljava/lang/CharSequence;

    new-instance v0, Lcom/sec/android/app/music/MusicTabListView$1;

    move-object v1, p0

    move-wide v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/music/MusicTabListView$1;-><init>(Lcom/sec/android/app/music/MusicTabListView;Ljava/util/HashMap;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 590
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 591
    .local v8, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 592
    const/4 v0, 0x1

    .line 594
    .end local v2           #menuIndex:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #keyWord:Ljava/lang/String;
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    .end local v8           #dialog:Landroid/app/AlertDialog;
    .end local v9           #menuName:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :goto_90
    return v0

    :cond_91
    const/4 v0, 0x0

    goto :goto_90
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 495
    sget-object v0, Lcom/sec/android/app/music/MusicTabListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getColumnIndices()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    if-eqz p1, :cond_69

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mHasSecondLine:Z

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAlbumIdColumnString:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAlbumIdIdx:I

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mText1ColumnString:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mText1Idx:I

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mIndexColumnString:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mIndexIdx:I

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mKeyWordcolumnString:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mKeyWordIdx:I

    .line 506
    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_55

    .line 507
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mHasSecondLine:Z

    .line 508
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mText2ColumnString:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mText2Idx:I

    .line 510
    :cond_55
    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mIndexIdx:I

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/music/MusicTabListView;->setIndexer(Landroid/database/Cursor;ILjava/lang/String;)V

    .line 513
    :cond_69
    return-void
.end method

.method private getCursor(Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;Lcom/sec/android/app/music/MusicUtils$QueryArgs;Z)Landroid/database/Cursor;
    .registers 11
    .parameter "queryHandler"
    .parameter "args"
    .parameter "isAsync"

    .prologue
    .line 517
    sget-object v0, Lcom/sec/android/app/music/MusicTabListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getCursor isAsync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v1, p2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v2, p2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, p2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, p2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, p2, Lcom/sec/android/app/music/MusicUtils$QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p1

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;->doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private makeNumberOfView(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 11
    .parameter "c"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 260
    if-nez p1, :cond_7

    .line 261
    const/4 p1, 0x0

    .line 284
    .end local p1
    :cond_6
    :goto_6
    return-object p1

    .line 263
    .restart local p1
    :cond_7
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 264
    .local v0, count:I
    iget v4, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    if-eq v4, v6, :cond_11

    if-eqz v0, :cond_6

    .line 269
    :cond_11
    const/4 v4, 0x4

    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/sec/android/app/music/MusicTabListView;->mAlbumIdColumnString:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/sec/android/app/music/MusicTabListView;->mKeyWordcolumnString:Ljava/lang/String;

    aput-object v4, v3, v8

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/sec/android/app/music/MusicTabListView;->mIndexColumnString:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 276
    .local v3, numberOfProjection:[Ljava/lang/String;
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 277
    .local v2, countOfItems:Landroid/database/MatrixCursor;
    new-instance v1, Ljava/util/ArrayList;

    array-length v4, v3

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 278
    .local v1, countItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v4, -0xf

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual {v2, v1}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 284
    new-instance v4, Landroid/database/MergeCursor;

    new-array v5, v8, [Landroid/database/Cursor;

    aput-object p1, v5, v7

    aput-object v2, v5, v6

    invoke-direct {v4, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    move-object p1, v4

    goto :goto_6
.end method

.method private makePlayListDefaultItems(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 17
    .parameter "c"

    .prologue
    .line 310
    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v12, Lcom/sec/android/app/music/MusicUtils;->PLAY_LIST_PROJECTION:[Ljava/lang/String;

    invoke-direct {v6, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 311
    .local v6, playListCursor:Landroid/database/MatrixCursor;
    sget-object v12, Lcom/sec/android/app/music/MusicUtils;->PLAY_LIST_PROJECTION:[Ljava/lang/String;

    array-length v4, v12

    .line 313
    .local v4, length:I
    const/4 v12, 0x1

    iput v12, p0, Lcom/sec/android/app/music/MusicTabListView;->mNumberOfDefaultPlayListItem:I

    .line 314
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 315
    .local v7, quickList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v12, -0xb

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f090028

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    const-string v12, "@"

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, isEnableMostPlayed:Z
    const/4 v2, 0x0

    .line 322
    .local v2, isEnableRecentlyPlayed:Z
    const/4 v1, 0x0

    .line 323
    .local v1, isEnableRecentlyAdded:Z
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/sec/android/app/music/common/util/MusicValueSaveController;->getPlaylistMenu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 324
    .local v10, setting:Ljava/lang/String;
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v12, "|"

    invoke-direct {v11, v10, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .local v11, strToken:Ljava/util/StringTokenizer;
    :goto_43
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_63

    .line 326
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextElement()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 327
    .local v3, item:I
    packed-switch v3, :pswitch_data_f6

    goto :goto_43

    .line 329
    :pswitch_5d
    const/4 v0, 0x1

    .line 330
    goto :goto_43

    .line 332
    :pswitch_5f
    const/4 v2, 0x1

    .line 333
    goto :goto_43

    .line 335
    :pswitch_61
    const/4 v1, 0x1

    .line 336
    goto :goto_43

    .line 341
    .end local v3           #item:I
    :cond_63
    if-eqz v0, :cond_8f

    .line 342
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 343
    .local v5, mostPlayedkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v12, -0xc

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f090029

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const-string v12, "@"

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {v6, v5}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 347
    iget v12, p0, Lcom/sec/android/app/music/MusicTabListView;->mNumberOfDefaultPlayListItem:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/sec/android/app/music/MusicTabListView;->mNumberOfDefaultPlayListItem:I

    .line 350
    .end local v5           #mostPlayedkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_8f
    if-eqz v2, :cond_bb

    .line 351
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    .local v9, recentlyPlayedkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v12, -0xd

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f09002a

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v12, "@"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual {v6, v9}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 356
    iget v12, p0, Lcom/sec/android/app/music/MusicTabListView;->mNumberOfDefaultPlayListItem:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/sec/android/app/music/MusicTabListView;->mNumberOfDefaultPlayListItem:I

    .line 359
    .end local v9           #recentlyPlayedkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_bb
    if-eqz v1, :cond_e7

    .line 360
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 361
    .local v8, recentlyAddedkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-wide/16 v12, -0xe

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f09002b

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    const-string v12, "@"

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v6, v8}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 365
    iget v12, p0, Lcom/sec/android/app/music/MusicTabListView;->mNumberOfDefaultPlayListItem:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/sec/android/app/music/MusicTabListView;->mNumberOfDefaultPlayListItem:I

    .line 367
    .end local v8           #recentlyAddedkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_e7
    new-instance v12, Landroid/database/MergeCursor;

    const/4 v13, 0x2

    new-array v13, v13, [Landroid/database/Cursor;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    invoke-direct {v12, v13}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v12

    .line 327
    :pswitch_data_f6
    .packed-switch 0xb
        :pswitch_5d
        :pswitch_5f
        :pswitch_61
    .end packed-switch
.end method


# virtual methods
.method public bindingSplitView(Lcom/sec/android/app/music/MusicContentListView;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    .line 243
    return-void
.end method

.method public closeCursor()V
    .registers 4

    .prologue
    .line 248
    sget-object v0, Lcom/sec/android/app/music/MusicTabListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " closeCursor()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAdapter:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

    if-eqz v0, :cond_2a

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAdapter:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 253
    :cond_2a
    return-void
.end method

.method public getCount()I
    .registers 4

    .prologue
    .line 291
    invoke-super {p0}, Lcom/sec/android/app/music/widget/CommonMusicListView;->getCount()I

    move-result v0

    .line 292
    .local v0, count:I
    iget v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    .line 293
    iget v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mNumberOfDefaultPlayListItem:I

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    .line 296
    :cond_e
    return v0
.end method

.method public getIsSelectedAll()Z
    .registers 2

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mIsSelectedAll:Z

    return v0
.end method

.method protected init(Landroid/database/Cursor;)V
    .registers 7
    .parameter "newCursor"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    sget-object v0, Lcom/sec/android/app/music/MusicTabListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " init() mTabId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " changeCursor & set indexer... mIndexColumnString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicTabListView;->mIndexColumnString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicTabListView;->makeNumberOfView(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    .line 218
    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    if-ne v0, v4, :cond_40

    .line 221
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicTabListView;->makePlayListDefaultItems(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    .line 224
    :cond_40
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAdapter:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 225
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicTabListView;->getColumnIndices(Landroid/database/Cursor;)V

    .line 226
    iput-object p1, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;

    if-nez v0, :cond_51

    .line 228
    iput v3, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I

    .line 239
    :cond_50
    :goto_50
    return-void

    .line 230
    :cond_51
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I

    .line 234
    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    if-ne v0, v4, :cond_50

    iget v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I

    iget v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mNumberOfDefaultPlayListItem:I

    if-ne v0, v1, :cond_50

    .line 236
    iput v3, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I

    goto :goto_50
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 743
    sget-object v1, Lcom/sec/android/app/music/MusicTabListView;->CLASSNAME:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTabId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onItemClick position="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-wide/16 v3, -0xf

    cmp-long v1, p4, v3

    if-nez v1, :cond_37

    .line 811
    :cond_36
    :goto_36
    return-void

    .line 750
    :cond_37
    iget-boolean v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mIsSelectMode:Z

    if-eqz v1, :cond_63

    .line 751
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getCheckedItemIds()[J

    move-result-object v1

    array-length v1, v1

    .line 752
    iget v3, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_55

    .line 753
    iget-object v3, p0, Lcom/sec/android/app/music/MusicTabListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 754
    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mIsSelectedAll:Z

    .line 760
    :goto_4d
    if-lez v1, :cond_5d

    .line 761
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mSoftButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_36

    .line 756
    :cond_55
    iget-object v3, p0, Lcom/sec/android/app/music/MusicTabListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 757
    iput-boolean v2, p0, Lcom/sec/android/app/music/MusicTabListView;->mIsSelectedAll:Z

    goto :goto_4d

    .line 763
    :cond_5d
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mSoftButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_36

    .line 768
    :cond_63
    iget v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_9b

    .line 770
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mAlbumIdIdx:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 771
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mOnMusicListItemClickListener:Lcom/sec/android/app/music/widget/OnMusicPlayListItemClickListener;

    invoke-interface {v1, v0}, Lcom/sec/android/app/music/widget/OnMusicPlayListItemClickListener;->onPlayListItemClick(Ljava/lang/String;)V

    .line 772
    sget-object v1, Lcom/sec/android/app/music/MusicTabListView;->CLASSNAME:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTabId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  play list id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 777
    :cond_9b
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/sec/android/app/music/MusicTabListView;->mKeyWordIdx:I

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 778
    sget v1, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    if-ne v1, v0, :cond_ef

    .line 779
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v1, :cond_ef

    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentListView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_ef

    .line 785
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicContentListView;->getWidth()I

    move-result v1

    if-nez v1, :cond_129

    move v1, v0

    .line 788
    :goto_bc
    sget-object v0, Lcom/sec/android/app/music/MusicTabListView;->sSelectedSplitViewMap:Ljava/util/HashMap;

    iget v4, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 789
    if-eqz v0, :cond_d4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p3, :cond_d4

    .line 792
    if-eqz v1, :cond_36

    .line 795
    :cond_d4
    sget-object v0, Lcom/sec/android/app/music/MusicTabListView;->sSelectedSplitViewMap:Ljava/util/HashMap;

    iget v4, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    iget v4, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    invoke-virtual {v0, v4, v3, v2, v2}, Lcom/sec/android/app/music/MusicContentListView;->init(ILjava/lang/String;ZZ)V

    .line 798
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->invalidateViews()V

    .line 799
    if-eqz v1, :cond_36

    .line 804
    :cond_ef
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 805
    const-string v1, "tabFrom"

    iget v2, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 806
    const-string v1, "keyword"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    const-string v1, "albumIdForAlbumArt"

    iget-object v2, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/sec/android/app/music/MusicTabListView;->mAlbumIdIdx:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const-string v1, "headTitle"

    iget-object v2, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/sec/android/app/music/MusicTabListView;->mText1Idx:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_36

    :cond_129
    move v1, v2

    goto :goto_bc
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 532
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/sec/android/app/music/MusicTabListView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicTabListView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onItemLongClick position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-wide/16 v0, -0xb

    cmp-long v0, p4, v0

    if-eqz v0, :cond_46

    const-wide/16 v0, -0xc

    cmp-long v0, p4, v0

    if-eqz v0, :cond_46

    const-wide/16 v0, -0xe

    cmp-long v0, p4, v0

    if-eqz v0, :cond_46

    const-wide/16 v0, -0xd

    cmp-long v0, p4, v0

    if-nez v0, :cond_48

    .line 537
    :cond_46
    const/4 v0, 0x0

    .line 547
    :goto_47
    return v0

    :cond_48
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/music/MusicTabListView;->createContextMenu(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_47
.end method

.method public reQueryListCursor(Z)V
    .registers 4
    .parameter "async"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAdapter:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

    if-eqz v0, :cond_13

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAdapter:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->getQueryHandler()Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mQueryArgs:Lcom/sec/android/app/music/MusicUtils$QueryArgs;

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/android/app/music/MusicTabListView;->getCursor(Lcom/sec/android/app/music/widget/SimpleQueryCursorAdapter$TrackQueryHandler;Lcom/sec/android/app/music/MusicUtils$QueryArgs;Z)Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicTabListView;->init(Landroid/database/Cursor;)V

    .line 378
    :cond_13
    return-void
.end method

.method public setAllItemChecked(Z)V
    .registers 4
    .parameter "check"

    .prologue
    .line 870
    iput-boolean p1, p0, Lcom/sec/android/app/music/MusicTabListView;->mIsSelectedAll:Z

    .line 871
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 873
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_16

    .line 874
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/music/MusicTabListView;->setItemChecked(IZ)V

    .line 873
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 876
    :cond_16
    return-void
.end method

.method public setAutoReQuery(Z)V
    .registers 3
    .parameter "autoRequery"

    .prologue
    .line 389
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAdapter:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

    if-eqz v0, :cond_9

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAdapter:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->setAutoReQuery(Z)V

    .line 392
    :cond_9
    return-void
.end method

.method public setCheckBoxView(Landroid/widget/CheckBox;)V
    .registers 2
    .parameter "checkBox"

    .prologue
    .line 860
    iput-object p1, p0, Lcom/sec/android/app/music/MusicTabListView;->mCheckBox:Landroid/widget/CheckBox;

    .line 861
    return-void
.end method

.method public setContentChangedListenHandler(Landroid/os/Handler;)V
    .registers 3
    .parameter "h"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAdapter:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

    if-eqz v0, :cond_9

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView;->mAdapter:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->setContentChangedListenHandler(Landroid/os/Handler;)V

    .line 385
    :cond_9
    return-void
.end method

.method public setOnMusicPlayListItemClickListener(Lcom/sec/android/app/music/widget/OnMusicPlayListItemClickListener;)V
    .registers 2
    .parameter "l"

    .prologue
    .line 526
    iput-object p1, p0, Lcom/sec/android/app/music/MusicTabListView;->mOnMusicListItemClickListener:Lcom/sec/android/app/music/widget/OnMusicPlayListItemClickListener;

    .line 527
    return-void
.end method

.method public setSoftButton(Landroid/widget/Button;)V
    .registers 2
    .parameter "button"

    .prologue
    .line 855
    iput-object p1, p0, Lcom/sec/android/app/music/MusicTabListView;->mSoftButton:Landroid/widget/Button;

    .line 856
    return-void
.end method

.method public setSplitBarPress(Z)V
    .registers 2
    .parameter "isPressed"

    .prologue
    .line 881
    iput-boolean p1, p0, Lcom/sec/android/app/music/MusicTabListView;->mIsSplitBarPressed:Z

    .line 882
    return-void
.end method
