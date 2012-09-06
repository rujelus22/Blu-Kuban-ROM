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
    .line 2000
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2001
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_13

    .line 2002
    new-instance v0, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;-><init>(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub$MultiChoiceCallbackStub;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 2006
    :goto_12
    return-void

    .line 2004
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    goto :goto_12
.end method


# virtual methods
.method public getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;
    .registers 2

    .prologue
    .line 2012
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->mActionModeStub:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->getCallback()Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    return-object v0
.end method

.method public onActionItemClicked(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/MenuItem;)Z
    .registers 22
    .parameter "actionMode"
    .parameter "menuItem"

    .prologue
    .line 2132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v9

    .line 2133
    .local v9, checkedItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 2134
    .local v7, checkItemsArrayCount:I
    const/4 v8, 0x0

    .line 2135
    .local v8, checkItemsCount:I
    const/16 v17, -0x1

    .line 2136
    .local v17, position:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_14
    if-ge v14, v7, :cond_25

    .line 2137
    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2138
    add-int/lit8 v8, v8, 0x1

    .line 2139
    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v17

    .line 2136
    :cond_22
    add-int/lit8 v14, v14, 0x1

    goto :goto_14

    .line 2143
    :cond_25
    invoke-interface/range {p2 .. p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_24e

    .line 2257
    :goto_2c
    const/4 v1, 0x1

    :goto_2d
    return v1

    .line 2145
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v2, 0x7f080179

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    if-ne v8, v1, :cond_99

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v3, 0x7f080181

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_47
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v6, 0x7f080209

    invoke-virtual {v3, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v18, 0x7f08020a

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v3, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v12

    .line 2151
    .local v12, dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 2154
    new-array v10, v8, [Ljava/lang/String;

    .line 2155
    .local v10, commentIds:[Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x0

    .local v15, j:I
    :goto_6f
    if-ge v14, v7, :cond_a5

    .line 2156
    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 2158
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 2159
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v15

    .line 2160
    add-int/lit8 v15, v15, 0x1

    .line 2155
    :cond_96
    add-int/lit8 v14, v14, 0x1

    goto :goto_6f

    .line 2145
    .end local v10           #commentIds:[Ljava/lang/String;
    .end local v12           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .end local v15           #j:I
    :cond_99
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v3, 0x7f080182

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_47

    .line 2164
    .restart local v10       #commentIds:[Ljava/lang/String;
    .restart local v12       #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .restart local v15       #j:I
    :cond_a5
    invoke-virtual {v12}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "comments"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "remove_comment"

    invoke-virtual {v12, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 2171
    .end local v10           #commentIds:[Ljava/lang/String;
    .end local v12           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .end local v15           #j:I
    :pswitch_bd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v2, 0x7f080178

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    if-ne v8, v1, :cond_128

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v3, 0x7f080183

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_d6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v6, 0x7f080209

    invoke-virtual {v3, v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v18, 0x7f08020a

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v1, v3, v6}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;

    move-result-object v12

    .line 2177
    .restart local v12       #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 2180
    new-array v10, v8, [Ljava/lang/String;

    .line 2181
    .restart local v10       #commentIds:[Ljava/lang/String;
    const/4 v14, 0x0

    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_fe
    if-ge v14, v7, :cond_134

    .line 2182
    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 2184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 2185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v15

    .line 2186
    add-int/lit8 v15, v15, 0x1

    .line 2181
    :cond_125
    add-int/lit8 v14, v14, 0x1

    goto :goto_fe

    .line 2171
    .end local v10           #commentIds:[Ljava/lang/String;
    .end local v12           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .end local v15           #j:I
    :cond_128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v3, 0x7f080184

    invoke-virtual {v1, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_d6

    .line 2190
    .restart local v10       #commentIds:[Ljava/lang/String;
    .restart local v12       #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .restart local v15       #j:I
    :cond_134
    invoke-virtual {v12}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "comments"

    invoke-virtual {v1, v2, v10}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2191
    invoke-virtual {v12}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "delete"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1400(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;
    invoke-static {v6}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$700(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2193
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "report_comment"

    invoke-virtual {v12, v1, v2}, Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 2199
    .end local v10           #commentIds:[Ljava/lang/String;
    .end local v12           #dialog:Lcom/google/android/apps/plus/fragments/AlertFragmentDialog;
    .end local v15           #j:I
    :pswitch_169
    const/4 v1, 0x1

    if-ne v8, v1, :cond_19e

    .line 2201
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 2203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v13

    .line 2204
    .local v13, editCommentId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCommentContentHtml()Ljava/lang/String;

    move-result-object v11

    .line 2205
    .local v11, content:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v1, v13, v11}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->openCommentEditor(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    .end local v11           #content:Ljava/lang/String;
    .end local v13           #editCommentId:Ljava/lang/String;
    :goto_198
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 2212
    const/4 v1, 0x1

    goto/16 :goto_2d

    .line 2209
    :cond_19e
    const-string v1, "PhotoViewFragment"

    const-string v2, "Multiple comments selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_198

    .line 2216
    :pswitch_1a6
    const/4 v1, 0x1

    if-ne v8, v1, :cond_1e5

    .line 2218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 2219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v4

    .line 2221
    .local v4, commentId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1400(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActivityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1500(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/plus/service/EsService;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2228
    .end local v4           #commentId:Ljava/lang/String;
    :goto_1df
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 2229
    const/4 v1, 0x1

    goto/16 :goto_2d

    .line 2226
    :cond_1e5
    const-string v1, "PhotoViewFragment"

    const-string v2, "Multiple comments selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1df

    .line 2233
    :pswitch_1ed
    const/4 v1, 0x1

    if-ne v8, v1, :cond_245

    .line 2235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    move/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 2236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCommentId()Ljava/lang/String;

    move-result-object v4

    .line 2237
    .restart local v4       #commentId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v1, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v16

    .line 2238
    .local v16, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v16, :cond_243

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->hasPlusoneId()Z

    move-result v1

    if-eqz v1, :cond_243

    invoke-virtual/range {v16 .. v16}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusoneId()Ljava/lang/String;

    move-result-object v5

    .line 2241
    .local v5, plusOneId:Ljava/lang/String;
    :goto_221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1400(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActivityId:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1500(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/google/android/apps/plus/service/EsService;->plusOneComment(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2248
    .end local v4           #commentId:Ljava/lang/String;
    .end local v5           #plusOneId:Ljava/lang/String;
    .end local v16           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :goto_23d
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->finish()V

    .line 2249
    const/4 v1, 0x1

    goto/16 :goto_2d

    .line 2238
    .restart local v4       #commentId:Ljava/lang/String;
    .restart local v16       #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_243
    const/4 v5, 0x0

    goto :goto_221

    .line 2246
    .end local v4           #commentId:Ljava/lang/String;
    .end local v16           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_245
    const-string v1, "PhotoViewFragment"

    const-string v2, "Multiple comments selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23d

    .line 2143
    nop

    :pswitch_data_24e
    .packed-switch 0x2
        :pswitch_169
        :pswitch_2e
        :pswitch_bd
        :pswitch_1a6
        :pswitch_1ed
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

    .line 2020
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #setter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v1, p1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1302(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 2032
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v2, 0x7f08019a

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v5, v4, v5, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200f8

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2036
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v3, 0x7f080178

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p2, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020113

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2040
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v3, 0x7f080179

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p2, v5, v1, v5, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200f6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2046
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v1, v1, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v1, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/views/PhotoListView;->getCheckedItemCount()I

    move-result v0

    .line 2047
    .local v0, checkItemsCount:I
    if-lez v0, :cond_6f

    .line 2048
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v2, 0x7f080185

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 2051
    :cond_6f
    return v6
.end method

.method public onDestroyActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)V
    .registers 4
    .parameter "actionMode"

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mActionMode:Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1302(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;)Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;

    .line 2263
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

    .line 2269
    if-eqz p5, :cond_25

    .line 2270
    const/4 v1, 0x0

    .line 2272
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

    .line 2276
    :goto_12
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_25

    .line 2278
    :cond_1b
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v2, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v2, p2, v6}, Lcom/google/android/apps/plus/views/PhotoListView;->setItemChecked(IZ)V

    .line 2288
    .end local v1           #type:Ljava/lang/Integer;
    :cond_24
    :goto_24
    return-void

    .line 2283
    :cond_25
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v2, v2, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v2, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/views/PhotoListView;->getCheckedItemCount()I

    move-result v0

    .line 2284
    .local v0, checkItemsCount:I
    if-lez v0, :cond_24

    .line 2285
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    const v3, 0x7f080185

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->setTitle(Ljava/lang/CharSequence;)V

    .line 2286
    invoke-virtual {p1}, Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;->invalidate()V

    goto :goto_24

    .line 2273
    .end local v0           #checkItemsCount:I
    .restart local v1       #type:Ljava/lang/Integer;
    :catch_4a
    move-exception v2

    goto :goto_12
.end method

.method public onPrepareActionMode(Lcom/google/android/apps/plus/platform/MultiChoiceActionModeStub;Landroid/view/Menu;)Z
    .registers 16
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 2056
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v11, v11, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v11, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v11

    if-nez v11, :cond_e

    .line 2059
    const/4 v11, 0x0

    .line 2126
    :goto_d
    return v11

    .line 2062
    :cond_e
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v11}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1400(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mOwnerId:Ljava/lang/String;
    invoke-static {v12}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$700(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v7

    .line 2066
    .local v7, myPicture:Z
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v11, v11, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mListView:Landroid/widget/AbsListView;

    check-cast v11, Lcom/google/android/apps/plus/views/PhotoListView;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/views/PhotoListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 2067
    .local v4, checkedItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 2068
    .local v2, checkItemsArrayCount:I
    const/4 v3, 0x0

    .line 2069
    .local v3, checkItemsCount:I
    const/4 v10, -0x1

    .line 2070
    .local v10, singleItemIndex:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2f
    if-ge v5, v2, :cond_3d

    .line 2071
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 2072
    add-int/lit8 v3, v3, 0x1

    .line 2073
    move v10, v5

    .line 2070
    :cond_3a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 2077
    :cond_3d
    const/4 v11, 0x1

    if-ne v3, v11, :cond_9d

    .line 2078
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v11, v11, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v11, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v4, v10}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 2079
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v11}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1400(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v12

    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v11, v11, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v11, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getAuthorGaiaId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v6

    .line 2081
    .local v6, myComment:Z
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v11, v11, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v11, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getPlusOneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;

    move-result-object v9

    .line 2082
    .local v9, plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    if-eqz v9, :cond_97

    invoke-virtual {v9}, Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;->getPlusonedByViewer()Z

    move-result v11

    if-eqz v11, :cond_97

    const/4 v8, 0x1

    .line 2095
    .local v8, myPlusOne:Z
    :goto_74
    const/4 v11, 0x4

    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    if-nez v6, :cond_99

    const/4 v11, 0x1

    :goto_7c
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2096
    const/4 v11, 0x3

    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    if-nez v7, :cond_88

    if-eqz v6, :cond_9b

    :cond_88
    const/4 v11, 0x1

    :goto_89
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2097
    const/4 v11, 0x2

    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2126
    .end local v6           #myComment:Z
    .end local v8           #myPlusOne:Z
    .end local v9           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :goto_94
    const/4 v11, 0x0

    goto/16 :goto_d

    .line 2082
    .restart local v6       #myComment:Z
    .restart local v9       #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_97
    const/4 v8, 0x0

    goto :goto_74

    .line 2095
    .restart local v8       #myPlusOne:Z
    :cond_99
    const/4 v11, 0x0

    goto :goto_7c

    .line 2096
    :cond_9b
    const/4 v11, 0x0

    goto :goto_89

    .line 2105
    .end local v6           #myComment:Z
    .end local v8           #myPlusOne:Z
    .end local v9           #plusOneData:Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
    :cond_9d
    const/4 v0, 0x1

    .line 2106
    .local v0, allCommentsAreMine:Z
    const/4 v1, 0x0

    .line 2107
    .local v1, anyCommentIsMine:Z
    const/4 v5, 0x0

    :goto_a0
    if-ge v5, v2, :cond_de

    .line 2108
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v11

    if-eqz v11, :cond_d7

    .line 2109
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v11, v11, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v11, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    .line 2110
    if-nez v0, :cond_b9

    if-nez v1, :cond_de

    .line 2111
    :cond_b9
    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-static {v11}, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->access$1400(Lcom/google/android/apps/plus/fragments/PhotoViewFragment;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v12

    iget-object v11, p0, Lcom/google/android/apps/plus/fragments/PhotoViewFragment$ActionModeCallback;->this$0:Lcom/google/android/apps/plus/fragments/PhotoViewFragment;

    iget-object v11, v11, Lcom/google/android/apps/plus/fragments/PhotoViewFragment;->mAdapter:Lcom/google/android/apps/plus/phone/EsCursorAdapter;

    check-cast v11, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;

    invoke-virtual {v11}, Lcom/google/android/apps/plus/phone/PhotoViewAdapter;->getAuthorGaiaId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/google/android/apps/plus/content/EsAccount;->isMyGaiaId(Ljava/lang/String;)Z

    move-result v6

    .line 2113
    .restart local v6       #myComment:Z
    if-eqz v0, :cond_da

    if-eqz v6, :cond_da

    const/4 v0, 0x1

    .line 2114
    :goto_d2
    if-nez v1, :cond_d6

    if-eqz v6, :cond_dc

    :cond_d6
    const/4 v1, 0x1

    .line 2107
    .end local v6           #myComment:Z
    :cond_d7
    :goto_d7
    add-int/lit8 v5, v5, 0x1

    goto :goto_a0

    .line 2113
    .restart local v6       #myComment:Z
    :cond_da
    const/4 v0, 0x0

    goto :goto_d2

    .line 2114
    :cond_dc
    const/4 v1, 0x0

    goto :goto_d7

    .line 2121
    .end local v6           #myComment:Z
    :cond_de
    const/4 v11, 0x4

    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    if-nez v1, :cond_100

    const/4 v11, 0x1

    :goto_e6
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2122
    const/4 v11, 0x3

    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    if-nez v7, :cond_f2

    if-eqz v0, :cond_102

    :cond_f2
    const/4 v11, 0x1

    :goto_f3
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2123
    const/4 v11, 0x2

    invoke-interface {p2, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_94

    .line 2121
    :cond_100
    const/4 v11, 0x0

    goto :goto_e6

    .line 2122
    :cond_102
    const/4 v11, 0x0

    goto :goto_f3
.end method
