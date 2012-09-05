.class public Lcom/sec/android/app/music/MusicGridView;
.super Landroid/widget/GridView;
.source "MusicGridView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/sec/android/app/music/widget/OnCursorChangeListener;


# static fields
.field private static final CLASSNAME:Ljava/lang/String;


# instance fields
.field private mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

.field private mIsSelectMode:Z

.field private mSelectedId:J

.field private mTabId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/sec/android/app/music/MusicGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/music/MusicGridView;->CLASSNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/MusicGridView;->mIsSelectMode:Z

    .line 105
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/app/music/MusicGridView;->mSelectedId:J

    .line 34
    invoke-virtual {p0, p0}, Lcom/sec/android/app/music/MusicGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 35
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/sec/android/app/music/MusicGridView;->CLASSNAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/music/MusicGridView;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lcom/sec/android/app/music/MusicGridView;->mTabId:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/music/MusicGridView;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/app/music/MusicGridView;->contextItemSelected(I)V

    return-void
.end method

.method private contextItemSelected(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 150
    sparse-switch p1, :sswitch_data_54

    .line 171
    :goto_4
    return-void

    .line 152
    :sswitch_5
    new-array v0, v4, [J

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/sec/android/app/music/MusicGridView;->mSelectedId:J

    aput-wide v2, v0, v1

    .line 155
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Lcom/sec/android/app/music/MusicUtils;->deletePlaylists(Landroid/content/Context;[JZ)V

    goto :goto_4

    .line 159
    :sswitch_14
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    const-string v1, "tabFrom"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/music/MusicGridView;->mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/music/MusicGridAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 163
    const-string v2, "headTitle"

    iget-object v3, p0, Lcom/sec/android/app/music/MusicGridView;->mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

    iget v3, v3, Lcom/sec/android/app/music/MusicGridAdapter;->mText1Idx:I

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v2, "keyword"

    iget-object v3, p0, Lcom/sec/android/app/music/MusicGridView;->mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

    iget v3, v3, Lcom/sec/android/app/music/MusicGridAdapter;->mAlbumIdIdx:I

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v1, "mode"

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 166
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 150
    nop

    :sswitch_data_54
    .sparse-switch
        0xb -> :sswitch_5
        0xf -> :sswitch_14
    .end sparse-switch
.end method

.method private createContextMenu(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 15
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
    .line 115
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v5, ""

    .line 116
    .local v5, title:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/music/MusicGridView;->mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/music/MusicGridAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 117
    .local v1, c:Landroid/database/Cursor;
    invoke-interface {v1, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 118
    iget-object v6, p0, Lcom/sec/android/app/music/MusicGridView;->mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

    iget v6, v6, Lcom/sec/android/app/music/MusicGridAdapter;->mText1Idx:I

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 120
    :cond_16
    iput-wide p4, p0, Lcom/sec/android/app/music/MusicGridView;->mSelectedId:J

    .line 122
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v4, menuName:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v3, menuIndex:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicGridView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f090041

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicGridView;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f090040

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicGridView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    new-instance v7, Lcom/sec/android/app/music/MusicGridView$1;

    invoke-direct {v7, p0, v3}, Lcom/sec/android/app/music/MusicGridView$1;-><init>(Lcom/sec/android/app/music/MusicGridView;Ljava/util/HashMap;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 145
    .local v2, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 146
    const/4 v6, 0x1

    return v6
.end method


# virtual methods
.method public closeCursor()V
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridView;->mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicGridAdapter;->closeCursor()V

    .line 60
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridView;->mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicGridAdapter;->getItemCount()I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;IZ)V
    .registers 6
    .parameter "context"
    .parameter "tabId"
    .parameter "isSelectMode"

    .prologue
    .line 38
    iput p2, p0, Lcom/sec/android/app/music/MusicGridView;->mTabId:I

    .line 39
    iput-boolean p3, p0, Lcom/sec/android/app/music/MusicGridView;->mIsSelectMode:Z

    .line 40
    new-instance v0, Lcom/sec/android/app/music/MusicGridAdapter;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/sec/android/app/music/MusicGridAdapter;-><init>(Landroid/content/Context;Landroid/view/View;IZ)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicGridView;->mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridView;->mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/MusicGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    iget v0, p0, Lcom/sec/android/app/music/MusicGridView;->mTabId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 43
    invoke-virtual {p0, p0}, Lcom/sec/android/app/music/MusicGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 45
    :cond_18
    return-void
.end method

.method public onCursorChanged(Landroid/database/Cursor;)V
    .registers 5
    .parameter "c"

    .prologue
    .line 49
    sget-object v0, Lcom/sec/android/app/music/MusicGridView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicGridView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onCursorChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridView;->mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicGridAdapter;->init(Landroid/database/Cursor;)V

    .line 51
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
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
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridView;->mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/music/MusicGridAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/sec/android/app/music/MusicGridView;->mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

    iget v1, v1, Lcom/sec/android/app/music/MusicGridAdapter;->mKeyWordIdx:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicGridView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/sec/android/app/music/TrackBrowserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string v3, "tabFrom"

    iget v4, p0, Lcom/sec/android/app/music/MusicGridView;->mTabId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    const-string v3, "keyword"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "albumIdForAlbumArt"

    iget-object v3, p0, Lcom/sec/android/app/music/MusicGridView;->mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

    iget v3, v3, Lcom/sec/android/app/music/MusicGridAdapter;->mAlbumIdIdx:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string v1, "headTitle"

    iget-object v3, p0, Lcom/sec/android/app/music/MusicGridView;->mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

    iget v3, v3, Lcom/sec/android/app/music/MusicGridAdapter;->mText1Idx:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
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
    .line 90
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    sget-object v0, Lcom/sec/android/app/music/MusicGridView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicGridView;->mTabId:I

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

    .line 92
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

    .line 95
    :cond_46
    const/4 v0, 0x0

    .line 97
    :goto_47
    return v0

    :cond_48
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/music/MusicGridView;->createContextMenu(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_47
.end method

.method public reQueryListCursor(Z)V
    .registers 5
    .parameter "async"

    .prologue
    .line 54
    sget-object v0, Lcom/sec/android/app/music/MusicGridView;->CLASSNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/music/MusicGridView;->mTabId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reQueryListCursor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/music/MusicGridView;->mGridAdapter:Lcom/sec/android/app/music/MusicGridAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/music/MusicGridAdapter;->reQueryListCursor(Z)V

    .line 56
    return-void
.end method
