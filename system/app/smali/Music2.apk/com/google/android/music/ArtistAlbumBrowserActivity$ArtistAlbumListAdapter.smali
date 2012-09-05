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
    .line 696
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

    .line 697
    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 652
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 653
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x8000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnavailableBackground:Landroid/graphics/drawable/ColorDrawable;

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mBuffer:Ljava/lang/StringBuilder;

    .line 664
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs:[Ljava/lang/Object;

    .line 665
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mFormatArgs3:[Ljava/lang/Object;

    .line 667
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 668
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    .line 669
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    .line 672
    new-instance v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChangeObserver;

    invoke-direct {v0, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChangeObserver;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChangeObserver:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChangeObserver;

    .line 674
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    .line 698
    iput-object p3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    .line 700
    iput-object p2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mContext:Landroid/content/Context;

    .line 701
    invoke-direct {p0, p4}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 702
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mResources:Landroid/content/res/Resources;

    .line 703
    const v0, 0x7f0d0153

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mAlbumSongSeparator:Ljava/lang/String;

    .line 704
    const v0, 0x7f0d0065

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 705
    const v0, 0x7f0d0064

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 706
    return-void
.end method

.method static synthetic access$1300(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->onContentChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Lcom/google/android/music/ArtistAlbumBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    return-object v0
.end method

.method private getColumnIndices(Landroid/database/Cursor;)V
    .registers 2
    .parameter "cursor"

    .prologue
    .line 710
    return-void
.end method

.method private onContentChanged()V
    .registers 8

    .prologue
    const/4 v6, -0x1

    .line 1175
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$900(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->hasCount(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1177
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreExpandedGroups:[I
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$1100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)[I

    move-result-object v4

    if-eqz v4, :cond_33

    .line 1178
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreExpandedGroups:[I
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$1100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1d
    if-ge v2, v3, :cond_2d

    aget v1, v0, v2

    .line 1179
    .local v1, groupPos:I
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$300(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/music/MusicExpandableListView;->expandGroup(I)Z

    .line 1178
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1181
    .end local v1           #groupPos:I
    :cond_2d
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    const/4 v5, 0x0

    #setter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreExpandedGroups:[I
    invoke-static {v4, v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$1102(Lcom/google/android/music/ArtistAlbumBrowserActivity;[I)[I

    .line 1183
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_33
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$1200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)I

    move-result v4

    if-eq v4, v6, :cond_4f

    .line 1184
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$300(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v5}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$1200(Lcom/google/android/music/ArtistAlbumBrowserActivity;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/android/music/MusicExpandableListView;->setSelection(I)V

    .line 1185
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #setter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mRestoreScrollPos:I
    invoke-static {v4, v6}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$1202(Lcom/google/android/music/ArtistAlbumBrowserActivity;I)I

    .line 1188
    :cond_4f
    return-void
.end method

.method private updateSelectedStatus(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;)V
    .registers 11
    .parameter "vh"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 802
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$400(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    if-nez v2, :cond_b

    .line 834
    :cond_a
    :goto_a
    return-void

    .line 805
    :cond_b
    iget v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_18

    iget-wide v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_a

    .line 809
    :cond_18
    iget-boolean v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->hasRemote:Z

    if-eqz v2, :cond_63

    .line 811
    iget v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->type:I

    if-ne v2, v7, :cond_4b

    .line 812
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$400(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->isArtistSelected(J)Ljava/lang/Boolean;

    move-result-object v0

    .line 818
    .local v0, selected:Ljava/lang/Boolean;
    :goto_2c
    if-eqz v0, :cond_5a

    .line 819
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 824
    .local v1, showAsKeptOn:Z
    :goto_32
    iget-object v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v1}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 825
    if-nez v1, :cond_5d

    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$400(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/OfflineMusicManager;->isOutOfSpace()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 826
    iget-object v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v8}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_a

    .line 814
    .end local v0           #selected:Ljava/lang/Boolean;
    .end local v1           #showAsKeptOn:Z
    :cond_4b
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;
    invoke-static {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$400(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    iget-wide v3, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    iget-wide v5, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;

    move-result-object v0

    .restart local v0       #selected:Ljava/lang/Boolean;
    goto :goto_2c

    .line 821
    :cond_5a
    iget-boolean v1, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->isKeptInDb:Z

    .restart local v1       #showAsKeptOn:Z
    goto :goto_32

    .line 828
    :cond_5d
    iget-object v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v7}, Lcom/google/android/music/KeepOnCheckBox;->setCheckbBoxEnabled(Z)V

    goto :goto_a

    .line 831
    .end local v0           #selected:Ljava/lang/Boolean;
    .end local v1           #showAsKeptOn:Z
    :cond_63
    iget-object v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    invoke-virtual {v2, v7}, Lcom/google/android/music/KeepOnCheckBox;->setChecked(Z)V

    .line 832
    iget-object v2, p1, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

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
    .line 887
    move-object/from16 v6, p3

    check-cast v6, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;

    .line 888
    .local v6, childCursor:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 890
    .local v14, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 891
    .local v12, name:Ljava/lang/String;
    move-object v2, v12

    .line 892
    .local v2, albumDisplayname:Ljava/lang/String;
    invoke-static {v12}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v13

    .line 893
    .local v13, unknown:Z
    if-eqz v13, :cond_1c

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownAlbum:Ljava/lang/String;

    .line 896
    :cond_1c
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v15, v2}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 898
    const/4 v15, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 900
    .local v5, artistDisplayname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v15}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$700(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Z

    move-result v15

    if-nez v15, :cond_3b

    const/4 v15, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz v15, :cond_da

    :cond_3b
    const/4 v10, 0x1

    .line 901
    .local v10, isAvailable:Z
    :goto_3c
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 902
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 904
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 905
    .local v3, albumId:J
    const/4 v15, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz v15, :cond_dd

    const/4 v15, 0x1

    :goto_5f
    iput-boolean v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->hasRemote:Z

    .line 906
    const/4 v15, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-nez v15, :cond_df

    const/4 v15, 0x1

    :goto_6b
    iput-boolean v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->isKeptInDb:Z

    .line 907
    iput-wide v3, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    .line 908
    iget-wide v15, v6, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->mArtistId:J

    iput-wide v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    .line 909
    iget-object v11, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 911
    .local v11, iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    const-wide/16 v15, -0x1

    cmp-long v15, v3, v15

    if-nez v15, :cond_e1

    .line 912
    invoke-virtual {v11, v5}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAllSongs(Ljava/lang/String;)V

    .line 913
    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 914
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 922
    :goto_89
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getCurrentAlbumId()J

    move-result-wide v7

    .line 924
    .local v7, currentalbumid:J
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    iget-wide v0, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v3, v4, v0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->setAlbumId(JJ)V

    .line 926
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v15}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v9

    .line 927
    .local v9, inManageMusicMode:Z
    if-nez v9, :cond_104

    const-wide/16 v15, -0x1

    cmp-long v15, v3, v15

    if-eqz v15, :cond_104

    cmp-long v15, v7, v3

    if-nez v15, :cond_104

    .line 929
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 934
    :goto_b7
    if-eqz v9, :cond_114

    .line 935
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->updateSelectedStatus(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;)V

    .line 936
    const-wide/16 v15, -0x1

    cmp-long v15, v3, v15

    if-nez v15, :cond_10c

    .line 937
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 941
    :goto_cb
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 946
    :goto_d2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v15, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 947
    return-void

    .line 900
    .end local v3           #albumId:J
    .end local v7           #currentalbumid:J
    .end local v9           #inManageMusicMode:Z
    .end local v10           #isAvailable:Z
    .end local v11           #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_da
    const/4 v10, 0x0

    goto/16 :goto_3c

    .line 905
    .restart local v3       #albumId:J
    .restart local v10       #isAvailable:Z
    :cond_dd
    const/4 v15, 0x0

    goto :goto_5f

    .line 906
    :cond_df
    const/4 v15, 0x0

    goto :goto_6b

    .line 916
    .restart local v11       #iv:Lcom/google/android/music/AsyncAlbumArtImageView;
    :cond_e1
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v11, v3, v4, v15, v0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumId(JLjava/lang/String;Ljava/lang/String;)V

    .line 917
    if-eqz v10, :cond_ff

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mAvailableBackground:Landroid/graphics/drawable/ColorDrawable;

    :goto_ef
    invoke-virtual {v11, v15}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 918
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 919
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v15, v5}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_89

    .line 917
    :cond_ff
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnavailableBackground:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_ef

    .line 931
    .restart local v7       #currentalbumid:J
    .restart local v9       #inManageMusicMode:Z
    :cond_104
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto :goto_b7

    .line 939
    :cond_10c
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    goto :goto_cb

    .line 943
    :cond_114
    iget-object v15, v14, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 944
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
    .line 838
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 839
    .local v9, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const/4 v10, 0x0

    invoke-interface {p3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 841
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 883
    :goto_20
    return-void

    .line 847
    :cond_21
    const/4 v10, 0x1

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, artist:Ljava/lang/String;
    move-object v5, v0

    .line 849
    .local v5, displayartist:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v8

    .line 850
    .local v8, unknown:Z
    if-eqz v8, :cond_2f

    .line 851
    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mUnknownArtist:Ljava/lang/String;

    .line 853
    :cond_2f
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    invoke-virtual {v10, v5}, Lcom/google/android/music/StatefulShadowTextView;->setText(Ljava/lang/CharSequence;)V

    .line 855
    invoke-static {}, Lcom/google/android/music/MusicUtils;->getCurrentArtistId()J

    move-result-wide v3

    .line 856
    .local v3, currentartistid:J
    const/4 v10, 0x0

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 857
    .local v1, artistid:J
    const/4 v10, 0x4

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_a3

    const/4 v10, 0x1

    :goto_45
    iput-boolean v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->hasRemote:Z

    .line 858
    const/4 v10, 0x2

    invoke-interface {p3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_a5

    const/4 v10, 0x1

    :goto_4f
    iput-boolean v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->isKeptInDb:Z

    .line 860
    iget-object v10, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v10}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getMusicStateController()Lcom/google/android/music/activitymanagement/MusicStateController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/music/activitymanagement/MusicStateController;->isInManageMusicMode()Z

    move-result v6

    .line 861
    .local v6, inManageMusicMode:Z
    if-nez v6, :cond_a7

    cmp-long v10, v3, v1

    if-nez v10, :cond_a7

    if-nez p4, :cond_a7

    .line 862
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    .line 867
    :goto_69
    iput-wide v1, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    .line 868
    const-wide/16 v10, -0x1

    iput-wide v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    .line 869
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v10, v1, v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->setArtistId(J)V

    .line 871
    iget-object v10, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mIsStreamingEnabled:Z
    invoke-static {v10}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$700(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Z

    move-result v10

    if-nez v10, :cond_83

    const/4 v10, 0x3

    invoke-interface {p3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_af

    :cond_83
    const/4 v7, 0x1

    .line 872
    .local v7, isAvailable:Z
    :goto_84
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    const/4 v11, 0x1

    invoke-virtual {v10, v11, v7}, Lcom/google/android/music/StatefulShadowTextView;->setPrimaryAndOnline(ZZ)V

    .line 874
    if-eqz v6, :cond_b1

    .line 875
    invoke-direct {p0, v9}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->updateSelectedStatus(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;)V

    .line 876
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 877
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 882
    :goto_9c
    iget-object v10, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    .line 857
    .end local v6           #inManageMusicMode:Z
    .end local v7           #isAvailable:Z
    :cond_a3
    const/4 v10, 0x0

    goto :goto_45

    .line 858
    :cond_a5
    const/4 v10, 0x0

    goto :goto_4f

    .line 864
    .restart local v6       #inManageMusicMode:Z
    :cond_a7
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/PlayingIndicator;->setVisibility(I)V

    goto :goto_69

    .line 871
    :cond_af
    const/4 v7, 0x0

    goto :goto_84

    .line 879
    .restart local v7       #isAvailable:Z
    :cond_b1
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/android/music/KeepOnCheckBox;->setVisibility(I)V

    .line 880
    iget-object v10, v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_9c
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 8
    .parameter "cursor"

    .prologue
    .line 1058
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz p1, :cond_e

    .line 1059
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1060
    const/4 p1, 0x0

    .line 1063
    :cond_e
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$900(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    if-eq p1, v4, :cond_47

    .line 1064
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$900(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 1065
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$900(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChangeObserver:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChangeObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1067
    :cond_29
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #setter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v4, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$902(Lcom/google/android/music/ArtistAlbumBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1068
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$900(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 1069
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mArtistCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$900(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChangeObserver:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChangeObserver;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1070
    invoke-direct {p0, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getColumnIndices(Landroid/database/Cursor;)V

    .line 1072
    :cond_44
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1074
    :cond_47
    if-nez p1, :cond_6e

    .line 1076
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1077
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

    .line 1078
    .local v0, child:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;

    .line 1079
    .local v2, foo:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
    invoke-virtual {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->dispose()V

    goto :goto_53

    .line 1081
    .end local v0           #child:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;>;"
    .end local v2           #foo:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
    :cond_69
    iget-object v4, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1083
    .end local v1           #children:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;>;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6e
    return-void
.end method

.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 21
    .parameter "groupCursor"

    .prologue
    .line 980
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 982
    .local v8, artistId:J
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_4c

    const/4 v10, 0x1

    .line 984
    .local v10, artistIsKeptOn:Z
    :goto_11
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 985
    .local v3, groupPosition:I
    invoke-static {v8, v9}, Lcom/google/android/music/store/MusicContent$Artists;->getAlbumsByArtistsUri(J)Landroid/net/Uri;

    move-result-object v12

    .line 986
    .local v12, uri:Landroid/net/Uri;
    const/4 v1, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 987
    .local v4, groupHasLocal:J
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 988
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

    .line 1043
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/database/Cursor;

    .line 1044
    .local v18, c:Landroid/database/Cursor;
    return-object v18

    .line 982
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

.method public getRepresentativeAlbumId()J
    .registers 30

    .prologue
    .line 1100
    const-wide/16 v9, -0x1

    .line 1101
    .local v9, albumId:J
    const-wide/16 v11, -0x1

    .line 1103
    .local v11, artistId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$300(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v20

    .line 1104
    .local v20, listView:Landroid/widget/ExpandableListView;
    invoke-virtual/range {v20 .. v20}, Landroid/widget/ExpandableListView;->getFirstVisiblePosition()I

    move-result v24

    .line 1105
    .local v24, top:I
    invoke-virtual/range {v20 .. v20}, Landroid/widget/ExpandableListView;->getLastVisiblePosition()I

    move-result v13

    .line 1106
    .local v13, bottom:I
    sub-int v2, v13, v24

    div-int/lit8 v2, v2, 0x2

    add-int v26, v2, v24

    .line 1108
    .local v26, viewIndex:I
    const/16 v25, 0x0

    .line 1109
    .local v25, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v21

    .line 1110
    .local v21, packed:J
    invoke-static/range {v21 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v23

    .line 1112
    .local v23, ppType:I
    if-nez v23, :cond_a9

    .line 1113
    invoke-static/range {v21 .. v22}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v18

    .line 1115
    .local v18, groupId:I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_5a

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mAdapter:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;
    invoke-static {v2}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$000(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;

    move-result-object v8

    .line 1117
    .local v8, adapter:Landroid/widget/CursorTreeAdapter;
    if-nez v8, :cond_40

    .line 1118
    const-wide/16 v5, -0x1

    .line 1171
    .end local v8           #adapter:Landroid/widget/CursorTreeAdapter;
    .end local v18           #groupId:I
    :goto_3f
    return-wide v5

    .line 1120
    .restart local v8       #adapter:Landroid/widget/CursorTreeAdapter;
    .restart local v18       #groupId:I
    :cond_40
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/CursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 1121
    const/4 v2, 0x0

    const/4 v5, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v2, v5, v1}, Landroid/widget/CursorTreeAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 1122
    .local v19, groupView:Landroid/view/View;
    if-eqz v19, :cond_5a

    .line 1123
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    .end local v25           #vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    check-cast v25, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 1142
    .end local v8           #adapter:Landroid/widget/CursorTreeAdapter;
    .end local v18           #groupId:I
    .end local v19           #groupView:Landroid/view/View;
    .restart local v25       #vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :cond_5a
    :goto_5a
    if-eqz v25, :cond_64

    .line 1143
    move-object/from16 v0, v25

    iget-wide v9, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    .line 1144
    move-object/from16 v0, v25

    iget-wide v11, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    .line 1146
    :cond_64
    const-wide/16 v5, -0x1

    cmp-long v2, v9, v5

    if-nez v2, :cond_a7

    const-wide/16 v5, 0x0

    cmp-long v2, v11, v5

    if-ltz v2, :cond_a7

    .line 1147
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    .line 1150
    .local v4, cols:[Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/google/android/music/store/MusicContent$Artists;->getAlbumsByArtistsUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 1151
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1154
    .local v14, c:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 1155
    .local v16, childPos:I
    :try_start_89
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 1156
    .local v15, childCount:I
    if-lez v15, :cond_9e

    .line 1158
    const/4 v2, 0x1

    if-le v15, v2, :cond_94

    .line 1159
    const/16 v16, 0x1

    .line 1161
    :cond_94
    move/from16 v0, v16

    invoke-interface {v14, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1162
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_9d
    .catchall {:try_start_89 .. :try_end_9d} :catchall_d8

    move-result-wide v9

    .line 1165
    :cond_9e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1167
    if-eqz v25, :cond_a7

    .line 1168
    move-object/from16 v0, v25

    iput-wide v9, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #cols:[Ljava/lang/String;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v15           #childCount:I
    .end local v16           #childPos:I
    :cond_a7
    move-wide v5, v9

    .line 1171
    goto :goto_3f

    .line 1128
    :cond_a9
    sub-int v26, v26, v24

    .line 1129
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1130
    .local v17, childView:Landroid/view/View;
    if-eqz v17, :cond_5a

    .line 1131
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    .end local v25           #vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    check-cast v25, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .line 1132
    .restart local v25       #vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    if-eqz v25, :cond_5a

    move-object/from16 v0, v25

    iget-wide v5, v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    const-wide/16 v27, -0x1

    cmp-long v2, v5, v27

    if-nez v2, :cond_5a

    .line 1135
    add-int/lit8 v2, v26, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1136
    if-eqz v17, :cond_5a

    .line 1137
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    .end local v25           #vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    check-cast v25, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    .restart local v25       #vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    goto :goto_5a

    .line 1165
    .end local v17           #childView:Landroid/view/View;
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v4       #cols:[Ljava/lang/String;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v16       #childPos:I
    :catchall_d8
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "context"
    .parameter "cursor"
    .parameter "isLastChild"
    .parameter "parent"

    .prologue
    .line 759
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 760
    .local v4, v:Landroid/view/View;
    new-instance v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v5, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    .line 761
    .local v5, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const v6, 0x7f10003d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 762
    const v6, 0x7f10003e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 763
    const v6, 0x7f100022

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 764
    iget-object v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$2;

    invoke-direct {v7, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$2;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    iget-object v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v7, Lcom/google/android/music/FadingColorDrawable;

    iget-object v8, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    invoke-direct {v7, p1, v8}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 770
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v6

    if-eqz v6, :cond_be

    iget-object v6, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v6}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$300(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/music/MusicExpandableListView;->isFastScrollAlwaysVisible()Z

    move-result v6

    if-eqz v6, :cond_be

    const/4 v0, 0x1

    .line 772
    .local v0, fastScroll:Z
    :goto_53
    iget-object v6, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v6}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09006a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v2, v6

    .line 773
    .local v2, padding:I
    if-eqz v0, :cond_c0

    move v1, v2

    .line 774
    .local v1, left:I
    :goto_64
    if-eqz v0, :cond_c2

    const/4 v3, 0x0

    .line 775
    .local v3, right:I
    :goto_67
    iget-object v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v7, v3, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 777
    const v6, 0x7f100061

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/PlayingIndicator;

    iput-object v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 778
    const v6, 0x7f10000e

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 779
    iget-object v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v1, v7, v3, v8}, Lcom/google/android/music/KeepOnCheckBox;->setPadding(IIII)V

    .line 780
    new-instance v6, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    iget-object v7, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {v6, v7}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    .line 781
    iget-object v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v7, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v6, v7}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 782
    const v6, 0x7f100050

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 783
    iget-object v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/android/music/AsyncAlbumArtImageView;->setPadding(IIII)V

    .line 784
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    .line 785
    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    .line 786
    const/4 v6, 0x2

    iput v6, v5, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->type:I

    .line 787
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 788
    return-object v4

    .line 770
    .end local v0           #fastScroll:Z
    .end local v1           #left:I
    .end local v2           #padding:I
    .end local v3           #right:I
    :cond_be
    const/4 v0, 0x0

    goto :goto_53

    .line 773
    .restart local v0       #fastScroll:Z
    .restart local v2       #padding:I
    :cond_c0
    const/4 v1, 0x0

    goto :goto_64

    .restart local v1       #left:I
    :cond_c2
    move v3, v2

    .line 774
    goto :goto_67
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .registers 16
    .parameter "context"
    .parameter "cursor"
    .parameter "isExpanded"
    .parameter "parent"

    .prologue
    .line 718
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/SimpleCursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 719
    .local v6, v:Landroid/view/View;
    const v8, 0x7f100050

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 720
    .local v1, iv:Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 721
    .local v3, p:Landroid/view/ViewGroup$LayoutParams;
    const/4 v8, -0x2

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 722
    const/4 v8, -0x2

    iput v8, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 723
    new-instance v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;

    invoke-direct {v7, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    .line 724
    .local v7, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    const v8, 0x7f10003d

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line1:Lcom/google/android/music/StatefulShadowTextView;

    .line 725
    const v8, 0x7f10003e

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/StatefulShadowTextView;

    iput-object v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    .line 726
    iget-object v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->line2:Lcom/google/android/music/StatefulShadowTextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/music/StatefulShadowTextView;->setVisibility(I)V

    .line 727
    const v8, 0x7f100022

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    .line 728
    iget-object v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v9, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1;

    invoke-direct {v9, p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$1;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 733
    iget-object v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    new-instance v9, Lcom/google/android/music/FadingColorDrawable;

    iget-object v10, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    invoke-direct {v9, p1, v10}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 734
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isICSOrGreater()Z

    move-result v8

    if-eqz v8, :cond_d6

    iget-object v8, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #getter for: Lcom/google/android/music/ArtistAlbumBrowserActivity;->mList:Lcom/google/android/music/MusicExpandableListView;
    invoke-static {v8}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$300(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/MusicExpandableListView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/music/MusicExpandableListView;->isFastScrollAlwaysVisible()Z

    move-result v8

    if-eqz v8, :cond_d6

    const/4 v0, 0x1

    .line 736
    .local v0, fastScroll:Z
    :goto_6d
    iget-object v8, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-virtual {v8}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09006a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    .line 737
    .local v4, padding:I
    if-eqz v0, :cond_d8

    move v2, v4

    .line 738
    .local v2, left:I
    :goto_7e
    if-eqz v0, :cond_da

    const/4 v5, 0x0

    .line 739
    .local v5, right:I
    :goto_81
    iget-object v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->contextMenu:Landroid/widget/ImageView;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v5, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 741
    const v8, 0x7f100061

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/PlayingIndicator;

    iput-object v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->play_indicator:Lcom/google/android/music/PlayingIndicator;

    .line 742
    const v8, 0x7f10000e

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/KeepOnCheckBox;

    iput-object v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    .line 743
    iget-object v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v2, v9, v5, v10}, Lcom/google/android/music/KeepOnCheckBox;->setPadding(IIII)V

    .line 744
    new-instance v8, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    iget-object v9, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {v8, v9}, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;-><init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V

    iput-object v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    .line 745
    iget-object v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->keeponselector:Lcom/google/android/music/KeepOnCheckBox;

    iget-object v9, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->checkboxListener:Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;

    invoke-virtual {v8, v9}, Lcom/google/android/music/KeepOnCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 746
    const v8, 0x7f100050

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/google/android/music/AsyncAlbumArtImageView;

    iput-object v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    .line 747
    iget-object v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->icon:Lcom/google/android/music/AsyncAlbumArtImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/music/AsyncAlbumArtImageView;->setVisibility(I)V

    .line 748
    const-wide/16 v8, -0x1

    iput-wide v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->artistId:J

    .line 749
    const-wide/16 v8, -0x1

    iput-wide v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->albumId:J

    .line 750
    const/4 v8, 0x1

    iput v8, v7, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;->type:I

    .line 751
    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 752
    return-object v6

    .line 734
    .end local v0           #fastScroll:Z
    .end local v2           #left:I
    .end local v4           #padding:I
    .end local v5           #right:I
    :cond_d6
    const/4 v0, 0x0

    goto :goto_6d

    .line 737
    .restart local v0       #fastScroll:Z
    .restart local v4       #padding:I
    :cond_d8
    const/4 v2, 0x0

    goto :goto_7e

    .restart local v2       #left:I
    :cond_da
    move v5, v4

    .line 738
    goto :goto_81
.end method

.method public onGroupCollapsed(I)V
    .registers 7
    .parameter "groupPosition"

    .prologue
    .line 1049
    invoke-virtual {p0, p1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getGroupId(I)J

    move-result-wide v1

    .line 1050
    .local v1, id:J
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mChildCursorCache:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;

    .line 1051
    .local v0, cursor:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;
    if-eqz v0, :cond_15

    .line 1052
    invoke-virtual {v0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ChildCursorWrapper;->dispose()V

    .line 1054
    :cond_15
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 793
    iget-object v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActiveViews:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 794
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 5
    .parameter "constraint"

    .prologue
    .line 1087
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1088
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

    .line 1091
    :cond_18
    invoke-virtual {p0}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1096
    :goto_1c
    return-object v0

    .line 1093
    :cond_1d
    iget-object v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mActivity:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    #calls: Lcom/google/android/music/ArtistAlbumBrowserActivity;->getArtistCursor(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$1000(Lcom/google/android/music/ArtistAlbumBrowserActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1094
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraint:Ljava/lang/String;

    .line 1095
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->mConstraintIsValid:Z

    goto :goto_1c
.end method

.method public updateAllOfflineSelectedStatuses()V
    .registers 4

    .prologue
    .line 797
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

    .line 798
    .local v1, vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    invoke-direct {p0, v1}, Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter;->updateSelectedStatus(Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;)V

    goto :goto_6

    .line 800
    .end local v1           #vh:Lcom/google/android/music/ArtistAlbumBrowserActivity$ArtistAlbumListAdapter$ViewHolder;
    :cond_16
    return-void
.end method
