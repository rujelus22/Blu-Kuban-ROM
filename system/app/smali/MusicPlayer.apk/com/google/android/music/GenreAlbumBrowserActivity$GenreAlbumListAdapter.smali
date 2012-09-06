.class Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "GenreAlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GenreAlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChangeObserver;,
        Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;,
        Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActiveViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

.field private final mAlbumSongSeparator:Ljava/lang/String;

.field private final mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

.field private final mBuffer:Ljava/lang/StringBuilder;

.field private mChangeObserver:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChangeObserver;

.field private mChildCursorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mContext:Landroid/content/Context;

.field private final mFormatArgs:[Ljava/lang/Object;

.field private final mFormatArgs3:[Ljava/lang/Object;

.field private final mResources:Landroid/content/res/Resources;

.field private final mUnavailableBackground:Landroid/graphics/drawable/ColorDrawable;

.field private final mUnknownAlbum:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/content/Context;Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
    .registers 20
    .parameter
    .parameter "context"
    .parameter "currentactivity"
    .parameter "cursor"
    .parameter "glayout"
    .parameter "gfrom"
    .parameter "gto"
    .parameter "clayout"
    .parameter "cfrom"
    .parameter "cto"

    .prologue
    .line 664
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 665
    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 623
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 624
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mUnavailableBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mBuffer:Ljava/lang/StringBuilder;

    .line 631
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 632
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mFormatArgs3:[Ljava/lang/Object;

    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 635
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraintIsValid:Z

    .line 636
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    .line 639
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChangeObserver;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChangeObserver:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChangeObserver;

    .line 641
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    .line 666
    iput-object p3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    .line 668
    iput-object p2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mContext:Landroid/content/Context;

    .line 669
    invoke-direct {p0, p4}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 670
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 671
    const v0, 0x7f0d019d

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 672
    const v0, 0x7f0d0075

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 673
    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->onContentChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->updateAllOfflineSelectedStatuses()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)Lcom/google/android/music/GenreAlbumBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 677
    return-void
.end method

.method private onContentChanged()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 1053
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$900(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->hasCount(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1055
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreExpandedGroups:[I
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1100(Lcom/google/android/music/GenreAlbumBrowserActivity;)[I

    move-result-object v4

    if-eqz v4, :cond_33

    .line 1056
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreExpandedGroups:[I
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1100(Lcom/google/android/music/GenreAlbumBrowserActivity;)[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1d
    if-ge v2, v3, :cond_2d

    aget v1, v0, v2

    .line 1057
    .local v1, groupPos:I
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/music/MusicExpandableListView;->expandGroup(I)Z

    .line 1056
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1059
    .end local v1           #groupPos:I
    :cond_2d
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreExpandedGroups:[I
    invoke-static {v4, v5}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1102(Lcom/google/android/music/GenreAlbumBrowserActivity;[I)[I

    .line 1061
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_33
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1200(Lcom/google/android/music/GenreAlbumBrowserActivity;)I

    move-result v4

    if-eq v4, v6, :cond_4f

    .line 1062
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v5}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1200(Lcom/google/android/music/GenreAlbumBrowserActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/music/MusicExpandableListView;->setSelection(I)V

    .line 1063
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #setter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v4, v6}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1202(Lcom/google/android/music/GenreAlbumBrowserActivity;I)I

    .line 1066
    :cond_4f
    return-void
.end method

.method private updateAllOfflineSelectedStatuses()V
    .registers 4

    .prologue
    .line 850
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    .line 851
    .local v1, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    invoke-direct {p0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->updateOfflineSelectedStatus(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;)V

    goto :goto_6

    .line 853
    .end local v1           #vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    :cond_16
    return-void
.end method

.method private updateOfflineSelectedStatus(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;)V
    .registers 11
    .parameter "vh"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 856
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$300(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    if-nez v2, :cond_b

    .line 888
    :cond_a
    :goto_a
    return-void

    .line 859
    :cond_b
    iget v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->type:I

    if-eq v2, v7, :cond_a

    .line 862
    iget-wide v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    .line 866
    iget-object v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-boolean v3, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->hasRemote:Z

    invoke-virtual {v2, v3}, Lcom/google/android/music/KeepOnCheckBox;->setCheckBoxEnabled(Z)V

    .line 867
    iget-boolean v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->hasRemote:Z

    if-eqz v2, :cond_58

    .line 868
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$300(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    iget-wide v5, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;

    move-result-object v1

    .line 872
    .local v1, selected:Ljava/lang/Boolean;
    if-eqz v1, :cond_4f

    .line 873
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 878
    .local v0, keepOn:Z
    :goto_36
    iget-object v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v0}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 879
    if-nez v0, :cond_52

    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$300(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 880
    iget-object v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v8}, Lcom/google/android/music/KeepOnCheckBox;->setCheckBoxEnabled(Z)V

    goto :goto_a

    .line 875
    .end local v0           #keepOn:Z
    :cond_4f
    iget-boolean v0, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->isKeptInDb:Z

    .restart local v0       #keepOn:Z
    goto :goto_36

    .line 882
    :cond_52
    iget-object v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v7}, Lcom/google/android/music/KeepOnCheckBox;->setCheckBoxEnabled(Z)V

    goto :goto_a

    .line 885
    .end local v0           #keepOn:Z
    .end local v1           #selected:Ljava/lang/Boolean;
    :cond_58
    iget-object v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v7}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 886
    iget-object v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v8}, Lcom/google/android/music/KeepOnCheckBox;->setCheckBoxEnabled(Z)V

    goto :goto_a
.end method


# virtual methods
.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 23
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "islast"

    .prologue
    .line 785
    move-object/from16 v6, p3

    check-cast v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;

    .line 786
    .local v6, childCursor:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    .line 788
    .local v14, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 789
    .local v12, name:Ljava/lang/String;
    move-object v2, v12

    .line 790
    .local v2, albumDisplayname:Ljava/lang/String;
    invoke-static {v12}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v13

    .line 791
    .local v13, unknown:Z
    if-eqz v13, :cond_1c

    .line 792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 794
    :cond_1c
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v15, v2}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    const/4 v15, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 798
    .local v5, artistDisplayname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v15}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$600(Lcom/google/android/music/GenreAlbumBrowserActivity;)Z

    move-result v15

    if-nez v15, :cond_3b

    const/4 v15, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz v15, :cond_da

    :cond_3b
    const/4 v10, 0x1

    .line 799
    .local v10, isAvailable:Z
    :goto_3c
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 800
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 802
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 803
    .local v3, albumId:J
    const/4 v15, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz v15, :cond_dd

    const/4 v15, 0x1

    :goto_5f
    iput-boolean v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->hasRemote:Z

    .line 804
    iput-wide v3, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    .line 805
    iget-wide v15, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->mGenreId:J

    iput-wide v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    .line 806
    iget-object v11, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 808
    .local v11, iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    const-wide/16 v15, -0x1

    cmp-long v15, v3, v15

    if-nez v15, :cond_df

    .line 810
    invoke-virtual {v11, v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAllSongs(Ljava/lang/String;)V

    .line 811
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 812
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 820
    :goto_7d
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v7

    .line 822
    .local v7, currentalbumid:J
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    iget-wide v0, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v3, v4, v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->setAlbumId(JJ)V

    .line 824
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-virtual {v15}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v9

    .line 825
    .local v9, inManageMusicMode:Z
    if-nez v9, :cond_102

    const-wide/16 v15, -0x1

    cmp-long v15, v3, v15

    if-eqz v15, :cond_102

    cmp-long v15, v7, v3

    if-nez v15, :cond_102

    .line 827
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 832
    :goto_ab
    const/4 v15, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_10a

    const/4 v15, 0x1

    :goto_b5
    iput-boolean v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->isKeptInDb:Z

    .line 834
    if-eqz v9, :cond_114

    .line 835
    const-wide/16 v15, -0x1

    cmp-long v15, v3, v15

    if-nez v15, :cond_10c

    .line 836
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 840
    :goto_c6
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->updateOfflineSelectedStatus(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;)V

    .line 841
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 846
    :goto_d2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v15, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 847
    return-void

    .line 798
    .end local v3           #albumId:J
    .end local v7           #currentalbumid:J
    .end local v9           #inManageMusicMode:Z
    .end local v10           #isAvailable:Z
    .end local v11           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_da
    const/4 v10, 0x0

    goto/16 :goto_3c

    .line 803
    .restart local v3       #albumId:J
    .restart local v10       #isAvailable:Z
    :cond_dd
    const/4 v15, 0x0

    goto :goto_5f

    .line 814
    .restart local v11       #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_df
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v11, v3, v4, v15, v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 815
    if-eqz v10, :cond_fd

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

    :goto_ed
    invoke-virtual {v11, v15}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 816
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 817
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v15, v5}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7d

    .line 815
    :cond_fd
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mUnavailableBackground:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_ed

    .line 829
    .restart local v7       #currentalbumid:J
    .restart local v9       #inManageMusicMode:Z
    :cond_102
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto :goto_ab

    .line 832
    :cond_10a
    const/4 v15, 0x0

    goto :goto_b5

    .line 838
    :cond_10c
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    goto :goto_c6

    .line 843
    :cond_114
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 844
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d2
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 14
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 754
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    .line 755
    .local v6, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 757
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 781
    :goto_20
    return-void

    .line 763
    :cond_21
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 764
    .local v1, genre:Ljava/lang/String;
    move-object v0, v1

    .line 765
    .local v0, displayGenre:Ljava/lang/String;
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v7, v0}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 768
    .local v2, genreId:J
    const/4 v7, 0x3

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_74

    const/4 v4, 0x1

    .line 769
    .local v4, hasRemote:Z
    :goto_39
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 771
    iput-wide v2, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    .line 772
    const-wide/16 v7, -0x1

    iput-wide v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    .line 773
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v7, v2, v3}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->setGenreId(J)V

    .line 775
    iget-object v7, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v7}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$600(Lcom/google/android/music/GenreAlbumBrowserActivity;)Z

    move-result v7

    if-nez v7, :cond_5a

    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_76

    :cond_5a
    const/4 v5, 0x1

    .line 776
    .local v5, isAvailable:Z
    :goto_5b
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v5}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 778
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 779
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 780
    iget-object v7, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 768
    .end local v4           #hasRemote:Z
    .end local v5           #isAvailable:Z
    :cond_74
    const/4 v4, 0x0

    goto :goto_39

    .line 775
    .restart local v4       #hasRemote:Z
    :cond_76
    const/4 v5, 0x0

    goto :goto_5b
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 8
    .parameter "cursor"

    .prologue
    .line 1007
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz p1, :cond_e

    .line 1008
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1009
    const/4 p1, 0x0

    .line 1012
    :cond_e
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$900(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    if-eq p1, v4, :cond_47

    .line 1013
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$900(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 1014
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$900(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChangeObserver:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChangeObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1016
    :cond_29
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #setter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v4, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$902(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1017
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$900(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 1018
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$900(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChangeObserver:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChangeObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1019
    invoke-direct {p0, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1021
    :cond_44
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1023
    :cond_47
    if-nez p1, :cond_6e

    .line 1025
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1026
    .local v1, children:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1027
    .local v0, child:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;

    .line 1028
    .local v2, foo:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    invoke-virtual {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->dispose()V

    goto :goto_53

    .line 1030
    .end local v0           #child:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;>;"
    .end local v2           #foo:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    :cond_69
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1032
    .end local v1           #children:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6e
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 22
    .parameter "groupCursor"

    .prologue
    .line 919
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 920
    .local v10, genreId:J
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 921
    .local v4, genreName:J
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 922
    .local v3, groupPosition:I
    invoke-static {v10, v11}, Lcom/google/android/music/store/MusicContent$Genres;->getAlbumsOfGenreUri(J)Landroid/net/Uri;

    move-result-object v13

    .line 923
    .local v13, uri:Landroid/net/Uri;
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 924
    .local v6, groupHasLocal:J
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 925
    .local v8, groupHasRemote:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    sget-object v14, Lcom/google/android/music/GenreAlbumBrowserActivity$AlbumQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$3;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;IJJJJ)V

    move-object/from16 v18, v1

    invoke-static/range {v12 .. v18}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/MusicUtils$QueryCallback;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/Cursor;

    .line 993
    .local v19, c:Landroid/database/Cursor;
    return-object v19
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    const-wide/16 v6, -0x1

    .line 723
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 724
    .local v1, v:Landroid/view/View;
    new-instance v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    .line 725
    .local v2, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    const/4 v3, 0x2

    iput v3, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->type:I

    .line 726
    const v3, 0x7f10003d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 727
    const v3, 0x7f10003e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 728
    const v3, 0x7f10004e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 729
    iget-object v3, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$2;

    invoke-direct {v4, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$2;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    iget-object v3, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v4, Lcom/google/android/music/FadingColorDrawable;

    iget-object v5, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    invoke-direct {v4, p1, v5}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 735
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v3

    if-eqz v3, :cond_a7

    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v3}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/MusicExpandableListView;->isFastScrollAlwaysVisible()Z

    move-result v3

    if-eqz v3, :cond_a7

    const/4 v0, 0x1

    .line 737
    .local v0, fastScroll:Z
    :goto_58
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$500(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10001d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v3, v4, v5, v0}, Lcom/google/android/music/MusicUtils;->adjustComboBoxPadding(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/res/Resources;Landroid/view/View;Z)V

    .line 740
    const v3, 0x7f100057

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/PlayingIndicator;

    iput-object v3, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 741
    const v3, 0x7f10000f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v3, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 742
    new-instance v3, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {v3, v4}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v3, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    .line 743
    iget-object v3, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v4, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v3, v4}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    const v3, 0x7f10001c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v3, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 745
    iput-wide v6, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    .line 746
    iput-wide v6, v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    .line 747
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 748
    return-object v1

    .line 735
    .end local v0           #fastScroll:Z
    :cond_a7
    const/4 v0, 0x0

    goto :goto_58
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    .line 685
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 686
    .local v3, v:Landroid/view/View;
    const v5, 0x7f10001c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 687
    .local v1, iv:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 688
    .local v2, p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, -0x2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 689
    const/4 v5, -0x2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 690
    new-instance v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    invoke-direct {v4, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    .line 691
    .local v4, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    const/4 v5, 0x1

    iput v5, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->type:I

    .line 692
    const v5, 0x7f10003d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v5, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 693
    const v5, 0x7f10003e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v5, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 694
    iget-object v5, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 695
    const v5, 0x7f10004e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 696
    iget-object v5, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$1;

    invoke-direct {v6, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$1;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    iget-object v5, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v6, Lcom/google/android/music/FadingColorDrawable;

    iget-object v7, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    invoke-direct {v6, p1, v7}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 702
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v5

    if-eqz v5, :cond_ca

    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v5}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/MusicExpandableListView;->isFastScrollAlwaysVisible()Z

    move-result v5

    if-eqz v5, :cond_ca

    const/4 v0, 0x1

    .line 704
    .local v0, fastScroll:Z
    :goto_70
    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v5}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$500(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-virtual {v6}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10001d

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v5, v6, v7, v0}, Lcom/google/android/music/MusicUtils;->adjustComboBoxPadding(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/res/Resources;Landroid/view/View;Z)V

    .line 707
    const v5, 0x7f100057

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/PlayingIndicator;

    iput-object v5, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 708
    const v5, 0x7f10000f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v5, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 709
    new-instance v5, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    iget-object v6, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {v5, v6}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v5, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    .line 710
    iget-object v5, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v6, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v5, v6}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    const v5, 0x7f10001c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v5, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 712
    iget-object v5, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 713
    const-wide/16 v5, -0x1

    iput-wide v5, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    .line 714
    const-wide/16 v5, -0x1

    iput-wide v5, v4, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    .line 715
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 716
    return-object v3

    .line 702
    .end local v0           #fastScroll:Z
    :cond_ca
    const/4 v0, 0x0

    goto :goto_70
.end method

.method public onGroupCollapsed(I)V
    .registers 7
    .parameter "groupPosition"

    .prologue
    .line 998
    invoke-virtual {p0, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getGroupId(I)J

    move-result-wide v1

    .line 999
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;

    .line 1000
    .local v0, cursor:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    if-eqz v0, :cond_15

    .line 1001
    invoke-virtual {v0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->dispose()V

    .line 1003
    :cond_15
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1050
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 1036
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1037
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_1d

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_18

    :cond_e
    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1040
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1045
    :goto_1c
    return-object v0

    .line 1042
    :cond_1d
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #calls: Lcom/google/android/music/GenreAlbumBrowserActivity;->getGenreCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1000(Lcom/google/android/music/GenreAlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1043
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 1044
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraintIsValid:Z

    goto :goto_1c
.end method
