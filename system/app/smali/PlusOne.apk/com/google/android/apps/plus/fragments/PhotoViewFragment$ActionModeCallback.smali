.class Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;
.super Ljava/lang/Object;
.source "PhotoViewFragment.java"

# interfaces
.implements Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/PhotoViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallback"
.end annotation


# instance fields
.field private final mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)V
    .registers 4
    .parameter

    .prologue
    .line 1685
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1686
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 1687
    new-instance v0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;-><init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 1691
    :goto_12
    return-void

    .line 1689
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    goto :goto_12
.end method


# virtual methods
.method public getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;
    .registers 2

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    return-object v0
.end method

.method public onActionItemClicked(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/MenuItem;)Z
    .registers 23
    .parameter "actionMode"
    .parameter "menuItem"

    .prologue
    .line 1807
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v9

    .line 1808
    .local v9, checkedItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 1809
    .local v7, checkItemsArrayCount:I
    const/4 v8, 0x0

    .line 1810
    .local v8, checkItemsCount:I
    const/4 v15, -0x1

    .line 1811
    .local v15, position:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_13
    if-ge v12, v7, :cond_24

    .line 1812
    invoke-virtual {v9, v12}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1813
    add-int/lit8 v8, v8, 0x1

    .line 1814
    invoke-virtual {v9, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    .line 1811
    :cond_21
    add-int/lit8 v12, v12, 0x1

    goto :goto_13

    .line 1818
    :cond_24
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_212

    .line 1915
    :goto_2b
    const/4 v1, 0x1

    :goto_2c
    return v1

    .line 1820
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v2, 0x7f0700f1

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    if-ne v8, v1, :cond_98

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v3, 0x7f0700f6

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_46
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v6, 0x7f070168

    invoke-virtual {v3, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v16, 0x7f070169

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v3, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v11

    .line 1826
    .local v11, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1829
    new-array v10, v8, [Ljava/lang/String;

    .line 1830
    .local v10, commentIds:[Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x0

    .local v13, j:I
    :goto_6e
    if-ge v12, v7, :cond_a4

    .line 1831
    invoke-virtual {v9, v12}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 1833
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v9, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 1834
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v13

    .line 1835
    add-int/lit8 v13, v13, 0x1

    .line 1830
    :cond_95
    add-int/lit8 v12, v12, 0x1

    goto :goto_6e

    .line 1820
    .end local v10           #commentIds:[Ljava/lang/String;
    .end local v11           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .end local v13           #j:I
    :cond_98
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v3, 0x7f0700f7

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_46

    .line 1839
    .restart local v10       #commentIds:[Ljava/lang/String;
    .restart local v11       #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .restart local v13       #j:I
    :cond_a4
    invoke-virtual {v11}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "comments"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1840
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "remove_comment"

    invoke-virtual {v11, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 1846
    .end local v10           #commentIds:[Ljava/lang/String;
    .end local v11           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .end local v13           #j:I
    :pswitch_bc
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v2, 0x7f0700f0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    if-ne v8, v1, :cond_127

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v3, 0x7f0700f8

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_d5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v6, 0x7f070168

    invoke-virtual {v3, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v16, 0x7f070169

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v3, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v11

    .line 1852
    .restart local v11       #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 1855
    new-array v10, v8, [Ljava/lang/String;

    .line 1856
    .restart local v10       #commentIds:[Ljava/lang/String;
    const/4 v12, 0x0

    const/4 v13, 0x0

    .restart local v13       #j:I
    :goto_fd
    if-ge v12, v7, :cond_133

    .line 1857
    invoke-virtual {v9, v12}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_124

    .line 1859
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v9, v12}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 1860
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v13

    .line 1861
    add-int/lit8 v13, v13, 0x1

    .line 1856
    :cond_124
    add-int/lit8 v12, v12, 0x1

    goto :goto_fd

    .line 1846
    .end local v10           #commentIds:[Ljava/lang/String;
    .end local v11           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .end local v13           #j:I
    :cond_127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v3, 0x7f0700f9

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d5

    .line 1865
    .restart local v10       #commentIds:[Ljava/lang/String;
    .restart local v11       #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .restart local v13       #j:I
    :cond_133
    invoke-virtual {v11}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "comments"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1866
    invoke-virtual {v11}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "delete"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$300(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$400(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)J

    move-result-wide v18

    cmp-long v1, v16, v18

    if-nez v1, :cond_16d

    const/4 v1, 0x1

    :goto_15b
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1868
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "report_comment"

    invoke-virtual {v11, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 1866
    :cond_16d
    const/4 v1, 0x0

    goto :goto_15b

    .line 1874
    .end local v10           #commentIds:[Ljava/lang/String;
    .end local v11           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .end local v13           #j:I
    :pswitch_16f
    const/4 v1, 0x1

    if-ne v8, v1, :cond_1ac

    .line 1876
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v1, v15}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 1877
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v4

    .line 1879
    .local v4, commentId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$300(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActivityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1200(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/plus/service/EsService;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1886
    .end local v4           #commentId:Ljava/lang/String;
    :goto_1a6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 1887
    const/4 v1, 0x1

    goto/16 :goto_2c

    .line 1884
    :cond_1ac
    const-string v1, "PhotoViewFragment"

    const-string v2, "Multiple comments selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a6

    .line 1891
    :pswitch_1b4
    const/4 v1, 0x1

    if-ne v8, v1, :cond_20a

    .line 1893
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v1, v15}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 1894
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v4

    .line 1895
    .restart local v4       #commentId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v14

    .line 1896
    .local v14, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v14, :cond_208

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusoneId()Z

    move-result v1

    if-eqz v1, :cond_208

    invoke-virtual {v14}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v5

    .line 1899
    .local v5, plusOneId:Ljava/lang/String;
    :goto_1e6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$300(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActivityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1200(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/plus/service/EsService;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1906
    .end local v4           #commentId:Ljava/lang/String;
    .end local v5           #plusOneId:Ljava/lang/String;
    .end local v14           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :goto_202
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 1907
    const/4 v1, 0x1

    goto/16 :goto_2c

    .line 1896
    .restart local v4       #commentId:Ljava/lang/String;
    .restart local v14       #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_208
    const/4 v5, 0x0

    goto :goto_1e6

    .line 1904
    .end local v4           #commentId:Ljava/lang/String;
    .end local v14           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_20a
    const-string v1, "PhotoViewFragment"

    const-string v2, "Multiple comments selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_202

    .line 1818
    :pswitch_data_212
    .packed-switch 0x3
        :pswitch_2d
        :pswitch_bc
        :pswitch_16f
        :pswitch_1b4
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 10
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1705
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v1, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1102(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 1715
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v3, 0x7f0700f0

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p2, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02009a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1718
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v3, 0x7f0700f1

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p2, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020081

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1723
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoListView;->getCheckedItemCount()I

    move-result v0

    .line 1724
    .local v0, checkItemsCount:I
    if-lez v0, :cond_58

    .line 1725
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v2, 0x7f0700fa

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 1728
    :cond_58
    return v6
.end method

.method public onDestroyActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)V
    .registers 4
    .parameter "actionMode"

    .prologue
    .line 1920
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1102(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 1921
    return-void
.end method

.method public onItemCheckedStateChanged(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;IJZ)V
    .registers 13
    .parameter "mode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    const/4 v6, 0x0

    .line 1927
    if-eqz p5, :cond_25

    .line 1928
    const/4 v1, 0x0

    .line 1930
    .local v1, type:Ljava/lang/Integer;
    :try_start_4
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v2, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v2, p2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItemViewType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_11
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_11} :catch_4a

    move-result-object v1

    .line 1934
    :goto_12
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_25

    .line 1936
    :cond_1b
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v2, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v2, p2, v6}, Lcom/google/android/apps/plus/views/PhotoListView;->setItemChecked(IZ)V

    .line 1946
    .end local v1           #type:Ljava/lang/Integer;
    :cond_24
    :goto_24
    return-void

    .line 1941
    :cond_25
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v2, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/PhotoListView;->getCheckedItemCount()I

    move-result v0

    .line 1942
    .local v0, checkItemsCount:I
    if-lez v0, :cond_24

    .line 1943
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v3, 0x7f0700fa

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 1944
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    goto :goto_24

    .line 1931
    .end local v0           #checkItemsCount:I
    .restart local v1       #type:Ljava/lang/Integer;
    :catch_4a
    move-exception v2

    goto :goto_12
.end method

.method public onPrepareActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 19
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 1733
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v14, v14, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v14, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v14}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v14

    if-nez v14, :cond_10

    .line 1736
    const/4 v14, 0x0

    .line 1801
    :goto_f
    return v14

    .line 1739
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v14}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$300(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v12

    .line 1740
    .local v12, userId:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:J
    invoke-static {v14}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$400(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)J

    move-result-wide v14

    cmp-long v14, v12, v14

    if-nez v14, :cond_4a

    const/4 v8, 0x1

    .line 1744
    .local v8, myPicture:Z
    :goto_29
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v14, v14, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v14, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v14}, Lcom/google/android/apps/plus/views/PhotoListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    .line 1745
    .local v5, checkedItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 1746
    .local v3, checkItemsArrayCount:I
    const/4 v4, 0x0

    .line 1747
    .local v4, checkItemsCount:I
    const/4 v11, -0x1

    .line 1748
    .local v11, singleItemIndex:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3c
    if-ge v6, v3, :cond_4c

    .line 1749
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v14

    if-eqz v14, :cond_47

    .line 1750
    add-int/lit8 v4, v4, 0x1

    .line 1751
    move v11, v6

    .line 1748
    :cond_47
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 1740
    .end local v3           #checkItemsArrayCount:I
    .end local v4           #checkItemsCount:I
    .end local v5           #checkedItems:Landroid/util/SparseBooleanArray;
    .end local v6           #i:I
    .end local v8           #myPicture:Z
    .end local v11           #singleItemIndex:I
    :cond_4a
    const/4 v8, 0x0

    goto :goto_29

    .line 1755
    .restart local v3       #checkItemsArrayCount:I
    .restart local v4       #checkItemsCount:I
    .restart local v5       #checkedItems:Landroid/util/SparseBooleanArray;
    .restart local v6       #i:I
    .restart local v8       #myPicture:Z
    .restart local v11       #singleItemIndex:I
    :cond_4c
    const/4 v14, 0x1

    if-ne v4, v14, :cond_ab

    .line 1756
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v14, v14, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v14, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v5, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 1757
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v14, v14, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v14, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v14}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getAuthorId()J

    move-result-wide v14

    cmp-long v14, v14, v12

    if-nez v14, :cond_a3

    const/4 v7, 0x1

    .line 1759
    .local v7, myComment:Z
    :goto_6f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v14, v14, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v14, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v14}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v10

    .line 1760
    .local v10, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v10, :cond_a5

    invoke-virtual {v10}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v14

    if-eqz v14, :cond_a5

    const/4 v9, 0x1

    .line 1773
    .local v9, myPlusOne:Z
    :goto_84
    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    if-nez v7, :cond_a7

    const/4 v14, 0x1

    :goto_8e
    invoke-interface {v15, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1774
    const/4 v14, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    if-nez v8, :cond_9c

    if-eqz v7, :cond_a9

    :cond_9c
    const/4 v14, 0x1

    :goto_9d
    invoke-interface {v15, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1801
    .end local v7           #myComment:Z
    .end local v9           #myPlusOne:Z
    .end local v10           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :goto_a0
    const/4 v14, 0x0

    goto/16 :goto_f

    .line 1757
    :cond_a3
    const/4 v7, 0x0

    goto :goto_6f

    .line 1760
    .restart local v7       #myComment:Z
    .restart local v10       #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_a5
    const/4 v9, 0x0

    goto :goto_84

    .line 1773
    .restart local v9       #myPlusOne:Z
    :cond_a7
    const/4 v14, 0x0

    goto :goto_8e

    .line 1774
    :cond_a9
    const/4 v14, 0x0

    goto :goto_9d

    .line 1782
    .end local v7           #myComment:Z
    .end local v9           #myPlusOne:Z
    .end local v10           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_ab
    const/4 v1, 0x1

    .line 1783
    .local v1, allCommentsAreMine:Z
    const/4 v2, 0x0

    .line 1784
    .local v2, anyCommentIsMine:Z
    const/4 v6, 0x0

    :goto_ae
    if-ge v6, v3, :cond_ed

    .line 1785
    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v14

    if-eqz v14, :cond_e4

    .line 1786
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v14, v14, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v14, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v5, v6}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 1787
    if-nez v1, :cond_c9

    if-nez v2, :cond_ed

    .line 1788
    :cond_c9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v14, v14, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v14, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v14}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getAuthorId()J

    move-result-wide v14

    cmp-long v14, v14, v12

    if-nez v14, :cond_e7

    const/4 v7, 0x1

    .line 1789
    .restart local v7       #myComment:Z
    :goto_da
    if-eqz v1, :cond_e9

    if-eqz v7, :cond_e9

    const/4 v1, 0x1

    .line 1790
    :goto_df
    if-nez v2, :cond_e3

    if-eqz v7, :cond_eb

    :cond_e3
    const/4 v2, 0x1

    .line 1784
    .end local v7           #myComment:Z
    :cond_e4
    :goto_e4
    add-int/lit8 v6, v6, 0x1

    goto :goto_ae

    .line 1788
    :cond_e7
    const/4 v7, 0x0

    goto :goto_da

    .line 1789
    .restart local v7       #myComment:Z
    :cond_e9
    const/4 v1, 0x0

    goto :goto_df

    .line 1790
    :cond_eb
    const/4 v2, 0x0

    goto :goto_e4

    .line 1797
    .end local v7           #myComment:Z
    :cond_ed
    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    if-nez v2, :cond_10a

    const/4 v14, 0x1

    :goto_f7
    invoke-interface {v15, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1798
    const/4 v14, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    if-nez v8, :cond_105

    if-eqz v1, :cond_10c

    :cond_105
    const/4 v14, 0x1

    :goto_106
    invoke-interface {v15, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_a0

    .line 1797
    :cond_10a
    const/4 v14, 0x0

    goto :goto_f7

    .line 1798
    :cond_10c
    const/4 v14, 0x0

    goto :goto_106
.end method
