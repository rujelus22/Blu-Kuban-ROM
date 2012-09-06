.class public Lcom/google/android/apps/plus/phone/PostActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "PostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

.field private mShakeDetectorWasRunning:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    return-void
.end method

.method private buildPostFragment(Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 30
    .parameter "account"

    .prologue
    .line 282
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 285
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 287
    .local v16, args:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v23

    .line 290
    .local v23, intent:Landroid/content/Intent;
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 291
    .local v15, action:Ljava/lang/String;
    const-string v2, "PostActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 292
    const-string v2, "PostActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intent action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_34
    const-string v2, "action"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v2, "android.intent.extra.TEXT"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 298
    const-string v2, "PostActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 299
    const-string v2, "PostActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    EXTRA_TEXT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.intent.extra.TEXT"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_6e
    const-string v2, "android.intent.extra.TEXT"

    const-string v3, "android.intent.extra.TEXT"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_7d
    const-string v2, "activity_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bf

    .line 307
    const-string v2, "PostActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 308
    const-string v2, "PostActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    EXTRA_ACTIVITY_ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "activity_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_b0
    const-string v2, "activity_id"

    const-string v3, "activity_id"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_bf
    const-string v2, "location"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 318
    const-string v2, "location"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v24

    check-cast v24, Lcom/google/wireless/tacotruck/proto/Data$Location;

    .line 320
    .local v24, location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    const-string v2, "PostActivity"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 321
    const-string v2, "PostActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    EXTRA_LOCATION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_f6
    const-string v2, "location"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 331
    .end local v24           #location:Lcom/google/wireless/tacotruck/proto/Data$Location;
    :cond_ff
    const/16 v19, 0x0

    .line 332
    .local v19, droppedUrls:Z
    const/16 v27, 0x0

    .line 333
    .local v27, unsupported:Z
    const-string v2, "android.intent.extra.STREAM"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1ec

    .line 334
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v17, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1ca

    .line 336
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 339
    .local v18, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xfa

    if-le v2, v3, :cond_12e

    .line 340
    const/4 v2, 0x0

    .line 417
    .end local v17           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .end local v18           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :goto_12d
    return v2

    .line 343
    .restart local v17       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .restart local v18       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_12e
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_132
    :goto_132
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/Parcelable;

    .line 344
    .local v25, parcelable:Landroid/os/Parcelable;
    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v2, :cond_14e

    .line 345
    check-cast v25, Lcom/google/android/apps/plus/api/MediaRef;

    .end local v25           #parcelable:Landroid/os/Parcelable;
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_132

    .line 346
    .restart local v25       #parcelable:Landroid/os/Parcelable;
    :cond_14e
    move-object/from16 v0, v25

    instance-of v2, v0, Landroid/net/Uri;

    if-eqz v2, :cond_132

    move-object/from16 v7, v25

    .line 347
    check-cast v7, Landroid/net/Uri;

    .line 348
    .local v7, localUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_176

    .line 349
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    sget-object v8, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_132

    .line 351
    :cond_176
    invoke-static {v7}, Lcom/google/android/apps/plus/util/GalleryUtils;->isGalleryContentUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_191

    .line 352
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 353
    .local v12, galleryUrl:Ljava/lang/String;
    new-instance v8, Lcom/google/android/apps/plus/api/MediaRef;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    sget-object v14, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v8 .. v14}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_132

    .line 355
    .end local v12           #galleryUrl:Ljava/lang/String;
    :cond_191
    const-string v2, "content"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b6

    .line 356
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    sget-object v8, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_132

    .line 358
    :cond_1b6
    const-string v2, "file"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c6

    .line 359
    const/16 v27, 0x1

    goto/16 :goto_132

    .line 361
    :cond_1c6
    const/16 v19, 0x1

    goto/16 :goto_132

    .line 366
    .end local v7           #localUri:Landroid/net/Uri;
    .end local v18           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v25           #parcelable:Landroid/os/Parcelable;
    :cond_1ca
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v25

    .line 367
    .restart local v25       #parcelable:Landroid/os/Parcelable;
    move-object/from16 v0, v25

    instance-of v2, v0, Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v2, :cond_24d

    .line 368
    check-cast v25, Lcom/google/android/apps/plus/api/MediaRef;

    .end local v25           #parcelable:Landroid/os/Parcelable;
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_1e3
    :goto_1e3
    const-string v2, "android.intent.extra.STREAM"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 392
    .end local v17           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    :cond_1ec
    const-string v2, "audience"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_205

    .line 393
    const-string v2, "audience"

    const-string v3, "audience"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 397
    :cond_205
    const-string v2, "account"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 400
    new-instance v20, Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/apps/plus/fragments/PostFragment;-><init>()V

    .line 401
    .local v20, fragment:Lcom/google/android/apps/plus/fragments/PostFragment;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->setArguments(Landroid/os/Bundle;)V

    .line 404
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v21

    .line 405
    .local v21, ft:Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f0901be

    const-string v3, "post_tag"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 406
    invoke-virtual/range {v21 .. v21}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 408
    if-eqz v19, :cond_24a

    .line 410
    if-eqz v27, :cond_2ce

    .line 411
    const v2, 0x7f080189

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/phone/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 415
    .local v26, toastText:Ljava/lang/String;
    :goto_23e
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 417
    .end local v26           #toastText:Ljava/lang/String;
    :cond_24a
    const/4 v2, 0x1

    goto/16 :goto_12d

    .line 369
    .end local v20           #fragment:Lcom/google/android/apps/plus/fragments/PostFragment;
    .end local v21           #ft:Landroid/support/v4/app/FragmentTransaction;
    .restart local v17       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .restart local v25       #parcelable:Landroid/os/Parcelable;
    :cond_24d
    move-object/from16 v0, v25

    instance-of v2, v0, Landroid/net/Uri;

    if-eqz v2, :cond_1e3

    move-object/from16 v7, v25

    .line 370
    check-cast v7, Landroid/net/Uri;

    .line 371
    .restart local v7       #localUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_276

    .line 372
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    sget-object v8, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e3

    .line 374
    :cond_276
    invoke-static {v7}, Lcom/google/android/apps/plus/util/GalleryUtils;->isGalleryContentUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_292

    .line 375
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 376
    .restart local v12       #galleryUrl:Ljava/lang/String;
    new-instance v8, Lcom/google/android/apps/plus/api/MediaRef;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    sget-object v14, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v8 .. v14}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e3

    .line 378
    .end local v12           #galleryUrl:Ljava/lang/String;
    :cond_292
    const-string v2, "content"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b7

    .line 379
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    sget-object v8, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1e3

    .line 382
    :cond_2b7
    if-nez v27, :cond_2c5

    const-string v2, "file"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2cb

    :cond_2c5
    const/16 v27, 0x1

    .line 383
    :goto_2c7
    const/16 v19, 0x1

    goto/16 :goto_1e3

    .line 382
    :cond_2cb
    const/16 v27, 0x0

    goto :goto_2c7

    .line 413
    .end local v7           #localUri:Landroid/net/Uri;
    .end local v17           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .end local v25           #parcelable:Landroid/os/Parcelable;
    .restart local v20       #fragment:Lcom/google/android/apps/plus/fragments/PostFragment;
    .restart local v21       #ft:Landroid/support/v4/app/FragmentTransaction;
    :cond_2ce
    const v2, 0x7f080188

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/phone/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v26

    .restart local v26       #toastText:Ljava/lang/String;
    goto/16 :goto_23e
