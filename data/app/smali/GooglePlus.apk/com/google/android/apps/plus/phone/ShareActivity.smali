.class public Lcom/google/android/apps/plus/phone/ShareActivity;
.super Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.source "ShareActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/util/ImageUtils$InsertCameraPhotoDialogDisplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/phone/ShareActivity$LocationDialogListener;,
        Lcom/google/android/apps/plus/phone/ShareActivity$DialogListener;
    }
.end annotation


# instance fields
.field private mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

.field private mLocationDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mShareFragment:Lcom/google/android/apps/plus/fragments/ShareFragment;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;-><init>()V

    .line 109
    new-instance v0, Lcom/google/android/apps/plus/phone/ShareActivity$DialogListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/phone/ShareActivity$DialogListener;-><init>(Lcom/google/android/apps/plus/phone/ShareActivity;Lcom/google/android/apps/plus/phone/ShareActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 110
    new-instance v0, Lcom/google/android/apps/plus/phone/ShareActivity$LocationDialogListener;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/phone/ShareActivity$LocationDialogListener;-><init>(Lcom/google/android/apps/plus/phone/ShareActivity;Lcom/google/android/apps/plus/phone/ShareActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mLocationDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 624
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/phone/ShareActivity;)Lcom/google/android/apps/plus/fragments/ShareFragment;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mShareFragment:Lcom/google/android/apps/plus/fragments/ShareFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/plus/phone/ShareActivity;)Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method private copyBooleanExtraToArgs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .parameter "intentExtra"
    .parameter "argsExtra"
    .parameter "args"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 127
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 128
    .local v0, value:Z
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    .end local v0           #value:Z
    :cond_16
    return-void
.end method

.method private copyStringExtraToArgs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .parameter "intentExtra"
    .parameter "argsExtra"
    .parameter "args"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_d

    .line 118
    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_d
    return-void
.end method

