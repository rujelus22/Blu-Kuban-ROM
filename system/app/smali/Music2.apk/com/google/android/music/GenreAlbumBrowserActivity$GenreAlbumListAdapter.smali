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
    .line 678
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

    .line 679
    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 637
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 638
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mUnavailableBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mBuffer:Ljava/lang/StringBuilder;

    .line 645
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 646
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mFormatArgs3:[Ljava/lang/Object;

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraintIsValid:Z

    .line 650
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    .line 653
    new-instance v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChangeObserver;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChangeObserver:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChangeObserver;

    .line 655
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    .line 680
    iput-object p3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    .line 682
    iput-object p2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mContext:Landroid/content/Context;

    .line 683
    invoke-direct {p0, p4}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 684
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 685
    const v0, 0x7f0d0153

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 686
    const v0, 0x7f0d0065

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 687
    return-void
.end method

.method static synthetic access$1400(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->onContentChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 632
    invoke-direct {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->updateAllOfflineSelectedStatuses()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)Lcom/google/android/music/GenreAlbumBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 632
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 691
    return-void
.end method

.method private onContentChanged()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 1146
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->hasCount(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1148
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreExpandedGroups:[I
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1200(Lcom/google/android/music/GenreAlbumBrowserActivity;)[I

    move-result-object v4

    if-eqz v4, :cond_33

    .line 1149
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreExpandedGroups:[I
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1200(Lcom/google/android/music/GenreAlbumBrowserActivity;)[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1d
    if-ge v2, v3, :cond_2d

    aget v1, v0, v2

    .line 1150
    .local v1, groupPos:I
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/music/MusicExpandableListView;->expandGroup(I)Z

    .line 1149
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1152
    .end local v1           #groupPos:I
    :cond_2d
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreExpandedGroups:[I
    invoke-static {v4, v5}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1202(Lcom/google/android/music/GenreAlbumBrowserActivity;[I)[I

    .line 1154
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_33
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1300(Lcom/google/android/music/GenreAlbumBrowserActivity;)I

    move-result v4

    if-eq v4, v6, :cond_4f

    .line 1155
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v5}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1300(Lcom/google/android/music/GenreAlbumBrowserActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/music/MusicExpandableListView;->setSelection(I)V

    .line 1156
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #setter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v4, v6}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1302(Lcom/google/android/music/GenreAlbumBrowserActivity;I)I

    .line 1159
    :cond_4f
    return-void
.end method

.method private updateAllOfflineSelectedStatuses()V
    .registers 4

    .prologue
    .line 871
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

    .line 872
    .local v1, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    invoke-direct {p0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->updateOfflineSelectedStatus(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;)V

    goto :goto_6

    .line 874
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

    .line 877
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$500(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    if-nez v2, :cond_b

    .line 909
    :cond_a
    :goto_a
    return-void

    .line 880
    :cond_b
    iget v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->type:I

    if-eq v2, v7, :cond_a

    .line 883
    iget-wide v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    .line 887
    iget-object v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-boolean v3, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->hasRemote:Z

    invoke-virtual {v2, v3}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    .line 888
    iget-boolean v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->hasRemote:Z

    if-eqz v2, :cond_58

    .line 889
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$500(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    iget-wide v5, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;

    move-result-object v1

    .line 893
    .local v1, selected:Ljava/lang/Boolean;
    if-eqz v1, :cond_4f

    .line 894
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 899
    .local v0, keepOn:Z
    :goto_36
    iget-object v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v0}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 900
    if-nez v0, :cond_52

    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$500(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 901
    iget-object v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v8}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_a

    .line 896
    .end local v0           #keepOn:Z
    :cond_4f
    iget-boolean v0, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->isKeptInDb:Z

    .restart local v0       #keepOn:Z
    goto :goto_36

    .line 903
    :cond_52
    iget-object v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v7}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_a

    .line 906
    .end local v0           #keepOn:Z
    .end local v1           #selected:Ljava/lang/Boolean;
    :cond_58
    iget-object v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v7}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 907
    iget-object v2, p1, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v8}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

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
    .line 806
    move-object/from16 v6, p3

    check-cast v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;

    .line 807
    .local v6, childCursor:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    .line 809
    .local v14, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 810
    .local v12, name:Ljava/lang/String;
    move-object v2, v12

    .line 811
    .local v2, albumDisplayname:Ljava/lang/String;
    invoke-static {v12}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v13

    .line 812
    .local v13, unknown:Z
    if-eqz v13, :cond_1c

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 815
    :cond_1c
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v15, v2}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    const/4 v15, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 819
    .local v5, artistDisplayname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v15}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$700(Lcom/google/android/music/GenreAlbumBrowserActivity;)Z

    move-result v15

    if-nez v15, :cond_3b

    const/4 v15, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz v15, :cond_da

    :cond_3b
    const/4 v10, 0x1

    .line 820
    .local v10, isAvailable:Z
    :goto_3c
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 821
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 823
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 824
    .local v3, albumId:J
    const/4 v15, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz v15, :cond_dd

    const/4 v15, 0x1

    :goto_5f
    iput-boolean v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->hasRemote:Z

    .line 825
    iput-wide v3, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    .line 826
    iget-wide v15, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->mGenreId:J

    iput-wide v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    .line 827
    iget-object v11, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 829
    .local v11, iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    const-wide/16 v15, -0x1

    cmp-long v15, v3, v15

    if-nez v15, :cond_df

    .line 831
    invoke-virtual {v11, v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAllSongs(Ljava/lang/String;)V

    .line 832
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 833
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 841
    :goto_7d
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v7

    .line 843
    .local v7, currentalbumid:J
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    iget-wide v0, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v3, v4, v0, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->setAlbumId(JJ)V

    .line 845
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-virtual {v15}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v9

    .line 846
    .local v9, inManageMusicMode:Z
    if-nez v9, :cond_102

    const-wide/16 v15, -0x1

    cmp-long v15, v3, v15

    if-eqz v15, :cond_102

    cmp-long v15, v7, v3

    if-nez v15, :cond_102

    .line 848
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 853
    :goto_ab
    const/4 v15, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_10a

    const/4 v15, 0x1

    :goto_b5
    iput-boolean v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->isKeptInDb:Z

    .line 855
    if-eqz v9, :cond_114

    .line 856
    const-wide/16 v15, -0x1

    cmp-long v15, v3, v15

    if-nez v15, :cond_10c

    .line 857
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 861
    :goto_c6
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->updateOfflineSelectedStatus(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;)V

    .line 862
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 867
    :goto_d2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v15, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 868
    return-void

    .line 819
    .end local v3           #albumId:J
    .end local v7           #currentalbumid:J
    .end local v9           #inManageMusicMode:Z
    .end local v10           #isAvailable:Z
    .end local v11           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_da
    const/4 v10, 0x0

    goto/16 :goto_3c

    .line 824
    .restart local v3       #albumId:J
    .restart local v10       #isAvailable:Z
    :cond_dd
    const/4 v15, 0x0

    goto :goto_5f

    .line 835
    .restart local v11       #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_df
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v11, v3, v4, v15, v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 836
    if-eqz v10, :cond_fd

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

    :goto_ed
    invoke-virtual {v11, v15}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 837
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 838
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v15, v5}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7d

    .line 836
    :cond_fd
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mUnavailableBackground:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_ed

    .line 850
    .restart local v7       #currentalbumid:J
    .restart local v9       #inManageMusicMode:Z
    :cond_102
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto :goto_ab

    .line 853
    :cond_10a
    const/4 v15, 0x0

    goto :goto_b5

    .line 859
    :cond_10c
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    goto :goto_c6

    .line 864
    :cond_114
    iget-object v15, v14, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 865
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
    .line 775
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    .line 776
    .local v6, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 778
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 802
    :goto_20
    return-void

    .line 784
    :cond_21
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 785
    .local v1, genre:Ljava/lang/String;
    move-object v0, v1

    .line 786
    .local v0, displayGenre:Ljava/lang/String;
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v7, v0}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 789
    .local v2, genreId:J
    const/4 v7, 0x3

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_74

    const/4 v4, 0x1

    .line 790
    .local v4, hasRemote:Z
    :goto_39
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 792
    iput-wide v2, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    .line 793
    const-wide/16 v7, -0x1

    iput-wide v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    .line 794
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v7, v2, v3}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->setGenreId(J)V

    .line 796
    iget-object v7, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v7}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$700(Lcom/google/android/music/GenreAlbumBrowserActivity;)Z

    move-result v7

    if-nez v7, :cond_5a

    const/4 v7, 0x2

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_76

    :cond_5a
    const/4 v5, 0x1

    .line 797
    .local v5, isAvailable:Z
    :goto_5b
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v5}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 799
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 800
    iget-object v7, v6, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 801
    iget-object v7, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 789
    .end local v4           #hasRemote:Z
    .end local v5           #isAvailable:Z
    :cond_74
    const/4 v4, 0x0

    goto :goto_39

    .line 796
    .restart local v4       #hasRemote:Z
    :cond_76
    const/4 v5, 0x0

    goto :goto_5b
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 8
    .parameter "cursor"

    .prologue
    .line 1028
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz p1, :cond_e

    .line 1029
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1030
    const/4 p1, 0x0

    .line 1033
    :cond_e
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    if-eq p1, v4, :cond_47

    .line 1034
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 1035
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChangeObserver:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChangeObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1037
    :cond_29
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #setter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v4, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1002(Lcom/google/android/music/GenreAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1038
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 1039
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mGenreCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChangeObserver:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChangeObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1040
    invoke-direct {p0, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1042
    :cond_44
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1044
    :cond_47
    if-nez p1, :cond_6e

    .line 1046
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1047
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

    .line 1048
    .local v0, child:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;

    .line 1049
    .local v2, foo:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    invoke-virtual {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->dispose()V

    goto :goto_53

    .line 1051
    .end local v0           #child:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;>;"
    .end local v2           #foo:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    :cond_69
    iget-object v4, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1053
    .end local v1           #children:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6e
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 22
    .parameter "groupCursor"

    .prologue
    .line 940
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 941
    .local v10, genreId:J
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 942
    .local v4, genreName:J
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 943
    .local v3, groupPosition:I
    invoke-static {v10, v11}, Lcom/google/android/music/store/MusicContent$Genres;->getAlbumsOfGenreUri(J)Landroid/net/Uri;

    move-result-object v13

    .line 944
    .local v13, uri:Landroid/net/Uri;
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 945
    .local v6, groupHasLocal:J
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 946
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

    .line 1013
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/Cursor;

    .line 1014
    .local v19, c:Landroid/database/Cursor;
    return-object v19
.end method

.method public getRepresentativeAlbumId()J
    .registers 30

    .prologue
    .line 1070
    const-wide/16 v9, -0x1

    .line 1071
    .local v9, albumId:J
    const-wide/16 v16, -0x1

    .line 1073
    .local v16, genreId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v20

    .line 1074
    .local v20, listView:Landroid/widget/ExpandableListView;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v24

    .line 1075
    .local v24, top:I
    invoke-virtual/range {v20 .. v20}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v11

    .line 1076
    .local v11, bottom:I
    sub-int v2, v11, v24

    div-int/lit8 v2, v2, 0x2

    add-int v26, v2, v24

    .line 1078
    .local v26, viewIndex:I
    const/16 v25, 0x0

    .line 1079
    .local v25, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v21

    .line 1080
    .local v21, packed:J
    invoke-static/range {v21 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v23

    .line 1082
    .local v23, ppType:I
    if-nez v23, :cond_a1

    .line 1083
    invoke-static/range {v21 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v18

    .line 1085
    .local v18, groupId:I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_55

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;
    invoke-static {v2}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$100(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;

    move-result-object v8

    .line 1087
    .local v8, adapter:Landroid/widget/CursorTreeAdapter;
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/CursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_55

    .line 1088
    const/4 v2, 0x0

    const/4 v5, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v2, v5, v1}, Landroid/widget/CursorTreeAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 1089
    .local v19, groupView:Landroid/view/View;
    if-eqz v19, :cond_55

    .line 1090
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    .end local v25           #vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    check-cast v25, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    .line 1109
    .end local v8           #adapter:Landroid/widget/CursorTreeAdapter;
    .end local v18           #groupId:I
    .end local v19           #groupView:Landroid/view/View;
    .restart local v25       #vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    :cond_55
    :goto_55
    if-eqz v25, :cond_61

    .line 1110
    move-object/from16 v0, v25

    iget-wide v9, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    .line 1111
    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    move-wide/from16 v16, v0

    .line 1113
    :cond_61
    const-wide/16 v5, -0x1

    cmp-long v2, v9, v5

    if-nez v2, :cond_a0

    const-wide/16 v5, 0x0

    cmp-long v2, v16, v5

    if-ltz v2, :cond_a0

    .line 1114
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    .line 1117
    .local v4, cols:[Ljava/lang/String;
    invoke-static/range {v16 .. v17}, Lcom/google/android/music/store/MusicContent$Genres;->getAlbumsOfGenreUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 1118
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1121
    .local v12, c:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 1122
    .local v14, childPos:I
    :try_start_85
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v13

    .line 1123
    .local v13, childCount:I
    if-lez v13, :cond_97

    .line 1125
    const/4 v2, 0x1

    if-le v13, v2, :cond_8f

    .line 1126
    const/4 v14, 0x1

    .line 1128
    :cond_8f
    invoke-interface {v12, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1129
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_96
    .catchall {:try_start_85 .. :try_end_96} :catchall_d0

    move-result-wide v9

    .line 1132
    :cond_97
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1134
    if-eqz v25, :cond_a0

    .line 1135
    move-object/from16 v0, v25

    iput-wide v9, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    .line 1138
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #cols:[Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #childCount:I
    .end local v14           #childPos:I
    :cond_a0
    return-wide v9

    .line 1095
    :cond_a1
    sub-int v26, v26, v24

    .line 1096
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1097
    .local v15, childView:Landroid/view/View;
    if-eqz v15, :cond_55

    .line 1098
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    .end local v25           #vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    check-cast v25, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    .line 1099
    .restart local v25       #vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    if-eqz v25, :cond_55

    move-object/from16 v0, v25

    iget-wide v5, v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    const-wide/16 v27, -0x1

    cmp-long v2, v5, v27

    if-nez v2, :cond_55

    .line 1102
    add-int/lit8 v2, v26, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 1103
    if-eqz v15, :cond_55

    .line 1104
    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    .end local v25           #vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    check-cast v25, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    .restart local v25       #vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    goto :goto_55

    .line 1132
    .end local v15           #childView:Landroid/view/View;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #cols:[Ljava/lang/String;
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v14       #childPos:I
    :catchall_d0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    .line 740
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 741
    .local v4, v:Landroid/view/View;
    new-instance v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    invoke-direct {v5, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    .line 742
    .local v5, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    const/4 v6, 0x2

    iput v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->type:I

    .line 743
    const v6, 0x7f10003d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 744
    const v6, 0x7f10003e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 745
    const v6, 0x7f100022

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 746
    iget-object v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$2;

    invoke-direct {v7, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$2;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    iget-object v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v7, Lcom/google/android/music/FadingColorDrawable;

    iget-object v8, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    invoke-direct {v7, p1, v8}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 752
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v6

    if-eqz v6, :cond_be

    iget-object v6, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v6}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/music/MusicExpandableListView;->isFastScrollAlwaysVisible()Z

    move-result v6

    if-eqz v6, :cond_be

    const/4 v0, 0x1

    .line 754
    .local v0, fastScroll:Z
    :goto_56
    iget-object v6, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-virtual {v6}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09006a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 755
    .local v2, padding:I
    if-eqz v0, :cond_c0

    move v1, v2

    .line 756
    .local v1, left:I
    :goto_67
    if-eqz v0, :cond_c2

    const/4 v3, 0x0

    .line 757
    .local v3, right:I
    :goto_6a
    iget-object v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v7, v3, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 759
    const v6, 0x7f100061

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/PlayingIndicator;

    iput-object v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 760
    const v6, 0x7f10000e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 761
    iget-object v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v7, v3, v8}, Lcom/google/android/music/KeepOnCheckBox;->setPadding(IIII)V

    .line 762
    new-instance v6, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    iget-object v7, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {v6, v7}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    .line 763
    iget-object v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v7, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v6, v7}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 764
    const v6, 0x7f100050

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 765
    iget-object v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/android/music/AsyncAlbumArtImageView;->setPadding(IIII)V

    .line 766
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    .line 767
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    .line 768
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 769
    return-object v4

    .line 752
    .end local v0           #fastScroll:Z
    .end local v1           #left:I
    .end local v2           #padding:I
    .end local v3           #right:I
    :cond_be
    const/4 v0, 0x0

    goto :goto_56

    .line 755
    .restart local v0       #fastScroll:Z
    .restart local v2       #padding:I
    :cond_c0
    const/4 v1, 0x0

    goto :goto_67

    .restart local v1       #left:I
    :cond_c2
    move v3, v2

    .line 756
    goto :goto_6a
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    .line 699
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 700
    .local v6, v:Landroid/view/View;
    const v8, 0x7f100050

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 701
    .local v1, iv:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 702
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, -0x2

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 703
    const/4 v8, -0x2

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 704
    new-instance v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;

    invoke-direct {v7, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    .line 705
    .local v7, vh:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;
    const/4 v8, 0x1

    iput v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->type:I

    .line 706
    const v8, 0x7f10003d

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 707
    const v8, 0x7f10003e

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 708
    iget-object v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 709
    const v8, 0x7f100022

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 710
    iget-object v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v9, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$1;

    invoke-direct {v9, p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$1;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    iget-object v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v9, Lcom/google/android/music/FadingColorDrawable;

    iget-object v10, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    invoke-direct {v9, p1, v10}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 716
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v8

    if-eqz v8, :cond_d6

    iget-object v8, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/GenreAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v8}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$000(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/music/MusicExpandableListView;->isFastScrollAlwaysVisible()Z

    move-result v8

    if-eqz v8, :cond_d6

    const/4 v0, 0x1

    .line 718
    .local v0, fastScroll:Z
    :goto_70
    iget-object v8, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-virtual {v8}, Lcom/google/android/music/GenreAlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09006a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    .line 719
    .local v4, padding:I
    if-eqz v0, :cond_d8

    move v2, v4

    .line 720
    .local v2, left:I
    :goto_81
    if-eqz v0, :cond_da

    const/4 v5, 0x0

    .line 721
    .local v5, right:I
    :goto_84
    iget-object v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v5, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 723
    const v8, 0x7f100061

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/PlayingIndicator;

    iput-object v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 724
    const v8, 0x7f10000e

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 725
    iget-object v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v5, v10}, Lcom/google/android/music/KeepOnCheckBox;->setPadding(IIII)V

    .line 726
    new-instance v8, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    iget-object v9, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {v8, v9}, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V

    iput-object v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    .line 727
    iget-object v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v9, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v8, v9}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    const v8, 0x7f100050

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 729
    iget-object v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 730
    const-wide/16 v8, -0x1

    iput-wide v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->genreId:J

    .line 731
    const-wide/16 v8, -0x1

    iput-wide v8, v7, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ViewHolder;->albumId:J

    .line 732
    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 733
    return-object v6

    .line 716
    .end local v0           #fastScroll:Z
    .end local v2           #left:I
    .end local v4           #padding:I
    .end local v5           #right:I
    :cond_d6
    const/4 v0, 0x0

    goto :goto_70

    .line 719
    .restart local v0       #fastScroll:Z
    .restart local v4       #padding:I
    :cond_d8
    const/4 v2, 0x0

    goto :goto_81

    .restart local v2       #left:I
    :cond_da
    move v5, v4

    .line 720
    goto :goto_84
.end method

.method public onGroupCollapsed(I)V
    .registers 7
    .parameter "groupPosition"

    .prologue
    .line 1019
    invoke-virtual {p0, p1}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getGroupId(I)J

    move-result-wide v1

    .line 1020
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;

    .line 1021
    .local v0, cursor:Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;
    if-eqz v0, :cond_15

    .line 1022
    invoke-virtual {v0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter$ChildCursorWrapper;->dispose()V

    .line 1024
    :cond_15
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1143
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 1057
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1058
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

    .line 1061
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1066
    :goto_1c
    return-object v0

    .line 1063
    :cond_1d
    iget-object v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mActivity:Lcom/google/android/music/GenreAlbumBrowserActivity;

    #calls: Lcom/google/android/music/GenreAlbumBrowserActivity;->getGenreCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$1100(Lcom/google/android/music/GenreAlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1064
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 1065
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$GenreAlbumListAdapter;->mConstraintIsValid:Z

    goto :goto_1c
.end method