.end method

.method private switchAccounts()V
    .registers 3

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 268
    .local v0, startIntent:Landroid/content/Intent;
    const-class v1, Lcom/google/android/apps/plus/phone/PostActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/Intents;->getAccountsActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/phone/PostActivity;->startActivity(Landroid/content/Intent;)V

    .line 271
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->finish()V

    .line 272
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 490
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->COMPOSE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public hideInsertCameraPhotoDialog()V
    .registers 2

    .prologue
    .line 500
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PostActivity;->dismissDialog(I)V

    .line 501
    return-void
.end method

.method public invalidateMenu()V
    .registers 2

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->shouldShowAndroidActionBar()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 257
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->invalidateOptionsMenu()V

    .line 261
    :goto_9
    return-void

    .line 259
    :cond_a
    const v0, 0x7f10002a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PostActivity;->createTitlebarButtons(I)V

    goto :goto_9
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 136
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/PostFragment;

    if-eqz v0, :cond_b

    .line 137
    check-cast p1, Lcom/google/android/apps/plus/fragments/PostFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

    .line 139
    :cond_b
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->onDiscard()V

    .line 250
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 455
    packed-switch p2, :pswitch_data_1a

    .line 475
    :goto_3
    return-void

    .line 458
    :pswitch_4
    invoke-static {}, Lcom/google/android/apps/plus/phone/Intents;->getLocationSettingActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 459
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PostActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 465
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_c
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/fragments/PostFragment;->setLocationChecked(Z)V

    goto :goto_3

    .line 471
    :pswitch_13
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/plus/content/EsAccountsData;->saveLocationDialogSeenPreference(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Z)V

    goto :goto_3

    .line 455
    :pswitch_data_1a
    .packed-switch -0x3
        :pswitch_13
        :pswitch_c
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f0801e6

    const v11, 0x7f080187

    const/16 v10, 0xfa

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 68
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v6, 0x7f03009f

    invoke-virtual {p0, v6}, Lcom/google/android/apps/plus/phone/PostActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "location"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    .line 73
    .local v2, checkIn:Z
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->shouldShowAndroidActionBar()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 75
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 76
    .local v1, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v1, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 77
    if-eqz v2, :cond_2f

    const v5, 0x7f0801e7

    :cond_2f
    invoke-virtual {v1, v5}, Landroid/app/ActionBar;->setTitle(I)V

    .line 90
    .end local v1           #actionBar:Landroid/app/ActionBar;
    :goto_32
    if-nez p1, :cond_b6

    .line 91
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 93
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "account"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 94
    const-string v5, "account"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 95
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/PostActivity;->buildPostFragment(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v5

    if-nez v5, :cond_a1

    .line 96
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v11, v5}, Lcom/google/android/apps/plus/phone/PostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->finish()V

    .line 128
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_64
    :goto_64
    return-void

    .line 81
    :cond_65
    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/phone/PostActivity;->showTitlebar(Z)V

    .line 83
    if-eqz v2, :cond_6d

    const v5, 0x7f0801e7

    :cond_6d
    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/PostActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/phone/PostActivity;->setTitlebarTitle(Ljava/lang/String;)V

    goto :goto_32

    .line 103
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_75
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 104
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_b2

    .line 105
    invoke-virtual {v0}, Lcom/google/android/apps/plus/content/EsAccount;->hasGaiaId()Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 106
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/phone/PostActivity;->buildPostFragment(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v5

    if-nez v5, :cond_a1

    .line 107
    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {p0, v11, v5}, Lcom/google/android/apps/plus/phone/PostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->finish()V

    goto :goto_64

    .line 113
    :cond_9e
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->switchAccounts()V

    .line 124
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_a1
    :goto_a1
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v4

    .line 125
    .local v4, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v4, :cond_64

    .line 126
    invoke-virtual {v4}, Lcom/google/android/apps/plus/phone/ShakeDetector;->stop()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mShakeDetectorWasRunning:Z

    goto :goto_64

    .line 116
    .end local v4           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    .restart local v0       #account:Lcom/google/android/apps/plus/content/EsAccount;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_b2
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->switchAccounts()V

    goto :goto_a1

    .line 120
    .end local v0           #account:Lcom/google/android/apps/plus/content/EsAccount;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_b6
    const-string v5, "account"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v5, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    goto :goto_a1
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 5
    .parameter "dialogId"
    .parameter "args"

    .prologue
    .line 425
    sparse-switch p1, :sswitch_data_46

    .line 447
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 427
    :sswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0801b8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 429
    const v1, 0x7f08020b

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 430
    const v1, 0x7f08020e

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 435
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_21
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 436
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0801f1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 437
    const v1, 0x7f0801f2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 438
    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 439
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 440
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_4

    .line 444
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_41
    invoke-static {p0}, Lcom/google/android/apps/plus/util/ImageUtils;->createInsertCameraPhotoDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_4

    .line 425
    :sswitch_data_46
    .sparse-switch
        0x1bfb7a8 -> :sswitch_5
        0x1d71d84 -> :sswitch_21
        0x7f09003e -> :sswitch_41
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10002a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 169
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onDestroy()V

    .line 172
    iget-boolean v1, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mShakeDetectorWasRunning:Z

    if-eqz v1, :cond_14

    .line 173
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/phone/ShakeDetector;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/plus/phone/ShakeDetector;

    move-result-object v0

    .line 174
    .local v0, shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    if-eqz v0, :cond_14

    .line 175
    invoke-virtual {v0}, Lcom/google/android/apps/plus/phone/ShakeDetector;->start()Z

    .line 179
    .end local v0           #shakeDetector:Lcom/google/android/apps/plus/phone/ShakeDetector;
    :cond_14
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 227
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_16

    .line 239
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 229
    :sswitch_a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->onDiscard()V

    goto :goto_9

    .line 234
    :sswitch_10
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/PostFragment;->post()Z

    goto :goto_9

    .line 227
    :sswitch_data_16
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0902ca -> :sswitch_10
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 196
    const v1, 0x7f0902ca

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 197
    .local v0, postItem:Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/PostActivity;->shouldShowAndroidActionBar()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 198
    const/4 v1, 0x1

    return v1
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 217
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 218
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0902ca

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x1

    :goto_15
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 218
    :cond_1b
    const/4 v2, 0x0

    goto :goto_15

    .line 220
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1d
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 158
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finishIfNoAccount(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 162
    :cond_b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_e

    .line 149
    const-string v0, "account"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 151
    :cond_e
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

    if-eqz v0, :cond_9

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/PostActivity;->mPostFragment:Lcom/google/android/apps/plus/fragments/PostFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/PostFragment;->onDiscard()V

    .line 209
    :cond_9
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 2

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public showInsertCameraPhotoDialog()V
    .registers 2

    .prologue
    .line 495
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/PostActivity;->showDialog(I)V

    .line 496
    return-void
.end method
