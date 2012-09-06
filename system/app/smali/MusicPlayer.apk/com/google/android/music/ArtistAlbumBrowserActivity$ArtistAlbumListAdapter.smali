.class Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ArtistAlbumListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChangeObserver;,
        Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;,
        Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mActiveViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

.field private final mAlbumSongSeparator:Ljava/lang/String;

.field private final mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

.field private final mBuffer:Ljava/lang/StringBuilder;

.field private mChangeObserver:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChangeObserver;

.field private mChildCursorCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;",
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

.field private final mUnknownArtist:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/content/Context;Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V
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
    .line 677
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    .line 678
    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 633
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 634
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnavailableBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mBuffer:Ljava/lang/StringBuilder;

    .line 645
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 646
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs3:[Ljava/lang/Object;

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 649
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    .line 650
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    .line 653
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChangeObserver;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChangeObserver:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChangeObserver;

    .line 655
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    .line 679
    iput-object p3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    .line 681
    iput-object p2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mContext:Landroid/content/Context;

    .line 682
    invoke-direct {p0, p4}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 683
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 684
    const v0, 0x7f0d019d

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 685
    const v0, 0x7f0d0075

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 686
    const v0, 0x7f0d0074

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 687
    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->onContentChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Lcom/google/android/music/ArtistAlbumBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

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

    .line 1076
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$800(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->hasCount(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1078
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreExpandedGroups:[I
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$1000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)[I

    move-result-object v4

    if-eqz v4, :cond_33

    .line 1079
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreExpandedGroups:[I
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$1000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1d
    if-ge v2, v3, :cond_2d

    aget v1, v0, v2

    .line 1080
    .local v1, groupPos:I
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/music/MusicExpandableListView;->expandGroup(I)Z

    .line 1079
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1082
    .end local v1           #groupPos:I
    :cond_2d
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreExpandedGroups:[I
    invoke-static {v4, v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$1002(Lcom/google/android/music/ArtistAlbumBrowserActivity;[I)[I

    .line 1084
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_33
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$1100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)I

    move-result v4

    if-eq v4, v6, :cond_4f

    .line 1085
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$1100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/music/MusicExpandableListView;->setSelection(I)V

    .line 1086
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #setter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v4, v6}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$1102(Lcom/google/android/music/ArtistAlbumBrowserActivity;I)I

    .line 1089
    :cond_4f
    return-void
.end method

.method private updateSelectedStatus(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;)V
    .registers 11
    .parameter "vh"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 777
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    if-nez v2, :cond_b

    .line 809
    :cond_a
    :goto_a
    return-void

    .line 780
    :cond_b
    iget v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    iget-wide v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    .line 784
    :cond_18
    iget-boolean v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->hasRemote:Z

    if-eqz v2, :cond_63

    .line 786
    iget v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->type:I

    if-ne v2, v7, :cond_4b

    .line 787
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->isArtistSelected(J)Ljava/lang/Boolean;

    move-result-object v0

    .line 793
    .local v0, selected:Ljava/lang/Boolean;
    :goto_2c
    if-eqz v0, :cond_5a

    .line 794
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 799
    .local v1, showAsKeptOn:Z
    :goto_32
    iget-object v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v1}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 800
    if-nez v1, :cond_5d

    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 801
    iget-object v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v8}, Lcom/google/android/music/KeepOnCheckBox;->setCheckBoxEnabled(Z)V

    goto :goto_a

    .line 789
    .end local v0           #selected:Ljava/lang/Boolean;
    .end local v1           #showAsKeptOn:Z
    :cond_4b
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    iget-wide v5, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;

    move-result-object v0

    .restart local v0       #selected:Ljava/lang/Boolean;
    goto :goto_2c

    .line 796
    :cond_5a
    iget-boolean v1, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->isKeptInDb:Z

    .restart local v1       #showAsKeptOn:Z
    goto :goto_32

    .line 803
    :cond_5d
    iget-object v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v7}, Lcom/google/android/music/KeepOnCheckBox;->setCheckBoxEnabled(Z)V

    goto :goto_a

    .line 806
    .end local v0           #selected:Ljava/lang/Boolean;
    .end local v1           #showAsKeptOn:Z
    :cond_63
    iget-object v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v7}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 807
    iget-object v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

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
    .line 863
    move-object/from16 v6, p3

    check-cast v6, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;

    .line 864
    .local v6, childCursor:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 866
    .local v14, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 867
    .local v12, name:Ljava/lang/String;
    move-object v2, v12

    .line 868
    .local v2, albumDisplayname:Ljava/lang/String;
    invoke-static {v12}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v13

    .line 869
    .local v13, unknown:Z
    if-eqz v13, :cond_1c

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 872
    :cond_1c
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v15, v2}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    const/4 v15, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 876
    .local v5, artistDisplayname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v15}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$600(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Z

    move-result v15

    if-nez v15, :cond_3b

    const/4 v15, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz v15, :cond_da

    :cond_3b
    const/4 v10, 0x1

    .line 877
    .local v10, isAvailable:Z
    :goto_3c
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 878
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 880
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 881
    .local v3, albumId:J
    const/4 v15, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz v15, :cond_dd

    const/4 v15, 0x1

    :goto_5f
    iput-boolean v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->hasRemote:Z

    .line 882
    const/4 v15, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_df

    const/4 v15, 0x1

    :goto_6b
    iput-boolean v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->isKeptInDb:Z

    .line 883
    iput-wide v3, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    .line 884
    iget-wide v15, v6, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->mArtistId:J

    iput-wide v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    .line 885
    iget-object v11, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 887
    .local v11, iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    const-wide/16 v15, -0x1

    cmp-long v15, v3, v15

    if-nez v15, :cond_e1

    .line 888
    invoke-virtual {v11, v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAllSongs(Ljava/lang/String;)V

    .line 889
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 890
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 898
    :goto_89
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v7

    .line 900
    .local v7, currentalbumid:J
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    iget-wide v0, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v3, v4, v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->setAlbumId(JJ)V

    .line 902
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v15}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v9

    .line 903
    .local v9, inManageMusicMode:Z
    if-nez v9, :cond_104

    const-wide/16 v15, -0x1

    cmp-long v15, v3, v15

    if-eqz v15, :cond_104

    cmp-long v15, v7, v3

    if-nez v15, :cond_104

    .line 905
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 910
    :goto_b7
    if-eqz v9, :cond_114

    .line 911
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->updateSelectedStatus(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;)V

    .line 912
    const-wide/16 v15, -0x1

    cmp-long v15, v3, v15

    if-nez v15, :cond_10c

    .line 913
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 917
    :goto_cb
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 922
    :goto_d2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v15, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 923
    return-void

    .line 876
    .end local v3           #albumId:J
    .end local v7           #currentalbumid:J
    .end local v9           #inManageMusicMode:Z
    .end local v10           #isAvailable:Z
    .end local v11           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_da
    const/4 v10, 0x0

    goto/16 :goto_3c

    .line 881
    .restart local v3       #albumId:J
    .restart local v10       #isAvailable:Z
    :cond_dd
    const/4 v15, 0x0

    goto :goto_5f

    .line 882
    :cond_df
    const/4 v15, 0x0

    goto :goto_6b

    .line 892
    .restart local v11       #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_e1
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v11, v3, v4, v15, v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 893
    if-eqz v10, :cond_ff

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

    :goto_ef
    invoke-virtual {v11, v15}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 894
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 895
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v15, v5}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_89

    .line 893
    :cond_ff
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnavailableBackground:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_ef

    .line 907
    .restart local v7       #currentalbumid:J
    .restart local v9       #inManageMusicMode:Z
    :cond_104
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto :goto_b7

    .line 915
    :cond_10c
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    goto :goto_cb

    .line 919
    :cond_114
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 920
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_d2
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .registers 17
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"

    .prologue
    .line 813
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 814
    .local v9, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const/4 v10, 0x0

    invoke-interface {p3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 816
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 859
    :goto_20
    return-void

    .line 822
    :cond_21
    const/4 v10, 0x1

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 823
    .local v0, artist:Ljava/lang/String;
    move-object v5, v0

    .line 824
    .local v5, displayartist:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v8

    .line 825
    .local v8, unknown:Z
    if-eqz v8, :cond_2f

    .line 826
    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 828
    :cond_2f
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v10, v5}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getCurrentArtistId()J

    move-result-wide v3

    .line 831
    .local v3, currentartistid:J
    const/4 v10, 0x0

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 832
    .local v1, artistid:J
    const/4 v10, 0x4

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_a3

    const/4 v10, 0x1

    :goto_45
    iput-boolean v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->hasRemote:Z

    .line 833
    const/4 v10, 0x2

    invoke-interface {p3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_a5

    const/4 v10, 0x1

    :goto_4f
    iput-boolean v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->isKeptInDb:Z

    .line 835
    iget-object v10, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v10}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v6

    .line 836
    .local v6, inManageMusicMode:Z
    if-nez v6, :cond_a7

    cmp-long v10, v3, v1

    if-nez v10, :cond_a7

    if-nez p4, :cond_a7

    .line 837
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 842
    :goto_69
    iput-wide v1, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    .line 843
    const-wide/16 v10, -0x1

    iput-wide v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    .line 844
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v10, v1, v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->setArtistId(J)V

    .line 846
    iget-object v10, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v10}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$600(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Z

    move-result v10

    if-nez v10, :cond_83

    const/4 v10, 0x3

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_af

    :cond_83
    const/4 v7, 0x1

    .line 847
    .local v7, isAvailable:Z
    :goto_84
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v7}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 849
    if-eqz v6, :cond_b1

    .line 850
    invoke-direct {p0, v9}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->updateSelectedStatus(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;)V

    .line 851
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 852
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 858
    :goto_9c
    iget-object v10, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 832
    .end local v6           #inManageMusicMode:Z
    .end local v7           #isAvailable:Z
    :cond_a3
    const/4 v10, 0x0

    goto :goto_45

    .line 833
    :cond_a5
    const/4 v10, 0x0

    goto :goto_4f

    .line 839
    .restart local v6       #inManageMusicMode:Z
    :cond_a7
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto :goto_69

    .line 846
    :cond_af
    const/4 v7, 0x0

    goto :goto_84

    .line 854
    .restart local v7       #isAvailable:Z
    :cond_b1
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 855
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9c
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 8
    .parameter "cursor"

    .prologue
    .line 1034
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz p1, :cond_e

    .line 1035
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1036
    const/4 p1, 0x0

    .line 1039
    :cond_e
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$800(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    if-eq p1, v4, :cond_47

    .line 1040
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$800(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 1041
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$800(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChangeObserver:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChangeObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1043
    :cond_29
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #setter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v4, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$802(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1044
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$800(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 1045
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$800(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChangeObserver:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChangeObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1046
    invoke-direct {p0, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1048
    :cond_44
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1050
    :cond_47
    if-nez p1, :cond_6e

    .line 1052
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1053
    .local v1, children:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;>;>;"
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

    .line 1054
    .local v0, child:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;

    .line 1055
    .local v2, foo:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
    invoke-virtual {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->dispose()V

    goto :goto_53

    .line 1057
    .end local v0           #child:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;>;"
    .end local v2           #foo:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
    :cond_69
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1059
    .end local v1           #children:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6e
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 21
    .parameter "groupCursor"

    .prologue
    .line 956
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 958
    .local v8, artistId:J
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_4c

    const/4 v10, 0x1

    .line 960
    .local v10, artistIsKeptOn:Z
    :goto_11
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 961
    .local v3, groupPosition:I
    invoke-static {v8, v9}, Lcom/google/android/music/store/MusicContent$Artists;->getAlbumsByArtistsUri(J)Landroid/net/Uri;

    move-result-object v12

    .line 962
    .local v12, uri:Landroid/net/Uri;
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 963
    .local v4, groupHasLocal:J
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 964
    .local v6, groupHasRemote:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    sget-object v13, Lcom/google/android/music/ArtistAlbumBrowserActivity$AlbumQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-instance v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$3;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;IJJJZ)V

    move-object/from16 v17, v1

    invoke-static/range {v11 .. v17}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/MusicUtils$QueryCallback;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/database/Cursor;

    .line 1020
    .local v18, c:Landroid/database/Cursor;
    return-object v18

    .line 958
    .end local v3           #groupPosition:I
    .end local v4           #groupHasLocal:J
    .end local v6           #groupHasRemote:J
    .end local v10           #artistIsKeptOn:Z
    .end local v12           #uri:Landroid/net/Uri;
    .end local v18           #c:Landroid/database/Cursor;
    :cond_4c
    const/4 v10, 0x0

    goto :goto_11
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    const-wide/16 v6, -0x1

    .line 738
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 739
    .local v1, v:Landroid/view/View;
    new-instance v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    .line 740
    .local v2, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const v3, 0x7f10003d

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 741
    const v3, 0x7f10003e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v3, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 742
    const v3, 0x7f10004e

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 743
    iget-object v3, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$2;

    invoke-direct {v4, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$2;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 748
    iget-object v3, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v4, Lcom/google/android/music/FadingColorDrawable;

    iget-object v5, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    invoke-direct {v4, p1, v5}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 749
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v3

    if-eqz v3, :cond_a7

    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v3}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/MusicExpandableListView;->isFastScrollAlwaysVisible()Z

    move-result v3

    if-eqz v3, :cond_a7

    const/4 v0, 0x1

    .line 751
    .local v0, fastScroll:Z
    :goto_55
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$500(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10001d

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v3, v4, v5, v0}, Lcom/google/android/music/MusicUtils;->adjustComboBoxPadding(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/res/Resources;Landroid/view/View;Z)V

    .line 754
    const v3, 0x7f100057

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/PlayingIndicator;

    iput-object v3, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 755
    const v3, 0x7f10000f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v3, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 756
    new-instance v3, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {v3, v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v3, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    .line 757
    iget-object v3, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v4, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v3, v4}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    const v3, 0x7f10001c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v3, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 759
    iput-wide v6, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    .line 760
    iput-wide v6, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    .line 761
    const/4 v3, 0x2

    iput v3, v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->type:I

    .line 762
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 763
    return-object v1

    .line 749
    .end local v0           #fastScroll:Z
    :cond_a7
    const/4 v0, 0x0

    goto :goto_55
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    .line 699
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 700
    .local v3, v:Landroid/view/View;
    const v5, 0x7f10001c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 701
    .local v1, iv:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 702
    .local v2, p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v5, -0x2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 703
    const/4 v5, -0x2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 704
    new-instance v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v4, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    .line 705
    .local v4, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const v5, 0x7f10003d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v5, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 706
    const v5, 0x7f10003e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v5, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 707
    iget-object v5, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 708
    const v5, 0x7f10004e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 709
    iget-object v5, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v6, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1;

    invoke-direct {v6, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    iget-object v5, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v6, Lcom/google/android/music/FadingColorDrawable;

    iget-object v7, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    invoke-direct {v6, p1, v7}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 715
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v5

    if-eqz v5, :cond_ca

    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/MusicExpandableListView;->isFastScrollAlwaysVisible()Z

    move-result v5

    if-eqz v5, :cond_ca

    const/4 v0, 0x1

    .line 718
    .local v0, fastScroll:Z
    :goto_6d
    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$500(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v6}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f10001d

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v5, v6, v7, v0}, Lcom/google/android/music/MusicUtils;->adjustComboBoxPadding(Lcom/google/android/music/jumper/MusicPreferences;Landroid/content/res/Resources;Landroid/view/View;Z)V

    .line 721
    const v5, 0x7f100057

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/PlayingIndicator;

    iput-object v5, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 722
    const v5, 0x7f10000f

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v5, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 723
    new-instance v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    iget-object v6, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {v5, v6}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v5, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    .line 724
    iget-object v5, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v6, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v5, v6}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    const v5, 0x7f10001c

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v5, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 726
    iget-object v5, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 727
    const-wide/16 v5, -0x1

    iput-wide v5, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    .line 728
    const-wide/16 v5, -0x1

    iput-wide v5, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    .line 729
    const/4 v5, 0x1

    iput v5, v4, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->type:I

    .line 730
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 731
    return-object v3

    .line 715
    .end local v0           #fastScroll:Z
    :cond_ca
    const/4 v0, 0x0

    goto :goto_6d
.end method

.method public onGroupCollapsed(I)V
    .registers 7
    .parameter "groupPosition"

    .prologue
    .line 1025
    invoke-virtual {p0, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getGroupId(I)J

    move-result-wide v1

    .line 1026
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;

    .line 1027
    .local v0, cursor:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
    if-eqz v0, :cond_15

    .line 1028
    invoke-virtual {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->dispose()V

    .line 1030
    :cond_15
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 768
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 769
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 1063
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1064
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_1d

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_18

    :cond_e
    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1067
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1072
    :goto_1c
    return-object v0

    .line 1069
    :cond_1d
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #calls: Lcom/google/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$900(Lcom/google/android/music/ArtistAlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1070
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 1071
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    goto :goto_1c
.end method

.method public updateAllOfflineSelectedStatuses()V
    .registers 4

    .prologue
    .line 772
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 773
    .local v1, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    invoke-direct {p0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->updateSelectedStatus(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;)V

    goto :goto_6

    .line 775
    .end local v1           #vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :cond_16
    return-void
.end method
