.class public Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;
.super Lcom/sec/android/socialhub/dialog/AbsListDialog;
.source "SocialHubComposeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter;
    }
.end annotation


# instance fields
.field protected mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 6
    .parameter "context"
    .parameter "object"
    .parameter "icon"
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/socialhub/dialog/AbsListDialog;-><init>(Landroid/content/Context;Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 62
    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->mArrayList:Ljava/util/ArrayList;

    .line 64
    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->mManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->mArrayList:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->mManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    .line 73
    return-void
.end method


# virtual methods
.method public getDialogAdapter(Ljava/lang/Object;)Landroid/widget/ListAdapter;
    .registers 30
    .parameter "object"

    .prologue
    .line 205
    const/4 v13, 0x0

    .line 207
    .local v13, dialogAdapter:Landroid/widget/ListAdapter;
    const/4 v12, 0x0

    .line 211
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/android/socialhub/unifiedinbox/Uinbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/socialhub/unifiedinbox/Uinbox$UinboxColumn;->UINBOX_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_order, account_id asc"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 213
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 214
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 216
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 218
    .local v11, count:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_26
    move/from16 v0, v19

    if-ge v0, v11, :cond_354

    .line 220
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v18, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x5

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 223
    .local v17, email:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 224
    .local v8, account:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 225
    .local v20, id:I
    const/16 v2, 0x8

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 227
    .local v24, presence:I
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 229
    .local v10, app:Ljava/lang/String;
    const/16 v2, 0xd

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 231
    .local v15, display_name:Ljava/lang/String;
    if-eqz v10, :cond_a7

    .line 233
    const-string v2, "1_Messaging"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 236
    const-string v2, "Icon"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getMessageIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    const-string v2, "Account"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f08008a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v2, "Premium"

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v2, "Type"

    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v2, "ID"

    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->mArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_a7
    :goto_a7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    .line 218
    :goto_aa
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_26

    .line 245
    :cond_ae
    const-string v2, "2_Email"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15d

    .line 247
    const-string v2, "2_Email"

    invoke-static {v8, v2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getUinboxIDFromAccount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 248
    .local v21, isp:I
    const-string v2, "Icon"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    move/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v3, v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getDrawableByISP(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    move-object/from16 v23, v15

    .line 251
    .local v23, name:Ljava/lang/String;
    if-eqz v23, :cond_143

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_143

    .line 253
    const-string v2, "Account"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :goto_e6
    const-string v2, "Premium"

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v2, "Email"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v2, "Type"

    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v2, "ID"

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->mArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11c
    .catchall {:try_start_2 .. :try_end_11c} :catchall_155
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11c} :catch_11d

    goto :goto_a7

    .line 374
    .end local v8           #account:Ljava/lang/String;
    .end local v10           #app:Ljava/lang/String;
    .end local v11           #count:I
    .end local v15           #display_name:Ljava/lang/String;
    .end local v17           #email:Ljava/lang/String;
    .end local v18           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19           #i:I
    .end local v20           #id:I
    .end local v21           #isp:I
    .end local v23           #name:Ljava/lang/String;
    .end local v24           #presence:I
    :catch_11d
    move-exception v16

    .line 376
    .local v16, e:Ljava/lang/Exception;
    :try_start_11e
    const-string v2, "SocialHubComposeDialog"

    const-string v3, "showDialog()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13c
    .catchall {:try_start_11e .. :try_end_13c} :catchall_155

    .line 380
    if-eqz v12, :cond_142

    .line 382
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 383
    const/4 v12, 0x0

    .line 387
    .end local v16           #e:Ljava/lang/Exception;
    :cond_142
    :goto_142
    return-object v13

    .line 257
    .restart local v8       #account:Ljava/lang/String;
    .restart local v10       #app:Ljava/lang/String;
    .restart local v11       #count:I
    .restart local v15       #display_name:Ljava/lang/String;
    .restart local v17       #email:Ljava/lang/String;
    .restart local v18       #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19       #i:I
    .restart local v20       #id:I
    .restart local v21       #isp:I
    .restart local v23       #name:Ljava/lang/String;
    .restart local v24       #presence:I
    :cond_143
    :try_start_143
    const-string v2, "Account"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    move/from16 v0, v21

    invoke-static {v3, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getISPStringFromUinboxID(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_154
    .catchall {:try_start_143 .. :try_end_154} :catchall_155
    .catch Ljava/lang/Exception; {:try_start_143 .. :try_end_154} :catch_11d

    goto :goto_e6

    .line 380
    .end local v8           #account:Ljava/lang/String;
    .end local v10           #app:Ljava/lang/String;
    .end local v11           #count:I
    .end local v15           #display_name:Ljava/lang/String;
    .end local v17           #email:Ljava/lang/String;
    .end local v18           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v19           #i:I
    .end local v20           #id:I
    .end local v21           #isp:I
    .end local v23           #name:Ljava/lang/String;
    .end local v24           #presence:I
    :catchall_155
    move-exception v2

    if-eqz v12, :cond_15c

    .line 382
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 383
    const/4 v12, 0x0

    :cond_15c
    throw v2

    .line 268
    .restart local v8       #account:Ljava/lang/String;
    .restart local v10       #app:Ljava/lang/String;
    .restart local v11       #count:I
    .restart local v15       #display_name:Ljava/lang/String;
    .restart local v17       #email:Ljava/lang/String;
    .restart local v18       #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v19       #i:I
    .restart local v20       #id:I
    .restart local v24       #presence:I
    :cond_15d
    :try_start_15d
    const-string v2, "3_SevenEmail"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_246

    .line 271
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-gtz v2, :cond_171

    .line 273
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_aa

    .line 277
    :cond_171
    const-string v2, "3_SevenEmail"

    invoke-static {v8, v2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getUinboxIDFromAccount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 278
    .restart local v21       #isp:I
    const-string v2, "Icon"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    move/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v3, v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getDrawableByISP(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    move-object/from16 v23, v15

    .line 282
    .restart local v23       #name:Ljava/lang/String;
    if-eqz v23, :cond_222

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_222

    .line 284
    const-string v2, "Account"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :goto_1a1
    const-string v2, "Premium"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f02

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v2, "Email"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    const-string v2, "Type"

    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->mManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    invoke-virtual {v2}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->isCombinedEmail()Z

    move-result v2

    if-eqz v2, :cond_235

    .line 298
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 300
    .local v25, real_id:I
    if-gtz v25, :cond_20c

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->mManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    const-string v3, "3_SevenEmail"

    invoke-virtual {v2, v3}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v27

    check-cast v27, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;

    .line 303
    .local v27, seven:Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;->getAccountIdFromEmail(Ljava/lang/String;)I

    move-result v25

    .line 305
    const-string v2, "SocialHubComposeDialog"

    const-string v3, "getAdapter()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "real_id was not updated, real_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .end local v27           #seven:Lcom/sec/android/socialhub/unifiedinbox/account/SevenEmailAccounts;
    :cond_20c
    const-string v2, "ID"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .end local v25           #real_id:I
    :goto_217
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->mArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a7

    .line 288
    :cond_222
    const-string v2, "Account"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    move/from16 v0, v21

    invoke-static {v3, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getISPStringFromUinboxID(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1a1

    .line 311
    :cond_235
    const-string v2, "ID"

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_217

    .line 316
    .end local v21           #isp:I
    .end local v23           #name:Ljava/lang/String;
    :cond_246
    const-string v2, "4_SevenIM"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c2

    .line 319
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-gtz v2, :cond_25a

    .line 321
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_aa

    .line 324
    :cond_25a
    const-string v2, "4_SevenIM"

    invoke-static {v8, v2}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getUinboxIDFromAccount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 325
    .restart local v21       #isp:I
    const-string v2, "Icon"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    move/from16 v0, v21

    move/from16 v1, v24

    invoke-static {v3, v0, v1}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getDrawableByISP(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v2, "Account"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    move/from16 v0, v21

    invoke-static {v3, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getISPStringFromUinboxID(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v2, "Premium"

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v2, "Presence"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string v2, "Email"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v2, "Type"

    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v2, "ID"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->mArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a7

    .line 336
    .end local v21           #isp:I
    :cond_2c2
    const-string v2, "5_SNS"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34f

    .line 338
    invoke-static/range {v20 .. v20}, Lcom/sec/android/socialhub/sns/adapter/SnsServiceMgr;->getService(I)Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;

    move-result-object v9

    .line 340
    .local v9, adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    if-eqz v9, :cond_2f3

    const/4 v2, 0x5

    invoke-interface {v9, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->isSupport(I)Z

    move-result v2

    if-nez v2, :cond_2f3

    .line 342
    const-string v2, "SocialHubComposeDialog"

    const-string v3, "getAdapter()"

    const-string v4, "sp(%d) does not support send message!!"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_aa

    .line 348
    :cond_2f3
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;->getStringResource(I)I

    move-result v26

    .line 349
    .local v26, resource:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    move/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 351
    .local v22, ispName:Ljava/lang/String;
    const-string v2, "Account"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v2, "Icon"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    move/from16 v0, v20

    invoke-static {v3, v0}, Lcom/sec/android/socialhub/unifiedinbox/UinboxIcon;->getSnsIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v2, "Premium"

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v2, "Email"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v2, "Type"

    const/4 v3, 0x3

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v2, "ID"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->mArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a7

    .line 362
    .end local v9           #adapter:Lcom/sec/android/socialhub/sns/adapter/ISnsAdapter;
    .end local v22           #ispName:Ljava/lang/String;
    .end local v26           #resource:I
    :cond_34f
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_aa

    .line 371
    .end local v8           #account:Ljava/lang/String;
    .end local v10           #app:Ljava/lang/String;
    .end local v15           #display_name:Ljava/lang/String;
    .end local v17           #email:Ljava/lang/String;
    .end local v18           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20           #id:I
    .end local v24           #presence:I
    :cond_354
    new-instance v14, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f03003d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->mArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2, v3, v4}, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog$ComposeDialogAdapter;-><init>(Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;Landroid/content/Context;ILjava/util/ArrayList;)V
    :try_end_366
    .catchall {:try_start_15d .. :try_end_366} :catchall_155
    .catch Ljava/lang/Exception; {:try_start_15d .. :try_end_366} :catch_11d

    .line 380
    .end local v13           #dialogAdapter:Landroid/widget/ListAdapter;
    .local v14, dialogAdapter:Landroid/widget/ListAdapter;
    if-eqz v12, :cond_36f

    .line 382
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 383
    const/4 v12, 0x0

    move-object v13, v14

    .end local v14           #dialogAdapter:Landroid/widget/ListAdapter;
    .restart local v13       #dialogAdapter:Landroid/widget/ListAdapter;
    goto/16 :goto_142

    .end local v13           #dialogAdapter:Landroid/widget/ListAdapter;
    .restart local v14       #dialogAdapter:Landroid/widget/ListAdapter;
    :cond_36f
    move-object v13, v14

    .end local v14           #dialogAdapter:Landroid/widget/ListAdapter;
    .restart local v13       #dialogAdapter:Landroid/widget/ListAdapter;
    goto/16 :goto_142
.end method

.method public onHandleCommand(Landroid/content/DialogInterface;I)V
    .registers 15
    .parameter "view"
    .parameter "pos"

    .prologue
    const/4 v7, 0x0

    .line 393
    const-string v8, "SocialHubComposeDialog"

    const-string v9, "handleCommand()"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "selected_item id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v8, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    move-result-object v8

    const-string v9, "1_Messaging"

    invoke-virtual {v8, v9}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v4

    .line 397
    .local v4, message:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    if-nez p2, :cond_33

    if-eqz v4, :cond_33

    .line 399
    const-string v8, "1_Messaging"

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {p0, v8, v9, v10, v7}, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->startAppCompose(Ljava/lang/String;Ljava/lang/String;II)V

    .line 419
    :goto_32
    return-void

    .line 403
    :cond_33
    iget-object v8, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 405
    .local v2, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "Account"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 406
    .local v0, account:Ljava/lang/String;
    const-string v8, "Email"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 407
    .local v1, email:Ljava/lang/String;
    const-string v8, "Type"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 408
    .local v6, type:Ljava/lang/String;
    const-string v8, "ID"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 409
    .local v3, id:Ljava/lang/Integer;
    const-string v8, "Presence"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 411
    .local v5, presence:Ljava/lang/Integer;
    if-eqz v0, :cond_6b

    if-eqz v1, :cond_6b

    if-eqz v3, :cond_6b

    if-nez v6, :cond_75

    .line 413
    :cond_6b
    const-string v7, "SocialHubComposeDialog"

    const-string v8, "startCreateMessage()"

    const-string v9, "app, email is null"

    invoke-static {v7, v8, v9}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    .line 417
    :cond_75
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v5, :cond_7f

    :goto_7b
    invoke-virtual {p0, v6, v1, v8, v7}, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->startAppCompose(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_32

    :cond_7f
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_7b
.end method

.method public startAppCompose(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 11
    .parameter "app"
    .parameter "email"
    .parameter "accountId"
    .parameter "presense"

    .prologue
    .line 77
    const-string v1, "SocialHubComposeDialog"

    const-string v2, "startAppCompose()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " accountid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    if-nez p1, :cond_30

    .line 81
    const-string v1, "SocialHubComposeDialog"

    const-string v2, "startAppCompose()"

    const-string v3, "app is null!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_2f
    return-void

    .line 88
    :cond_30
    const-string v1, "3_SevenEmail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 90
    const-string p1, "2_Email"

    .line 93
    :cond_3a
    iget-object v1, p0, Lcom/sec/android/socialhub/dialog/SocialHubComposeDialog;->mManager:Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/socialhub/unifiedinbox/account/UinboxAccountManager;->getAccount(Ljava/lang/String;)Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;

    move-result-object v0

    .line 95
    .local v0, account:Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;
    if-nez v0, :cond_4c

    .line 97
    const-string v1, "SocialHubComposeDialog"

    const-string v2, "startAppCompose()"

    const-string v3, "account is null!!!"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 101
    :cond_4c
    iget-object v1, p0, Lcom/sec/android/socialhub/dialog/AbsListDialog;->mContext:Landroid/content/Context;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/unifiedinbox/account/AbstractAccount;->onClickCompose(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_2f
.end method