.method private extractMediaExtras(Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 26
    .parameter "intent"
    .parameter "args"

    .prologue
    .line 331
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    .line 337
    .local v15, action:Ljava/lang/String;
    const/16 v18, 0x0

    .line 338
    .local v18, droppedUrls:Z
    const/16 v22, 0x0

    .line 339
    .local v22, unsupported:Z
    const-string v2, "android.intent.extra.STREAM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 340
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v16, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 342
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 345
    .local v17, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xfa

    if-le v2, v3, :cond_52

    .line 346
    const v2, 0x7f080187

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0xfa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/plus/phone/ShareActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 348
    const/4 v2, 0x0

    .line 408
    .end local v16           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .end local v17           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :goto_51
    return v2

    .line 351
    .restart local v16       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .restart local v17       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :cond_52
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_56
    :goto_56
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_107

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Parcelable;

    .line 352
    .local v20, parcelable:Landroid/os/Parcelable;
    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v2, :cond_72

    .line 353
    check-cast v20, Lcom/google/android/apps/plus/api/MediaRef;

    .end local v20           #parcelable:Landroid/os/Parcelable;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 354
    .restart local v20       #parcelable:Landroid/os/Parcelable;
    :cond_72
    move-object/from16 v0, v20

    instance-of v2, v0, Landroid/net/Uri;

    if-eqz v2, :cond_56

    move-object/from16 v7, v20

    .line 355
    check-cast v7, Landroid/net/Uri;

    .line 356
    .local v7, localUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 357
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    sget-object v8, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 359
    :cond_9a
    invoke-static {v7}, Lcom/google/android/apps/plus/util/GalleryUtils;->isGalleryContentUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 360
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 361
    .local v12, galleryUrl:Ljava/lang/String;
    new-instance v8, Lcom/google/android/apps/plus/api/MediaRef;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    sget-object v14, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v8 .. v14}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_56

    .line 363
    .end local v12           #galleryUrl:Ljava/lang/String;
    :cond_b5
    const-string v2, "content"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_da

    .line 364
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    sget-object v8, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_56

    .line 366
    :cond_da
    const-string v2, "file"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 367
    const/16 v22, 0x1

    goto/16 :goto_56

    .line 369
    :cond_ea
    const/16 v18, 0x1

    goto/16 :goto_56

    .line 374
    .end local v7           #localUri:Landroid/net/Uri;
    .end local v17           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #parcelable:Landroid/os/Parcelable;
    :cond_ee
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    .line 375
    .restart local v20       #parcelable:Landroid/os/Parcelable;
    move-object/from16 v0, v20

    instance-of v2, v0, Lcom/google/android/apps/plus/api/MediaRef;

    if-eqz v2, :cond_12c

    .line 376
    check-cast v20, Lcom/google/android/apps/plus/api/MediaRef;

    .end local v20           #parcelable:Landroid/os/Parcelable;
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    :cond_107
    :goto_107
    const-string v2, "android.intent.extra.STREAM"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 399
    .end local v16           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    :cond_110
    if-eqz v18, :cond_129

    .line 401
    if-eqz v22, :cond_1ab

    .line 402
    const v2, 0x7f080189

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/phone/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 406
    .local v21, toastText:Ljava/lang/String;
    :goto_11d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 408
    .end local v21           #toastText:Ljava/lang/String;
    :cond_129
    const/4 v2, 0x1

    goto/16 :goto_51

    .line 377
    .restart local v16       #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .restart local v20       #parcelable:Landroid/os/Parcelable;
    :cond_12c
    move-object/from16 v0, v20

    instance-of v2, v0, Landroid/net/Uri;

    if-eqz v2, :cond_107

    move-object/from16 v7, v20

    .line 378
    check-cast v7, Landroid/net/Uri;

    .line 379
    .restart local v7       #localUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/google/android/apps/plus/util/MediaStoreUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 380
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    sget-object v8, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_107

    .line 382
    :cond_154
    invoke-static {v7}, Lcom/google/android/apps/plus/util/GalleryUtils;->isGalleryContentUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 383
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 384
    .restart local v12       #galleryUrl:Ljava/lang/String;
    new-instance v8, Lcom/google/android/apps/plus/api/MediaRef;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v13, 0x0

    sget-object v14, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v8 .. v14}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_107

    .line 386
    .end local v12           #galleryUrl:Ljava/lang/String;
    :cond_16f
    const-string v2, "content"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_194

    .line 387
    new-instance v2, Lcom/google/android/apps/plus/api/MediaRef;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v3}, Lcom/google/android/apps/plus/content/EsAccount;->getGaiaId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    sget-object v8, Lcom/google/android/apps/plus/api/MediaRef$MediaType;->IMAGE:Lcom/google/android/apps/plus/api/MediaRef$MediaType;

    invoke-direct/range {v2 .. v8}, Lcom/google/android/apps/plus/api/MediaRef;-><init>(Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;Lcom/google/android/apps/plus/api/MediaRef$MediaType;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_107

    .line 390
    :cond_194
    if-nez v22, :cond_1a2

    const-string v2, "file"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    :cond_1a2
    const/16 v22, 0x1

    .line 391
    :goto_1a4
    const/16 v18, 0x1

    goto/16 :goto_107

    .line 390
    :cond_1a8
    const/16 v22, 0x0

    goto :goto_1a4

    .line 404
    .end local v7           #localUri:Landroid/net/Uri;
    .end local v16           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/api/MediaRef;>;"
    .end local v20           #parcelable:Landroid/os/Parcelable;
    :cond_1ab
    const v2, 0x7f080188

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/phone/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v21

    .restart local v21       #toastText:Ljava/lang/String;
    goto/16 :goto_11d
.end method

.method private getApiaryApiInfo(Landroid/content/Intent;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .registers 4
    .parameter "intent"

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.google.android.apps.plus.SHARE_GOOGLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 246
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/ShareActivity;->getApiaryApiInfoForShareAction(Landroid/content/Intent;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v1

    .line 248
    :goto_10
    return-object v1

    :cond_11
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/phone/ShareActivity;->getApiaryApiInfoForActionSend(Landroid/content/Intent;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v1

    goto :goto_10
.end method

.method private getApiaryApiInfoForActionSend(Landroid/content/Intent;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .registers 16
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 302
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 304
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    sget-object v4, Lcom/google/android/apps/plus/util/Property;->PLUS_CLIENTID:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v4}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, ourClientId:Ljava/lang/String;
    const-string v4, "android.support.v4.app.EXTRA_CALLING_PACKAGE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 307
    .local v3, thirdPartyPackageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 308
    const-string v4, "calling_package"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 312
    :cond_1d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 313
    const-string v3, "com.google.android.apps.social"

    .line 315
    :cond_25
    const-string v4, "com.google.android.apps.plus.VERSION"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, version:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-static {v3, v13}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .local v0, sourceApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    new-instance v6, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v13}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    move-object v7, v1

    move-object v8, v2

    move-object v12, v0

    invoke-direct/range {v6 .. v12}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    .line 326
    .local v6, apiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    return-object v6
.end method

.method private getApiaryApiInfoForShareAction(Landroid/content/Intent;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .registers 19
    .parameter "intent"

    .prologue
    .line 253
    const-string v5, "com.google.android.apps.plus.API_KEY"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, apiKey:Ljava/lang/String;
    const-string v5, "com.google.android.apps.plus.CLIENT_ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, clientId:Ljava/lang/String;
    const-string v5, "com.google.android.apps.plus.VERSION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 257
    .local v6, version:Ljava/lang/String;
    sget-object v5, Lcom/google/android/apps/plus/util/Property;->PLUS_CLIENTID:Lcom/google/android/apps/plus/util/Property;

    invoke-virtual {v5}, Lcom/google/android/apps/plus/util/Property;->get()Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, ourClientId:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 262
    .local v16, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v14

    .line 263
    .local v14, callingPackage:Ljava/lang/String;
    const-string v5, "from_signup"

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 264
    .local v15, fromSignup:Z
    const-string v5, "calling_package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 265
    .local v4, thirdPartyPackageName:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4f

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    if-nez v15, :cond_51

    .line 267
    :cond_4f
    const/4 v7, 0x0

    .line 298
    :goto_50
    return-object v7

    .line 268
    :cond_51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_98

    .line 273
    const-string v5, "com.android.vending"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6d

    const-string v5, "com.google.android.music"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 275
    :cond_6d
    const-string v9, "659910861946.apps.googleusercontent.com"

    .line 289
    :cond_6f
    new-instance v1, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .local v1, callerApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    new-instance v7, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCertificate(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v4

    move-object v12, v6

    move-object v13, v1

    invoke-direct/range {v7 .. v13}, Lcom/google/android/apps/plus/network/ApiaryApiInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/plus/network/ApiaryApiInfo;)V

    .line 298
    .local v7, apiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    goto :goto_50

    .line 277
    .end local v1           #callerApiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    .end local v7           #apiInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;
    :cond_8a
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_96

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 278
    :cond_96
    const/4 v7, 0x0

    goto :goto_50

    .line 283
    :cond_98
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 284
    :cond_a4
    const/4 v7, 0x0

    goto :goto_50
.end method

.method private recordErrorSetCancelledAndFinish()V
    .registers 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-static {v0}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCallingPackageAnalytics(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getAnalyticsInfo(Ljava/util/Map;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v0

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_ERROR_SHARE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/plus/phone/ShareActivity;->recordUserAction(Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 415
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->setResult(I)V

    .line 416
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->finish()V

    .line 417
    return-void
.end method


# virtual methods
.method protected getAccount()Lcom/google/android/apps/plus/content/EsAccount;
    .registers 2

    .prologue
    .line 659
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    return-object v0
.end method

.method protected getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 2

    .prologue
    .line 667
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->SHARE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    return-object v0
.end method

.method public hideInsertCameraPhotoDialog()V
    .registers 2

    .prologue
    .line 695
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->dismissDialog(I)V

    .line 696
    return-void
.end method

.method public invalidateMenu()V
    .registers 3

    .prologue
    .line 481
    const v0, 0x7f10002f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->createTitlebarButtons(I)V

    .line 482
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    .line 483
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->invalidateOptionsMenu()V

    .line 485
    :cond_f
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .parameter "fragment"

    .prologue
    .line 435
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 436
    instance-of v0, p1, Lcom/google/android/apps/plus/fragments/ShareFragment;

    if-eqz v0, :cond_b

    .line 437
    check-cast p1, Lcom/google/android/apps/plus/fragments/ShareFragment;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mShareFragment:Lcom/google/android/apps/plus/fragments/ShareFragment;

    .line 439
    :cond_b
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mShareFragment:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->onDiscard()V

    .line 673
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f09022f

    const/4 v9, 0x0

    .line 141
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 144
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    .local v0, args:Landroid/os/Bundle;
    const-string v7, "com.google.android.apps.plus.CID"

    const-string v8, "cid"

    invoke-direct {p0, v7, v8, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->copyStringExtraToArgs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 148
    const-string v7, "com.google.android.apps.plus.LOCATION_NAME"

    const-string v8, "location_name"

    invoke-direct {p0, v7, v8, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->copyStringExtraToArgs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 149
    const-string v7, "com.google.android.apps.plus.EXTERNAL_ID"

    const-string v8, "external_id"

    invoke-direct {p0, v7, v8, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->copyStringExtraToArgs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 150
    const-string v7, "com.google.android.apps.plus.FOOTER"

    const-string v8, "footer"

    invoke-direct {p0, v7, v8, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->copyStringExtraToArgs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 151
    const-string v7, "com.google.android.apps.plus.LATITUDE"

    const-string v8, "latitude"

    invoke-direct {p0, v7, v8, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->copyStringExtraToArgs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 152
    const-string v7, "com.google.android.apps.plus.LONGITUDE"

    const-string v8, "longitude"

    invoke-direct {p0, v7, v8, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->copyStringExtraToArgs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 153
    const-string v7, "com.google.android.apps.plus.ADDRESS"

    const-string v8, "address"

    invoke-direct {p0, v7, v8, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->copyStringExtraToArgs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    const-string v7, "com.google.android.apps.plus.IS_FROM_PLUSONE"

    const-string v8, "is_from_plusone"

    invoke-direct {p0, v7, v8, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->copyBooleanExtraToArgs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 155
    const-string v7, "android.intent.extra.TEXT"

    const-string v8, "android.intent.extra.TEXT"

    invoke-direct {p0, v7, v8, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->copyStringExtraToArgs(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, url:Ljava/lang/String;
    if-eqz v6, :cond_63

    const-string v7, "com.google.android.apps.plus.SHARE_GOOGLE"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_63

    .line 160
    const-string v7, "url"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_63
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_85

    .line 164
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "android.intent.extra.STREAM"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 167
    .local v4, streamData:Ljava/lang/Object;
    instance-of v7, v4, Ljava/util/ArrayList;

    if-eqz v7, :cond_85

    move-object v5, v4

    .line 168
    check-cast v5, Ljava/util/ArrayList;

    .line 169
    .local v5, streamDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_85

    .line 170
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    .end local v4           #streamData:Ljava/lang/Object;
    .end local v5           #streamDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<*>;"
    :cond_85
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    const v7, 0x7f0300c4

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/ShareActivity;->setContentView(I)V

    .line 180
    const v7, 0x7f0901b2

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/google/android/apps/plus/phone/ShareActivity$1;

    invoke-direct {v8, p0}, Lcom/google/android/apps/plus/phone/ShareActivity$1;-><init>(Lcom/google/android/apps/plus/phone/ShareActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/phone/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/google/android/apps/plus/phone/ShareActivity$2;

    invoke-direct {v8, p0}, Lcom/google/android/apps/plus/phone/ShareActivity$2;-><init>(Lcom/google/android/apps/plus/phone/ShareActivity;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-virtual {p0, v9}, Lcom/google/android/apps/plus/phone/ShareActivity;->showTitlebar(Z)V

    .line 198
    const v7, 0x7f080040

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/ShareActivity;->setTitlebarTitle(Ljava/lang/String;)V

    .line 200
    if-eqz p1, :cond_c2

    .line 201
    const-string v7, "ShareActivity.mInfo"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    iput-object v7, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 204
    :cond_c2
    invoke-static {p0}, Lcom/google/android/apps/plus/content/EsAccountsData;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 205
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    if-nez v7, :cond_d2

    .line 206
    invoke-direct {p0, v2}, Lcom/google/android/apps/plus/phone/ShareActivity;->getApiaryApiInfo(Landroid/content/Intent;)Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    .line 209
    :cond_d2
    if-nez p1, :cond_e3

    .line 210
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-static {v7}, Lcom/google/android/apps/plus/external/PlatformContractUtils;->getCallingPackageAnalytics(Lcom/google/android/apps/plus/network/ApiaryApiInfo;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/android/apps/plus/phone/ShareActivity;->getAnalyticsInfo(Ljava/util/Map;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    move-result-object v7

    sget-object v8, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->PLATFORM_CLICKED_SHARE:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v7, v8}, Lcom/google/android/apps/plus/phone/ShareActivity;->recordUserAction(Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 215
    :cond_e3
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    if-nez v7, :cond_eb

    .line 216
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->recordErrorSetCancelledAndFinish()V

    .line 240
    :cond_ea
    :goto_ea
    return-void

    .line 220
    :cond_eb
    const-string v7, "api_info"

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 222
    iget-object v7, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v7, :cond_fe

    iget-object v7, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v7}, Lcom/google/android/apps/plus/content/EsAccount;->hasGaiaId()Z

    move-result v7

    if-nez v7, :cond_102

    .line 223
    :cond_fe
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->recordErrorSetCancelledAndFinish()V

    goto :goto_ea

    .line 227
    :cond_102
    invoke-direct {p0, v2, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->extractMediaExtras(Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_10c

    .line 228
    invoke-direct {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->recordErrorSetCancelledAndFinish()V

    goto :goto_ea

    .line 232
    :cond_10c
    if-nez p1, :cond_ea

    .line 233
    const-string v7, "account"

    iget-object v8, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 234
    new-instance v3, Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-direct {v3}, Lcom/google/android/apps/plus/fragments/ShareFragment;-><init>()V

    .line 235
    .local v3, shareFragment:Lcom/google/android/apps/plus/fragments/ShareFragment;
    invoke-virtual {v3, v0}, Lcom/google/android/apps/plus/fragments/ShareFragment;->setArguments(Landroid/os/Bundle;)V

    .line 236
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 237
    .local v1, ft:Landroid/support/v4/app/FragmentTransaction;
    const-string v7, "share"

    invoke-virtual {v1, v10, v3, v7}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 238
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_ea
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .registers 10
    .parameter "dialogId"
    .parameter "args"

    .prologue
    const/4 v6, 0x1

    const v5, 0x104000a

    const/4 v4, 0x0

    .line 534
    sparse-switch p1, :sswitch_data_ce

    .line 599
    const/4 v1, 0x0

    :goto_9
    return-object v1

    .line 536
    :sswitch_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 538
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0801ca

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 541
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_9

    .line 545
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_24
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 546
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0801cd

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 549
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_9

    .line 553
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_3e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 554
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0801cb

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 557
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_9

    .line 561
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 563
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0801cc

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 566
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_9

    .line 570
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_72
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 571
    .local v1, progressDialog:Landroid/app/ProgressDialog;
    const v2, 0x7f0801af

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ShareActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 572
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 573
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_9

    .line 578
    .end local v1           #progressDialog:Landroid/app/ProgressDialog;
    :sswitch_88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 579
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0801b8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 580
    const v2, 0x7f08020b

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mLocationDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 581
    const v2, 0x7f08020e

    iget-object v3, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mLocationDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 582
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_9

    .line 586
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :sswitch_a9
    invoke-static {p0}, Lcom/google/android/apps/plus/util/ImageUtils;->createInsertCameraPhotoDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    goto/16 :goto_9

    .line 590
    :sswitch_af
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 591
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0801f1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 592
    const v2, 0x7f0801f3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 593
    iget-object v2, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mLocationDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 594
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 595
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_9

    .line 534
    :sswitch_data_ce
    .sparse-switch
        0x31db -> :sswitch_24
        0x409e -> :sswitch_72
        0x5339 -> :sswitch_a
        0x58a1 -> :sswitch_58
        0x6e27 -> :sswitch_3e
        0x1bfb7a8 -> :sswitch_88
        0x1d71d84 -> :sswitch_af
        0x7f09003e -> :sswitch_a9
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10002f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 511
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_16

    .line 524
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 514
    :sswitch_a
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mShareFragment:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->onDiscard()V

    goto :goto_9

    .line 519
    :sswitch_10
    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mShareFragment:Lcom/google/android/apps/plus/fragments/ShareFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/plus/fragments/ShareFragment;->post()Z

    goto :goto_9

    .line 511
    :sswitch_data_16
    .sparse-switch
        0x102002c -> :sswitch_a
        0x7f0902ca -> :sswitch_10
        0x7f0902cb -> :sswitch_a
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 472
    const v1, 0x7f0902ca

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 473
    .local v0, postItem:Landroid/view/MenuItem;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_13

    move v1, v2

    :goto_f
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 474
    return v2

    .line 473
    :cond_13
    const/4 v1, 0x0

    goto :goto_f
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 6
    .parameter "menu"

    .prologue
    .line 500
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 501
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 502
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0902ca

    if-ne v2, v3, :cond_1b

    const/4 v2, 0x1

    :goto_15
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 500
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 502
    :cond_1b
    const/4 v2, 0x0

    goto :goto_15

    .line 504
    .end local v1           #item:Landroid/view/MenuItem;
    :cond_1d
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 424
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onResume()V

    .line 425
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {p0, v0}, Lcom/google/android/apps/plus/phone/SignOnActivity;->finishIfNoAccount(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 428
    :cond_b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 446
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 448
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    if-eqz v0, :cond_e

    .line 449
    const-string v0, "account"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 452
    :cond_e
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    if-eqz v0, :cond_19

    .line 453
    const-string v0, "ShareActivity.mInfo"

    iget-object v1, p0, Lcom/google/android/apps/plus/phone/ShareActivity;->mInfo:Lcom/google/android/apps/plus/network/ApiaryApiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 455
    :cond_19
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 492
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->finish()V

    .line 493
    return-void
.end method

.method public showInsertCameraPhotoDialog()V
    .registers 2

    .prologue
    .line 690
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/phone/ShareActivity;->showDialog(I)V

    .line 691
    return-void
.end method

.method protected showTitlebar(ZZ)V
    .registers 8
    .parameter "showAnimation"
    .parameter "enableUp"

    .prologue
    const/4 v4, 0x0

    .line 680
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->showTitlebar(ZZ)V

    .line 682
    const v2, 0x7f090270

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/phone/ShareActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 683
    .local v1, titleLayout:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/phone/ShareActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0169

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 685
    .local v0, paddingLeft:I
    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 686
    return-void
.end method
