.class public Lcom/google/android/apps/plus/phone/PostActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "PostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private buildPostFragment(Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 29
    .parameter "account"

    .prologue
    .line 263
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 266
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v17, args:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v24

    .line 271
    .local v24, intent:Landroid/content/Intent;
    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    .line 272
    .local v16, action:Ljava/lang/String;
    const-string v2, "PostActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 273
    const-string v2, "PostActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_36
    const-string v2, "action"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v2, "android.intent.extra.TEXT"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 279
    const-string v2, "PostActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 280
    const-string v2, "PostActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    EXTRA_TEXT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_72
    const-string v2, "android.intent.extra.TEXT"

    const-string v3, "android.intent.extra.TEXT"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_81
    const-string v2, "activity_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 288
    const-string v2, "PostActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 289
    const-string v2, "PostActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    EXTRA_ACTIVITY_ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "activity_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_b4
    const-string v2, "activity_id"

    const-string v3, "activity_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :cond_c3
    const-string v2, "location"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 299
    const-string v2, "location"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v25

    check-cast v25, Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 301
    .local v25, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    const-string v2, "PostActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_fa

    .line 302
    const-string v2, "PostActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    EXTRA_LOCATION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_fa
    const-string v2, "location"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 309
    .end local v25           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :cond_103
    const/16 v20, 0x0

    .line 310
    .local v20, droppedUrls:Z
    const-string v2, "android.intent.extra.STREAM"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b7

    .line 311
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v18, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_195

    .line 313
    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 316
    .local v19, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_132

    .line 317
    const/4 v2, 0x0

    .line 376
    .end local v18           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .end local v19           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :goto_131
    return v2

    .line 320
    .restart local v18       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .restart local v19       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_132
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_136
    :goto_136
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ae

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/Parcelable;

    .line 321
    .local v26, parcelable:Landroid/os/Parcelable;
    move-object/from16 v0, v26

    instance-of v2, v0, Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v2, :cond_152

    .line 322
    check-cast v26, Lcom/google/android/apps/plus/api/MediaRef;

    .end local v26           #parcelable:Landroid/os/Parcelable;
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_136

    .line 323
    .restart local v26       #parcelable:Landroid/os/Parcelable;
    :cond_152
    move-object/from16 v0, v26

    instance-of v2, v0, Landroid/net/Uri;

    if-eqz v2, :cond_136

    move-object/from16 v8, v26

    .line 324
    check-cast v8, Landroid/net/Uri;

    .line 325
    .local v8, localUri:Landroid/net/Uri;
    invoke-static {v8}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_178

    .line 326
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_136

    .line 328
    :cond_178
    invoke-static {v8}, Lcom/google/android/apps/plus/util/GalleryUtils;->isGalleryContentUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_192

    .line 329
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 330
    .local v14, galleryUrl:Ljava/lang/String;
    new-instance v9, Lcom/google/android/apps/plus/api/MediaRef;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_136

    .line 332
    .end local v14           #galleryUrl:Ljava/lang/String;
    :cond_192
    const/16 v20, 0x1

    goto :goto_136

    .line 337
    .end local v8           #localUri:Landroid/net/Uri;
    .end local v19           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v26           #parcelable:Landroid/os/Parcelable;
    :cond_195
    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v26

    .line 338
    .restart local v26       #parcelable:Landroid/os/Parcelable;
    move-object/from16 v0, v26

    instance-of v2, v0, Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v2, :cond_214

    .line 339
    check-cast v26, Lcom/google/android/apps/plus/api/MediaRef;

    .end local v26           #parcelable:Landroid/os/Parcelable;
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_1ae
    :goto_1ae
    const-string v2, "android.intent.extra.STREAM"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 357
    .end local v18           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    :cond_1b7
    const-string v2, "audience"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d0

    .line 358
    const-string v2, "audience"

    const-string v3, "audience"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 362
    :cond_1d0
    const-string v2, "account"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 365
    new-instance v21, Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-direct/range {v21 .. v21}, Lcom/google/android/apps/plus/fragments/PostFragment;-><init>()V

    .line 366
    .local v21, fragment:Lcom/google/android/apps/plus/fragments/PostFragment;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->setArguments(Landroid/os/Bundle;)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v22

    .line 370
    .local v22, ft:Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0d013e

    const-string v3, "post_tag"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 371
    invoke-virtual/range {v22 .. v22}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 373
    if-eqz v20, :cond_211

    .line 374
    const v2, 0x7f0700fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/phone/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 376
    :cond_211
    const/4 v2, 0x1

    goto/16 :goto_131

    .line 340
    .end local v21           #fragment:Lcom/google/android/apps/plus/fragments/PostFragment;
    .end local v22           #ft:Landroid/support/v4/app/FragmentTransaction;
    .restart local v18       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .restart local v26       #parcelable:Landroid/os/Parcelable;
    :cond_214
    move-object/from16 v0, v26

    instance-of v2, v0, Landroid/net/Uri;

    if-eqz v2, :cond_1ae

    move-object/from16 v8, v26

    .line 341
    check-cast v8, Landroid/net/Uri;

    .line 342
    .restart local v8       #localUri:Landroid/net/Uri;
    invoke-static {v8}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_23b

    .line 343
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getUserId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1ae

    .line 344
    :cond_23b
    invoke-static {v8}, Lcom/google/android/apps/plus/util/GalleryUtils;->isGalleryContentUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_256

    .line 345
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    .line 346
    .restart local v14       #galleryUrl:Ljava/lang/String;
    new-instance v9, Lcom/google/android/apps/plus/api/MediaRef;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v9 .. v15}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(JJLjava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1ae

    .line 348
    .end local v14           #galleryUrl:Ljava/lang/String;
    :cond_256
    const/16 v20, 0x1

    goto/16 :goto_1ae
.end method

.method private switchAccounts()V
    .registers 3

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 249
    const-class v1, Lcom/google/android/apps/plus/phone/PostActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/Intents;->getAccountsActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PostActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->finish()V

    .line 253
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 463
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->COMPOSE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/phone/PostActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 395
    :goto_6
    return-void

    .line 390
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getStreamActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 391
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PostActivity;->startActivity(Landroid/content/Intent;)V

    .line 394
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->finish()V

    goto :goto_6
.end method

.method public invalidateMenu()V
    .registers 3

    .prologue
    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_d

    .line 238
    const v0, 0x7f100019

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PostActivity;->createTitlebarButtons(I)V

    .line 242
    :goto_c
    return-void

    .line 240
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->invalidateOptionsMenu()V

    goto :goto_c
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 129
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/PostFragment;

    if-eqz v0, :cond_b

    .line 130
    check-cast p1, Lcom/google/android/apps/plus/fragments/PostFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

    .line 132
    :cond_b
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->onDiscard()V

    .line 231
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 428
    packed-switch p2, :pswitch_data_1e

    .line 448
    :goto_3
    return-void

    .line 431
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PostActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 438
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_f
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->setLocationChecked(Z)V

    goto :goto_3

    .line 444
    :pswitch_16
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveLocationDialogSeenPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    goto :goto_3

    .line 428
    nop

    :pswitch_data_1e
    .packed-switch -0x3
        :pswitch_16
        :pswitch_f
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f07014e

    const v10, 0x7f0700fc

    const/16 v9, 0xa

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 67
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v5, 0x7f030074

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/PostActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "location"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    .line 72
    .local v2, checkIn:Z
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_65

    .line 74
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 75
    .local v1, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v1, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 76
    if-eqz v2, :cond_2f

    const v4, 0x7f07014f

    :cond_2f
    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 89
    .end local v1           #actionBar:Landroid/app/ActionBar;
    :goto_32
    if-nez p1, :cond_a9

    .line 90
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 92
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 93
    const-string v4, "account"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 94
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/PostActivity;->buildPostFragment(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 95
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v10, v4}, Lcom/google/android/apps/plus/phone/PostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 97
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->finish()V

    .line 121
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_64
    :goto_64
    return-void

    .line 80
    :cond_65
    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/PostActivity;->showTitlebar(Z)V

    .line 82
    const v5, 0x7f0200a3

    if-eqz v2, :cond_70

    const v4, 0x7f07014f

    :cond_70
    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/phone/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v5, v4}, Lcom/google/android/apps/plus/phone/PostActivity;->setTitlebarTitle(ILjava/lang/String;)V

    goto :goto_32

    .line 102
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_78
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 103
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_a5

    .line 104
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->hasUserId()Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 105
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/PostActivity;->buildPostFragment(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 106
    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v10, v4}, Lcom/google/android/apps/plus/phone/PostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 108
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->finish()V

    goto :goto_64

    .line 112
    :cond_a1
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->switchAccounts()V

    goto :goto_64

    .line 115
    :cond_a5
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->switchAccounts()V

    goto :goto_64

    .line 119
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_a9
    const-string v4, "account"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v4, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    goto :goto_64
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter "dialogId"
    .parameter "args"

    .prologue
    .line 402
    sparse-switch p1, :sswitch_data_42

    .line 420
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 404
    :sswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070123

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 406
    const v1, 0x7f07016a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 407
    const v1, 0x7f07016b

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 408
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 412
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_21
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070158

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 414
    const v1, 0x7f070159

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 415
    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 416
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 402
    nop

    :sswitch_data_42
    .sparse-switch
        0x1bfb7a8 -> :sswitch_5
        0x1d71d84 -> :sswitch_21
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100019

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 203
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_1c

    .line 220
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 205
    :sswitch_a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->onDiscard()V

    goto :goto_9

    .line 210
    :sswitch_10
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->post()Z

    goto :goto_9

    .line 215
    :sswitch_16
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->onDiscard()V

    goto :goto_9

    .line 203
    :sswitch_data_1c
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0d01ee -> :sswitch_10
        0x7f0d01ef -> :sswitch_16
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 172
    const v1, 0x7f0d01ee

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 173
    .local v0, postItem:Landroid/view/MenuItem;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_13

    move v1, v2

    :goto_f
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 174
    return v2

    .line 173
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 192
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 193
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 194
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0d01ee

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x1

    :goto_15
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 194
    :cond_1b
    const/4 v2, 0x0

    goto :goto_15

    .line 196
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1d
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finishIfNoAccount(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 155
    :cond_b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_e

    .line 142
    const-string v0, "account"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 144
    :cond_e
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

    if-eqz v0, :cond_9

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->onDiscard()V

    .line 185
    :cond_9
    return-void
.end method
