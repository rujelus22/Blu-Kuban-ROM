.class Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "PostCommentsFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PostCommentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 437
    const-class v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)V
    .registers 4
    .parameter

    .prologue
    .line 444
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 445
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 446
    new-instance v0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;-><init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 450
    :goto_12
    return-void

    .line 448
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    goto :goto_12
.end method


# virtual methods
.method public getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;
    .registers 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    return-object v0
.end method

.method public onActionItemClicked(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/MenuItem;)Z
    .registers 25
    .parameter "actionMode"
    .parameter "menuItem"

    .prologue
    .line 557
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v9

    .line 558
    .local v9, checkedItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 559
    .local v7, checkItemsArrayCount:I
    const/4 v8, 0x0

    .line 560
    .local v8, checkItemsCount:I
    const/16 v17, -0x1

    .line 561
    .local v17, position:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_14
    if-ge v13, v7, :cond_21

    .line 562
    invoke-virtual {v9, v13}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 563
    add-int/lit8 v8, v8, 0x1

    .line 561
    :cond_1e
    add-int/lit8 v13, v13, 0x1

    goto :goto_14

    .line 566
    :cond_21
    new-array v10, v8, [Ljava/lang/String;

    .line 567
    .local v10, commentIds:[Ljava/lang/String;
    const/4 v13, 0x0

    const/4 v14, 0x0

    .local v14, j:I
    move v15, v14

    .end local v14           #j:I
    .local v15, j:I
    :goto_26
    if-ge v13, v7, :cond_53

    .line 568
    invoke-virtual {v9, v13}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_170

    .line 569
    invoke-virtual {v9, v13}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v17

    .line 572
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 574
    add-int/lit8 v14, v15, 0x1

    .end local v15           #j:I
    .restart local v14       #j:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v15

    .line 567
    :goto_4f
    add-int/lit8 v13, v13, 0x1

    move v15, v14

    .end local v14           #j:I
    .restart local v15       #j:I
    goto :goto_26

    .line 578
    :cond_53
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_174

    .line 643
    const/4 v1, 0x0

    :goto_5b
    return v1

    .line 580
    :pswitch_5c
    array-length v1, v10

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8e

    .line 582
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 584
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v12

    .line 585
    .local v12, editCommentId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getContentHtml()Ljava/lang/String;

    move-result-object v11

    .line 586
    .local v11, content:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-virtual {v1, v12, v11}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->openCommentEditor(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    .end local v11           #content:Ljava/lang/String;
    .end local v12           #editCommentId:Ljava/lang/String;
    :goto_8c
    const/4 v1, 0x1

    goto :goto_5b

    .line 590
    :cond_8e
    const-string v1, "PostCommentsFragment"

    const-string v2, "Multiple comments selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8c

    .line 596
    :pswitch_96
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-virtual {v1, v10}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->confirmDeleteComments([Ljava/lang/String;)V

    .line 597
    const/4 v1, 0x1

    goto :goto_5b

    .line 601
    :pswitch_9f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getAuthorId()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1300(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v20

    cmp-long v1, v18, v20

    if-nez v1, :cond_c5

    const/4 v1, 0x1

    :goto_c0
    invoke-virtual {v2, v1, v10}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->confirmReportComments(Z[Ljava/lang/String;)V

    .line 603
    const/4 v1, 0x1

    goto :goto_5b

    .line 601
    :cond_c5
    const/4 v1, 0x0

    goto :goto_c0

    .line 607
    :pswitch_c7
    array-length v1, v10

    const/4 v2, 0x1

    if-ne v1, v2, :cond_107

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 610
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, commentId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1300(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$300(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/plus/service/EsService;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 618
    .end local v4           #commentId:Ljava/lang/String;
    :goto_101
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 619
    const/4 v1, 0x1

    goto/16 :goto_5b

    .line 616
    :cond_107
    const-string v1, "PostCommentsFragment"

    const-string v2, "Multiple comments selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_101

    .line 623
    :pswitch_10f
    array-length v1, v10

    const/4 v2, 0x1

    if-ne v1, v2, :cond_168

    .line 624
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 626
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v4

    .line 627
    .restart local v4       #commentId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v16

    .line 628
    .local v16, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v16, :cond_166

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusoneId()Z

    move-result v1

    if-eqz v1, :cond_166

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v5

    .line 631
    .local v5, plusOneId:Ljava/lang/String;
    :goto_144
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1300(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$300(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/plus/service/EsService;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 638
    .end local v4           #commentId:Ljava/lang/String;
    .end local v5           #plusOneId:Ljava/lang/String;
    .end local v16           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :goto_160
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 639
    const/4 v1, 0x1

    goto/16 :goto_5b

    .line 628
    .restart local v4       #commentId:Ljava/lang/String;
    .restart local v16       #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_166
    const/4 v5, 0x0

    goto :goto_144

    .line 636
    .end local v4           #commentId:Ljava/lang/String;
    .end local v16           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_168
    const-string v1, "PostCommentsFragment"

    const-string v2, "Multiple comments selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_160

    :cond_170
    move v14, v15

    .end local v15           #j:I
    .restart local v14       #j:I
    goto/16 :goto_4f

    .line 578
    nop

    :pswitch_data_174
    .packed-switch 0x2
        :pswitch_5c
        :pswitch_96
        :pswitch_9f
        :pswitch_c7
        :pswitch_10f
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 10
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 467
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v1, p1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1202(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 469
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    const v3, 0x7f0700e9

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p2, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020090

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 472
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    const v3, 0x7f0700ea

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p2, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020098

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 475
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    const v2, 0x7f070108

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v5, v4, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020082

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 478
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    const v3, 0x7f0700f0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p2, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02009a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 481
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    const v3, 0x7f0700f1

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p2, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020081

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 486
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 487
    .local v0, checkItemsCount:I
    if-lez v0, :cond_9f

    .line 488
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    const v2, 0x7f0700fa

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 491
    :cond_9f
    return v6
.end method

.method public onDestroyActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)V
    .registers 4
    .parameter "actionMode"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1202(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 654
    return-void
.end method

.method public onItemCheckedStateChanged(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;IJZ)V
    .registers 12
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    const/4 v5, 0x0

    .line 662
    if-nez p2, :cond_f

    if-eqz p5, :cond_f

    .line 664
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, p2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 673
    :cond_e
    :goto_e
    return-void

    .line 666
    :cond_f
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 667
    .local v0, checkItemsCount:I
    if-lez v0, :cond_e

    .line 668
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    const v2, 0x7f0700fa

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 670
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    goto :goto_e
.end method

.method public onPrepareActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 19
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 499
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;
    invoke-static {v12}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1100(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/views/StreamRowView;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/apps/plus/views/StreamRowView;->getActivityId()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_10

    .line 500
    const/4 v12, 0x0

    .line 548
    :goto_f
    return v12

    .line 505
    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v12, v12, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v12, Landroid/widget/ListView;

    invoke-virtual {v12}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 506
    .local v4, checkedItems:Landroid/util/SparseBooleanArray;
    const/4 v3, 0x0

    .line 507
    .local v3, checkItemsCount:I
    const/4 v5, 0x0

    .line 509
    .local v5, commentId:Ljava/lang/String;
    const/4 v1, 0x1

    .line 510
    .local v1, allCommentsAreMine:Z
    const/4 v2, 0x1

    .line 511
    .local v2, allCommentsAreNotMine:Z
    const/4 v6, 0x0

    .local v6, i:I
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    .local v10, n:I
    :goto_25
    if-ge v6, v10, :cond_75

    .line 512
    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v12

    if-eqz v12, :cond_6e

    .line 513
    add-int/lit8 v3, v3, 0x1

    .line 514
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v12, v12, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v12, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v4, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getItem(I)Ljava/lang/Object;

    .line 515
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v12, v12, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v12, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getAuthorId()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v14}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1300(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_71

    const/4 v7, 0x1

    .line 516
    .local v7, myComment:Z
    :goto_5d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v12, v12, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v12, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v5

    .line 517
    and-int/2addr v1, v7

    .line 518
    if-nez v7, :cond_73

    const/4 v12, 0x1

    :goto_6d
    and-int/2addr v2, v12

    .line 511
    .end local v7           #myComment:Z
    :cond_6e
    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    .line 515
    :cond_71
    const/4 v7, 0x0

    goto :goto_5d

    .line 518
    .restart local v7       #myComment:Z
    :cond_73
    const/4 v12, 0x0

    goto :goto_6d

    .line 522
    .end local v7           #myComment:Z
    :cond_75
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v12}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1300(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityView:Lcom/google/android/apps/plus/views/StreamRowView;
    invoke-static {v14}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$1100(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Lcom/google/android/apps/plus/views/StreamRowView;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/apps/plus/views/StreamRowView;->getAuthorId()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_104

    const/4 v9, 0x1

    .line 523
    .local v9, myPost:Z
    :goto_92
    const/4 v12, 0x1

    if-ne v3, v12, :cond_123

    .line 524
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mActivityId:Ljava/lang/String;
    invoke-static {v12}, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->access$300(Lcom/google/android/apps/plus/fragments/PostCommentsFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v5}, Lcom/google/android/apps/plus/service/EsService;->isCommentPlusOnePending(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10c

    .line 525
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PostCommentsFragment;

    iget-object v12, v12, Lcom/google/android/apps/plus/fragments/PostCommentsFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v12, Lcom/google/android/apps/plus/phone/CommentsAdapter;

    invoke-virtual {v12}, Lcom/google/android/apps/plus/phone/CommentsAdapter;->getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v11

    .line 526
    .local v11, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v11, :cond_106

    invoke-virtual {v11}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v12

    if-eqz v12, :cond_106

    const/4 v8, 0x1

    .line 529
    .local v8, myPlusOne:Z
    :goto_b8
    const/4 v12, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    if-nez v8, :cond_108

    const/4 v12, 0x1

    if-ne v3, v12, :cond_108

    const/4 v12, 0x1

    :goto_c5
    invoke-interface {v13, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 531
    const/4 v12, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    if-eqz v8, :cond_10a

    const/4 v12, 0x1

    if-ne v3, v12, :cond_10a

    const/4 v12, 0x1

    :goto_d5
    invoke-interface {v13, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 543
    .end local v8           #myPlusOne:Z
    .end local v11           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :goto_d8
    const/4 v12, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    if-eqz v1, :cond_147

    const/4 v12, 0x1

    if-ne v3, v12, :cond_147

    const/4 v12, 0x1

    :goto_e5
    invoke-interface {v13, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 545
    const/4 v12, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    invoke-interface {v12, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 546
    const/4 v12, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    if-nez v9, :cond_fd

    if-eqz v1, :cond_149

    :cond_fd
    const/4 v12, 0x1

    :goto_fe
    invoke-interface {v13, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 548
    const/4 v12, 0x0

    goto/16 :goto_f

    .line 522
    .end local v9           #myPost:Z
    :cond_104
    const/4 v9, 0x0

    goto :goto_92

    .line 526
    .restart local v9       #myPost:Z
    .restart local v11       #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_106
    const/4 v8, 0x0

    goto :goto_b8

    .line 529
    .restart local v8       #myPlusOne:Z
    :cond_108
    const/4 v12, 0x0

    goto :goto_c5

    .line 531
    :cond_10a
    const/4 v12, 0x0

    goto :goto_d5

    .line 534
    .end local v8           #myPlusOne:Z
    .end local v11           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_10c
    const/4 v12, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 535
    const/4 v12, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_d8

    .line 538
    :cond_123
    sget-boolean v12, Lcom/google/android/apps/plus/fragments/PostCommentsFragment$ActionModeCallback;->$assertionsDisabled:Z

    if-nez v12, :cond_130

    const/4 v12, 0x1

    if-gt v3, v12, :cond_130

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 539
    :cond_130
    const/4 v12, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 540
    const/4 v12, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_d8

    .line 543
    :cond_147
    const/4 v12, 0x0

    goto :goto_e5

    .line 546
    :cond_149
    const/4 v12, 0x0

    goto :goto_fe
.end method
