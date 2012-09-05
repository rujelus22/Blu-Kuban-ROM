.class Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;
.super Lcom/sec/android/app/music/widget/CommonMusicListAdapter;
.source "MusicTabListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/MusicTabListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MusicTabListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

.field private final mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

.field final synthetic this$0:Lcom/sec/android/app/music/MusicTabListView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/music/MusicTabListView;Landroid/content/Context;Lcom/sec/android/app/music/widget/TwIndexListView;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 15
    .parameter
    .parameter "context"
    .parameter "view"
    .parameter "layout"
    .parameter "c"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 909
    iput-object p1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 910
    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;-><init>(Landroid/content/Context;Landroid/view/View;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 1226
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1228
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    .line 912
    invoke-static {}, Lcom/sec/android/app/music/MusicTabListView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static {p1}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MusicTabListAdapter() constructed..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 27
    .parameter "view"
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1048
    invoke-static {}, Lcom/sec/android/app/music/MusicTabListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mTabId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " MusicTabListAdapter bindView position="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " id:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const-wide/16 v18, -0xf

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-nez v18, :cond_c9

    .line 1054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/music/MusicTabListView;->access$400(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v18

    add-int/lit8 v11, v18, -0x1

    .line 1055
    .local v11, numberOf:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8c

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/music/MusicTabListView;->access$400(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mNumberOfDefaultPlayListItem:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/music/MusicTabListView;->access$500(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    sub-int v11, v18, v19

    .line 1060
    :cond_8c
    const v18, 0x7f0c000f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1061
    .local v14, text:Landroid/widget/TextView;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/music/MusicUtils;->getNumberOfString(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v11, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1064
    .local v10, number:Ljava/lang/String;
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1198
    .end local v10           #number:Ljava/lang/String;
    .end local v11           #numberOf:I
    .end local v14           #text:Landroid/widget/TextView;
    :cond_c8
    :goto_c8
    return-void

    .line 1071
    :cond_c9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;

    .line 1073
    .local v17, vh:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_29a

    .line 1075
    const-string v18, "bucket_display_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1096
    .local v15, text1:Ljava/lang/String;
    :goto_f3
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mHasSecondLine:Z
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/music/MusicTabListView;->access$700(Lcom/sec/android/app/music/MusicTabListView;)Z

    move-result v18

    if-eqz v18, :cond_125

    .line 1102
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mText2Idx:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/music/MusicTabListView;->access$900(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v19

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    :cond_125
    invoke-static {}, Lcom/sec/android/app/music/MusicTabListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mTabId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "    mAlbumIdIdx : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v20, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mAlbumIdIdx:I
    invoke-static/range {v20 .. v20}, Lcom/sec/android/app/music/MusicTabListView;->access$1000(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mAlbumIdIdx:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/music/MusicTabListView;->access$1000(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1118
    .local v4, albumId:J
    new-instance v6, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;-><init>(Lcom/sec/android/app/music/widget/CommonMusicListAdapter;)V

    .line 1119
    .local v6, args:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v18

    move/from16 v0, v18

    iput v0, v6, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->position:I

    .line 1120
    iput-wide v4, v6, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->albumId:J

    .line 1121
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1af

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_324

    .line 1124
    :cond_1af
    const-wide/16 v18, -0xb

    cmp-long v18, v4, v18

    if-nez v18, :cond_2ae

    .line 1125
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f0200d5

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1170
    :goto_1c1
    sget v18, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c8

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_21d

    .line 1173
    invoke-static {}, Lcom/sec/android/app/music/MusicTabListView;->access$000()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mSplitRightView.isShown() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/music/MusicContentListView;->isShown()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mSplitRightView.getVisibility : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/music/MusicContentListView;->getVisibility()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_21d
    sget-object v18, Lcom/sec/android/app/music/MusicTabListView;->sSelectedSplitViewMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v19, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 1180
    .local v12, selectedPosition:Ljava/lang/Integer;
    if-eqz v12, :cond_3fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/music/MusicContentListView;->isShown()Z

    move-result v18

    if-eqz v18, :cond_3fb

    iget v0, v6, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;->position:I

    move/from16 v18, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3fb

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mIsSplitBarPressed:Z
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/music/MusicTabListView;->access$1100(Lcom/sec/android/app/music/MusicTabListView;)Z

    move-result v18

    if-eqz v18, :cond_3e1

    .line 1183
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->splitSelectedIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 1187
    :goto_27a
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->splitSelectedIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1188
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->mBusy:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3ee

    .line 1189
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->splitSelectedIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c8

    .line 1081
    .end local v4           #albumId:J
    .end local v6           #args:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;
    .end local v12           #selectedPosition:Ljava/lang/Integer;
    .end local v15           #text1:Ljava/lang/String;
    :cond_29a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mText1Idx:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/music/MusicTabListView;->access$800(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v18

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #text1:Ljava/lang/String;
    goto/16 :goto_f3

    .line 1126
    .restart local v4       #albumId:J
    .restart local v6       #args:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$TagArgs;
    :cond_2ae
    const-wide/16 v18, -0xc

    cmp-long v18, v4, v18

    if-nez v18, :cond_2c2

    .line 1127
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f0200ce

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1c1

    .line 1128
    :cond_2c2
    const-wide/16 v18, -0xd

    cmp-long v18, v4, v18

    if-nez v18, :cond_2d6

    .line 1129
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f0200d2

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1c1

    .line 1130
    :cond_2d6
    const-wide/16 v18, -0xe

    cmp-long v18, v4, v18

    if-nez v18, :cond_2ea

    .line 1131
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f0200c3

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1c1

    .line 1133
    :cond_2ea
    move-object/from16 v0, p2

    invoke-static {v0, v4, v5}, Lcom/sec/android/app/music/MusicUtils;->getPlayListArtwork(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1134
    .local v7, bm:Landroid/graphics/Bitmap;
    if-nez v7, :cond_300

    .line 1135
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const v19, 0x7f0200d0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1c1

    .line 1137
    :cond_300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/music/MusicTabListView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080004

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1138
    .local v13, size:I
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v7, v13, v13, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1c1

    .line 1142
    .end local v7           #bm:Landroid/graphics/Bitmap;
    .end local v13           #size:I
    :cond_324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_39e

    .line 1143
    invoke-static {v4, v5}, Lcom/sec/android/app/music/MusicUtils;->getCachedFolderArtworkWithoutMaking(J)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1144
    .local v8, d:Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_37d

    .line 1145
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1146
    new-instance v3, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;-><init>(Lcom/sec/android/app/music/widget/CommonMusicListAdapter;)V

    .line 1147
    .local v3, ai:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->iv:Landroid/widget/ImageView;

    .line 1148
    iput-wide v4, v3, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->albumId:J

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v3, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->context:Landroid/content/Context;

    .line 1150
    sget-object v18, Lcom/sec/android/app/music/AlbumArtLoader;->mAlbumArtLoader:Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;->mBackThreadHandler:Landroid/os/Handler;

    .line 1151
    .local v9, h:Landroid/os/Handler;
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v9, v0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1c1

    .line 1153
    .end local v3           #ai:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;
    .end local v9           #h:Landroid/os/Handler;
    :cond_37d
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1154
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f02013a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1c1

    .line 1157
    .end local v8           #d:Landroid/graphics/drawable/Drawable;
    :cond_39e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3d8

    .line 1158
    invoke-static {v15}, Lcom/sec/android/app/music/common/util/R2vsUtil;->getSecGenre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/music/common/util/R2vsUtil;->getGenreThumbnailResourceId(Ljava/lang/String;)I

    move-result v16

    .line 1161
    .local v16, thumbnailId:I
    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_3cf

    .line 1162
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1c1

    .line 1164
    :cond_3cf
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5}, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->setAlbumArt(Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;J)V

    goto/16 :goto_1c1

    .line 1167
    .end local v16           #thumbnailId:I
    :cond_3d8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5}, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->setAlbumArt(Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;J)V

    goto/16 :goto_1c1

    .line 1185
    .restart local v12       #selectedPosition:Ljava/lang/Integer;
    :cond_3e1
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->splitSelectedIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setPressed(Z)V

    goto/16 :goto_27a

    .line 1191
    :cond_3ee
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->splitSelectedIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c8

    .line 1194
    :cond_3fb
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->splitSelectedIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1195
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->splitSelectedIcon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c8
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 990
    invoke-static {}, Lcom/sec/android/app/music/MusicTabListView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTabId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static {v2}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MusicTabListAdapter getView mCursorCount= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I
    invoke-static {v2}, Lcom/sec/android/app/music/MusicTabListView;->access$400(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I
    invoke-static {v0}, Lcom/sec/android/app/music/MusicTabListView;->access$400(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_4a

    .line 996
    const/4 p2, 0x0

    .line 1002
    :cond_45
    :goto_45
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 997
    :cond_4a
    if-eqz p2, :cond_45

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_45

    .line 999
    const/4 p2, 0x0

    goto :goto_45
.end method

.method public isEnabled(I)Z
    .registers 5
    .parameter "position"

    .prologue
    .line 977
    invoke-static {}, Lcom/sec/android/app/music/MusicTabListView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isEnabled()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    iget-object v0, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I
    invoke-static {v0}, Lcom/sec/android/app/music/MusicTabListView;->access$400(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ne v0, v1, :cond_2c

    .line 981
    const/4 v0, 0x0

    .line 984
    :goto_2b
    return v0

    :cond_2c
    invoke-super {p0, p1}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_2b
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14
    .parameter "context"
    .parameter "c"
    .parameter "parent"

    .prologue
    const v9, 0x7f0c000c

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 1008
    invoke-static {}, Lcom/sec/android/app/music/MusicTabListView;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mTabId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static {v5}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MusicTabListAdapter newView position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const-wide/16 v3, -0xf

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_5d

    .line 1012
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1014
    .local v0, li:Landroid/view/LayoutInflater;
    const v3, 0x7f030005

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1042
    .end local v0           #li:Landroid/view/LayoutInflater;
    :goto_5c
    return-object v1

    .line 1018
    :cond_5d
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1019
    .local v1, v:Landroid/view/View;
    new-instance v2, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;-><init>(Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;)V

    .line 1020
    .local v2, vh:Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;
    iget-object v3, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mIsSelectMode:Z
    invoke-static {v3}, Lcom/sec/android/app/music/MusicTabListView;->access$600(Lcom/sec/android/app/music/MusicTabListView;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 1021
    const v3, 0x7f0c000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v2, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 1022
    iget-object v3, v2, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1025
    :cond_7e
    iget-object v3, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static {v3}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_d0

    .line 1026
    const v3, 0x7f0c0013

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 1027
    iget-object v3, v2, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1028
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    :goto_9e
    const v3, 0x7f0c000f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->text1:Landroid/widget/TextView;

    .line 1036
    const v3, 0x7f0c0015

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    .line 1037
    iget-object v3, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mHasSecondLine:Z
    invoke-static {v3}, Lcom/sec/android/app/music/MusicTabListView;->access$700(Lcom/sec/android/app/music/MusicTabListView;)Z

    move-result v3

    if-nez v3, :cond_c1

    .line 1038
    iget-object v3, v2, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1040
    :cond_c1
    const v3, 0x7f0c0017

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->splitSelectedIcon:Landroid/widget/ImageView;

    .line 1041
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_5c

    .line 1030
    :cond_d0
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 1031
    iget-object v3, v2, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    sget-object v4, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->sDefaultArtwork:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_9e
.end method

.method protected onContentChanged()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 922
    invoke-super {p0}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->onContentChanged()V

    .line 923
    iget-boolean v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->mAutoRequery:Z

    if-nez v1, :cond_9

    .line 972
    :cond_8
    :goto_8
    return-void

    .line 929
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicTabListView;->access$300(Lcom/sec/android/app/music/MusicTabListView;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6d

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 930
    invoke-static {}, Lcom/sec/android/app/music/MusicTabListView;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTabId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static {v3}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onContentChanged count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/sec/android/app/music/MusicTabListView;->access$300(Lcom/sec/android/app/music/MusicTabListView;)Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getCursor Count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mTabListCursorCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I
    invoke-static {v3}, Lcom/sec/android/app/music/MusicTabListView;->access$400(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    :cond_6d
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static {v1}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v1

    if-eq v1, v4, :cond_b9

    .line 938
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I
    invoke-static {v1}, Lcom/sec/android/app/music/MusicTabListView;->access$400(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v1

    if-lez v1, :cond_97

    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicTabListView;->access$300(Lcom/sec/android/app/music/MusicTabListView;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_97

    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicTabListView;->access$300(Lcom/sec/android/app/music/MusicTabListView;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v4, :cond_97

    .line 942
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/MusicTabListView;->reQueryListCursor(Z)V

    .line 944
    :cond_97
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I
    invoke-static {v1}, Lcom/sec/android/app/music/MusicTabListView;->access$400(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v1

    if-nez v1, :cond_b9

    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicTabListView;->access$300(Lcom/sec/android/app/music/MusicTabListView;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_b9

    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicTabListView;->access$300(Lcom/sec/android/app/music/MusicTabListView;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v4, :cond_b9

    .line 951
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/music/MusicTabListView;->reQueryListCursor(Z)V

    .line 955
    :cond_b9
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    invoke-virtual {p0}, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    #setter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;
    invoke-static {v1, v2}, Lcom/sec/android/app/music/MusicTabListView;->access$302(Lcom/sec/android/app/music/MusicTabListView;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 956
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/sec/android/app/music/MusicTabListView;->access$300(Lcom/sec/android/app/music/MusicTabListView;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_10f

    .line 957
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I
    invoke-static {v1, v2}, Lcom/sec/android/app/music/MusicTabListView;->access$402(Lcom/sec/android/app/music/MusicTabListView;I)I

    .line 964
    :goto_d0
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static {v1}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v1

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I
    invoke-static {v1}, Lcom/sec/android/app/music/MusicTabListView;->access$400(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mNumberOfDefaultPlayListItem:I
    invoke-static {v2}, Lcom/sec/android/app/music/MusicTabListView;->access$500(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v2

    if-ne v1, v2, :cond_8

    .line 966
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I
    invoke-static {v1, v2}, Lcom/sec/android/app/music/MusicTabListView;->access$402(Lcom/sec/android/app/music/MusicTabListView;I)I
    :try_end_ec
    .catch Landroid/database/StaleDataException; {:try_start_9 .. :try_end_ec} :catch_ee

    goto/16 :goto_8

    .line 969
    :catch_ee
    move-exception v0

    .line 970
    .local v0, e:Landroid/database/StaleDataException;
    invoke-static {}, Lcom/sec/android/app/music/MusicTabListView;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on accessing a closed cursor :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/StaleDataException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 959
    .end local v0           #e:Landroid/database/StaleDataException;
    :cond_10f
    :try_start_10f
    iget-object v1, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    iget-object v2, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/sec/android/app/music/MusicTabListView;->access$300(Lcom/sec/android/app/music/MusicTabListView;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    #setter for: Lcom/sec/android/app/music/MusicTabListView;->mTabListCursorCount:I
    invoke-static {v1, v2}, Lcom/sec/android/app/music/MusicTabListView;->access$402(Lcom/sec/android/app/music/MusicTabListView;I)I
    :try_end_11e
    .catch Landroid/database/StaleDataException; {:try_start_10f .. :try_end_11e} :catch_ee

    goto :goto_d0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 10
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1232
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 1233
    sget v4, Lcom/sec/android/app/music/MusicFeatures;->FLAG_SUPPORT_SPLIT_LIST_VIEW:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_18

    iget-object v4, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    iget-object v4, v4, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    iget-object v4, v4, Lcom/sec/android/app/music/MusicTabListView;->mSplitRightView:Lcom/sec/android/app/music/MusicContentListView;

    invoke-virtual {v4}, Lcom/sec/android/app/music/MusicContentListView;->isShown()Z

    move-result v4

    if-nez v4, :cond_19

    .line 1271
    :cond_18
    :goto_18
    return-void

    .line 1237
    :cond_19
    sget-object v4, Lcom/sec/android/app/music/MusicTabListView;->sSelectedSplitViewMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    #getter for: Lcom/sec/android/app/music/MusicTabListView;->mTabId:I
    invoke-static {v5}, Lcom/sec/android/app/music/MusicTabListView;->access$100(Lcom/sec/android/app/music/MusicTabListView;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1238
    .local v3, selectedPosition:Ljava/lang/Integer;
    if-eqz v3, :cond_18

    .line 1244
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    invoke-virtual {v5}, Lcom/sec/android/app/music/MusicTabListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v1, v4, v5

    .line 1245
    .local v1, position:I
    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1246
    .local v2, selectedItem:Landroid/view/View;
    if-eqz v2, :cond_18

    .line 1249
    const v4, 0x7f0c0017

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1251
    .local v0, iv:Landroid/widget/ImageView;
    if-eqz v0, :cond_18

    .line 1254
    packed-switch p2, :pswitch_data_7c

    goto :goto_18

    .line 1256
    :pswitch_4e
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1257
    iget-object v4, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1258
    iget-object v4, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1259
    iget-object v4, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->mFadeInAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4}, Landroid/view/animation/AlphaAnimation;->start()V

    goto :goto_18

    .line 1262
    :pswitch_64
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1263
    iget-object v4, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1264
    iget-object v4, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1265
    iget-object v4, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->mFadeOutAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v4}, Landroid/view/animation/AlphaAnimation;->start()V

    goto :goto_18

    .line 1254
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_64
    .end packed-switch
.end method

.method public setAlbumArt(Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;J)V
    .registers 9
    .parameter "vh"
    .parameter "albumId"

    .prologue
    .line 1208
    invoke-static {p2, p3}, Lcom/sec/android/app/music/MusicUtils;->getCachedArtworkWithoutMaking(J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1209
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2c

    .line 1210
    iget-object v3, p1, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1211
    new-instance v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;-><init>(Lcom/sec/android/app/music/widget/CommonMusicListAdapter;)V

    .line 1212
    .local v0, ai:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;
    iget-object v3, p1, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->iv:Landroid/widget/ImageView;

    .line 1213
    iput-wide p2, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->albumId:J

    .line 1214
    iget-object v3, p0, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter;->this$0:Lcom/sec/android/app/music/MusicTabListView;

    invoke-virtual {v3}, Lcom/sec/android/app/music/MusicTabListView;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;->context:Landroid/content/Context;

    .line 1215
    sget-object v3, Lcom/sec/android/app/music/AlbumArtLoader;->mAlbumArtLoader:Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;

    iget-object v2, v3, Lcom/sec/android/app/music/AlbumArtLoader$AlbumArtLoaderThread;->mBackThreadHandler:Landroid/os/Handler;

    .line 1216
    .local v2, h:Landroid/os/Handler;
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1220
    .end local v0           #ai:Lcom/sec/android/app/music/widget/CommonMusicListAdapter$AlbumArtInfo;
    .end local v2           #h:Landroid/os/Handler;
    :goto_2b
    return-void

    .line 1218
    :cond_2c
    iget-object v3, p1, Lcom/sec/android/app/music/MusicTabListView$MusicTabListAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2b
.end method
