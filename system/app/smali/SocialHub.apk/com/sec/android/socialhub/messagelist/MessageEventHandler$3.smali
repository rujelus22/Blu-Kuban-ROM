.class Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;
.super Ljava/lang/Object;
.source "MessageEventHandler.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/socialhub/messagelist/MessageEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;


# direct methods
.method constructor <init>(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)V
    .registers 2
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 26
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    .line 123
    const/4 v15, 0x0

    .line 124
    .local v15, tempWrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;
    const/4 v14, 0x0

    .line 136
    .local v14, targetView:Landroid/view/View;
    move-object/from16 v0, p3

    instance-of v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_41

    move-object/from16 v18, p3

    .line 138
    check-cast v18, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v0, v18

    iget-object v14, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 145
    :cond_12
    :goto_12
    if-nez v14, :cond_52

    .line 147
    sget-object v18, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->TAG:Ljava/lang/String;

    const-string v19, "onCreateContextMenu()"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "targetView is null!!. info - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", view - "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_40
    :goto_40
    return-void

    .line 140
    :cond_41
    move-object/from16 v0, p3

    instance-of v0, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v18, p3

    .line 142
    check-cast v18, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object/from16 v0, v18

    iget-object v14, v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->targetView:Landroid/view/View;

    goto :goto_12

    .line 153
    :cond_52
    :try_start_52
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;

    move-object v15, v0
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5b} :catch_28e

    .line 161
    move-object/from16 v17, v15

    .line 163
    .local v17, wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 164
    .local v4, bSupportDelete:Ljava/lang/Boolean;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    move/from16 v18, v0

    const/16 v19, 0x258

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8b

    .line 166
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSpType:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v13

    .line 169
    .local v13, sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    const/16 v18, 0x18

    :try_start_7d
    move/from16 v0, v18

    invoke-interface {v13, v0}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v18

    if-nez v18, :cond_8b

    .line 170
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_8a
    .catch Lcom/sec/android/socialhub/exception/SocialHubGeneralException; {:try_start_7d .. :try_end_8a} :catch_294

    move-result-object v4

    .line 177
    .end local v13           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    :cond_8b
    :goto_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->access$000(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v18

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccountByType(I)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v3

    .line 179
    .local v3, account:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrMessageID:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Title"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_40

    .line 181
    if-eqz v3, :cond_40

    .line 183
    invoke-static {}, Lcom/sec/android/socialhub/messagelist/MessageListView;->getMessageViewMode()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_40

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->access$100(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f08001f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 188
    .local v16, title:Ljava/lang/String;
    const/16 v18, 0x14

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->isSupport(I)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f7

    .line 190
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f7

    .line 192
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miAppType:I

    move/from16 v18, v0

    sparse-switch v18, :sswitch_data_372

    .line 227
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 234
    :cond_f7
    :goto_f7
    const/16 v18, 0x15

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->isSupport(I)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_115

    .line 236
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrSubject:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_115

    .line 238
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrSubject:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 242
    :cond_115
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 244
    const/4 v10, 0x0

    .line 245
    .local v10, reply_msg:Landroid/view/MenuItem;
    const/4 v12, 0x0

    .line 246
    .local v12, send_msg:Landroid/view/MenuItem;
    const/4 v5, 0x0

    .line 247
    .local v5, delete_msg:Landroid/view/MenuItem;
    const/4 v9, 0x0

    .line 248
    .local v9, reply_all_msg:Landroid/view/MenuItem;
    const/4 v8, 0x0

    .line 249
    .local v8, mark_as_read:Landroid/view/MenuItem;
    const/4 v7, 0x0

    .line 251
    .local v7, fwd_msg:Landroid/view/MenuItem;
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->isSupport(I)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_173

    .line 257
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSnsReceiver:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_359

    .line 259
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->isSupport(I)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_346

    .line 260
    const v18, 0x7f08000d

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v10

    .line 267
    :goto_161
    if-eqz v10, :cond_173

    .line 269
    new-instance v18, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$1;-><init>(Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 282
    :cond_173
    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->isSupport(I)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a6

    .line 284
    const v18, 0x7f080010

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v7

    .line 286
    if-eqz v7, :cond_1a6

    .line 288
    new-instance v18, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$2;-><init>(Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 301
    :cond_1a6
    const/16 v18, 0x7

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->isSupport(I)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d9

    .line 303
    const v18, 0x7f080014

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v12

    .line 305
    if-eqz v12, :cond_1d9

    .line 307
    new-instance v18, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$3;-><init>(Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 320
    :cond_1d9
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_212

    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->isSupport(I)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_212

    .line 322
    const v18, 0x7f08000a

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v5

    .line 324
    if-eqz v5, :cond_212

    .line 326
    new-instance v18, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$4;-><init>(Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 339
    :cond_212
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->isSupport(I)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_253

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miSnsReceiver:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_253

    .line 341
    const v18, 0x7f080011

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v9

    .line 343
    if-eqz v9, :cond_253

    .line 345
    new-instance v18, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$5;-><init>(Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 358
    :cond_253
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->isSupport(I)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_40

    .line 362
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->miNew:I

    move/from16 v18, v0

    if-nez v18, :cond_36c

    .line 363
    const v11, 0x7f080012

    .line 367
    .local v11, resourceID:I
    :goto_26e
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v8

    .line 369
    if-eqz v8, :cond_40

    .line 371
    new-instance v18, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3$6;-><init>(Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;)V

    move-object/from16 v0, v18

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_40

    .line 155
    .end local v3           #account:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    .end local v4           #bSupportDelete:Ljava/lang/Boolean;
    .end local v5           #delete_msg:Landroid/view/MenuItem;
    .end local v7           #fwd_msg:Landroid/view/MenuItem;
    .end local v8           #mark_as_read:Landroid/view/MenuItem;
    .end local v9           #reply_all_msg:Landroid/view/MenuItem;
    .end local v10           #reply_msg:Landroid/view/MenuItem;
    .end local v11           #resourceID:I
    .end local v12           #send_msg:Landroid/view/MenuItem;
    .end local v16           #title:Ljava/lang/String;
    .end local v17           #wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;
    :catch_28e
    move-exception v6

    .line 157
    .local v6, e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_40

    .line 172
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v4       #bSupportDelete:Ljava/lang/Boolean;
    .restart local v13       #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .restart local v17       #wrapper:Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;
    :catch_294
    move-exception v6

    .line 173
    .local v6, e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    invoke-virtual {v6}, Lcom/sec/android/socialhub/exception/SocialHubGeneralException;->printStackTrace()V

    goto/16 :goto_8b

    .line 198
    .end local v6           #e:Lcom/sec/android/socialhub/exception/SocialHubGeneralException;
    .end local v13           #sns:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .restart local v3       #account:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    .restart local v16       #title:Ljava/lang/String;
    :sswitch_29a
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "CBmessages"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2bf

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->access$100(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080105

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_f7

    .line 202
    :cond_2bf
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "Push message"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2e4

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->access$100(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080106

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_f7

    .line 206
    :cond_2e4
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "-1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_309

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->access$100(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0800af

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_f7

    .line 212
    :cond_309
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 214
    goto/16 :goto_f7

    .line 219
    :sswitch_311
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrSubject:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_32f

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrSubject:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_32f

    .line 220
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageActivityWrapper;->mstrSubject:Ljava/lang/String;

    move-object/from16 v16, v0

    goto/16 :goto_f7

    .line 222
    :cond_32f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/socialhub/messagelist/MessageEventHandler$3;->this$0:Lcom/sec/android/socialhub/messagelist/MessageEventHandler;

    move-object/from16 v18, v0

    #getter for: Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/sec/android/socialhub/messagelist/MessageEventHandler;->access$100(Lcom/sec/android/socialhub/messagelist/MessageEventHandler;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f080026

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 224
    goto/16 :goto_f7

    .line 262
    .restart local v5       #delete_msg:Landroid/view/MenuItem;
    .restart local v7       #fwd_msg:Landroid/view/MenuItem;
    .restart local v8       #mark_as_read:Landroid/view/MenuItem;
    .restart local v9       #reply_all_msg:Landroid/view/MenuItem;
    .restart local v10       #reply_msg:Landroid/view/MenuItem;
    .restart local v12       #send_msg:Landroid/view/MenuItem;
    :cond_346
    const v18, 0x7f080011

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v10

    goto/16 :goto_161

    .line 265
    :cond_359
    const v18, 0x7f08000d

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->add(I)Landroid/view/MenuItem;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v10

    goto/16 :goto_161

    .line 365
    :cond_36c
    const v11, 0x7f080013

    .restart local v11       #resourceID:I
    goto/16 :goto_26e

    .line 192
    nop

    :sswitch_data_372
    .sparse-switch
        0xc8 -> :sswitch_29a
        0x12c -> :sswitch_29a
        0x136 -> :sswitch_29a
        0x190 -> :sswitch_311
        0x19a -> :sswitch_311
        0x384 -> :sswitch_29a
    .end sparse-switch
.end method
