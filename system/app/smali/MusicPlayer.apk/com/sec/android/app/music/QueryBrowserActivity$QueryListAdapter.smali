.class Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "QueryListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;
    }
.end annotation


# instance fields
.field private mActivity:Lcom/sec/android/app/music/QueryBrowserActivity;

.field private mConstraint:Ljava/lang/String;

.field private mConstraintIsValid:Z

.field private final mQueryHandler:Landroid/content/AsyncQueryHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sec/android/app/music/QueryBrowserActivity;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .registers 14
    .parameter "context"
    .parameter "currentactivity"
    .parameter "layout"
    .parameter "cursor"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v6, 0x0

    .line 597
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 576
    iput-object v6, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/sec/android/app/music/QueryBrowserActivity;

    .line 580
    iput-object v6, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    .line 598
    iput-object p2, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/sec/android/app/music/QueryBrowserActivity;

    .line 599
    new-instance v0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;-><init>(Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 600
    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;)Lcom/sec/android/app/music/QueryBrowserActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/sec/android/app/music/QueryBrowserActivity;

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 613
    const v12, 0x7f0c000f

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 614
    .local v10, tv1:Landroid/widget/TextView;
    const v12, 0x7f0c0015

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 615
    .local v11, tv2:Landroid/widget/TextView;
    const v12, 0x7f0c000d

    invoke-virtual {p1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 616
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 617
    .local v8, p:Landroid/view/ViewGroup$LayoutParams;
    if-nez v8, :cond_25

    .line 619
    invoke-static/range {p3 .. p3}, Landroid/database/DatabaseUtils;->dumpCursor(Landroid/database/Cursor;)V

    .line 688
    :cond_24
    :goto_24
    return-void

    .line 622
    :cond_25
    const/4 v12, -0x2

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 623
    const/4 v12, -0x2

    iput v12, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 625
    const-string v12, "mime_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 628
    .local v4, mimetype:Ljava/lang/String;
    if-nez v4, :cond_3d

    .line 629
    const-string v4, "audio/"

    .line 631
    :cond_3d
    const-string v12, "artist"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_98

    .line 632
    const v12, 0x7f02011b

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 633
    const-string v12, "artist"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 635
    .local v5, name:Ljava/lang/String;
    move-object v1, v5

    .line 636
    .local v1, displayname:Ljava/lang/String;
    const/4 v2, 0x0

    .line 637
    .local v2, isunknown:Z
    if-eqz v5, :cond_65

    const-string v12, "<unknown>"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6f

    .line 638
    :cond_65
    const v12, 0x7f090136

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 639
    const/4 v2, 0x1

    .line 641
    :cond_6f
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    const-string v12, "data1"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 644
    .local v6, numalbums:I
    const-string v12, "data2"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 646
    .local v7, numsongs:I
    move-object/from16 v0, p2

    invoke-static {v0, v6, v7, v2}, Lcom/sec/android/app/music/MusicUtils;->makeAlbumsSongsLabel(Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v9

    .line 649
    .local v9, songs_albums:Ljava/lang/String;
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_24

    .line 651
    .end local v1           #displayname:Ljava/lang/String;
    .end local v2           #isunknown:Z
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #numalbums:I
    .end local v7           #numsongs:I
    .end local v9           #songs_albums:Ljava/lang/String;
    :cond_98
    const-string v12, "album"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f2

    .line 652
    const v12, 0x7f02011a

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 653
    const-string v12, "album"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 655
    .restart local v5       #name:Ljava/lang/String;
    move-object v1, v5

    .line 656
    .restart local v1       #displayname:Ljava/lang/String;
    if-eqz v5, :cond_bf

    const-string v12, "<unknown>"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c8

    .line 657
    :cond_bf
    const v12, 0x7f090135

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 659
    :cond_c8
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    const-string v12, "artist"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 663
    move-object v1, v5

    .line 664
    if-eqz v5, :cond_e4

    const-string v12, "<unknown>"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ed

    .line 665
    :cond_e4
    const v12, 0x7f090136

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 667
    :cond_ed
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    .line 669
    .end local v1           #displayname:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    :cond_f2
    const-string v12, "audio/"

    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10a

    const-string v12, "application/ogg"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10a

    const-string v12, "application/x-ogg"

    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 671
    :cond_10a
    const v12, 0x7f02011c

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 672
    const-string v12, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 674
    .restart local v5       #name:Ljava/lang/String;
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    const-string v12, "artist"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 678
    .restart local v1       #displayname:Ljava/lang/String;
    if-eqz v1, :cond_139

    const-string v12, "<unknown>"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_142

    .line 679
    :cond_139
    const v12, 0x7f090136

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 681
    :cond_142
    const-string v12, "album"

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 683
    if-eqz v5, :cond_15a

    const-string v12, "<unknown>"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_163

    .line 684
    :cond_15a
    const v12, 0x7f090135

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 686
    :cond_163
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/sec/android/app/music/QueryBrowserActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 693
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 694
    const/4 p1, 0x0

    .line 696
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/sec/android/app/music/QueryBrowserActivity;

    #getter for: Lcom/sec/android/app/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/sec/android/app/music/QueryBrowserActivity;->access$400(Lcom/sec/android/app/music/QueryBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eq p1, v0, :cond_1e

    .line 697
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/sec/android/app/music/QueryBrowserActivity;

    #setter for: Lcom/sec/android/app/music/QueryBrowserActivity;->mQueryCursor:Landroid/database/Cursor;
    invoke-static {v0, p1}, Lcom/sec/android/app/music/QueryBrowserActivity;->access$402(Lcom/sec/android/app/music/QueryBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 698
    invoke-super {p0, p1}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 700
    :cond_1e
    return-void
.end method

.method public getQueryHandler()Landroid/content/AsyncQueryHandler;
    .registers 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    return-object v0
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .registers 6
    .parameter "constraint"

    .prologue
    .line 704
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, s:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    if-eqz v2, :cond_1d

    if-nez v1, :cond_e

    iget-object v2, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    if-eqz v2, :cond_18

    :cond_e
    if-eqz v1, :cond_1d

    iget-object v2, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 707
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 712
    :goto_1c
    return-object v0

    .line 709
    :cond_1d
    iget-object v2, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/sec/android/app/music/QueryBrowserActivity;

    const/4 v3, 0x0

    #calls: Lcom/sec/android/app/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v2, v3, v1}, Lcom/sec/android/app/music/QueryBrowserActivity;->access$200(Lcom/sec/android/app/music/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 710
    .local v0, c:Landroid/database/Cursor;
    iput-object v1, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mConstraint:Ljava/lang/String;

    .line 711
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mConstraintIsValid:Z

    goto :goto_1c
.end method

.method public setActivity(Lcom/sec/android/app/music/QueryBrowserActivity;)V
    .registers 2
    .parameter "newactivity"

    .prologue
    .line 603
    iput-object p1, p0, Lcom/sec/android/app/music/QueryBrowserActivity$QueryListAdapter;->mActivity:Lcom/sec/android/app/music/QueryBrowserActivity;

    .line 604
    return-void
.end method
