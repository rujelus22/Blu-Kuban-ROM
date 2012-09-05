.class public Lcom/android/email/activity/PoliciesList;
.super Landroid/app/Fragment;
.source "PoliciesList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/PoliciesList$1;,
        Lcom/android/email/activity/PoliciesList$PolicyItem;,
        Lcom/android/email/activity/PoliciesList$PolicyAdapter;
    }
.end annotation


# static fields
.field private static final POLICIES_CONTENT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private accountPolicyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/PoliciesList$PolicyItem;",
            ">;"
        }
    .end annotation
.end field

.field private devicePolicyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/email/activity/PoliciesList$PolicyItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAccountPolicesLayout:Landroid/widget/LinearLayout;

.field private mAccountPoliciesList:Landroid/widget/ListView;

.field private mAccountText:Landroid/widget/TextView;

.field private mDevicePolicesLayout:Landroid/widget/LinearLayout;

.field private mDevicePoliciesList:Landroid/widget/ListView;

.field private mNoPolicesLayout:Landroid/widget/LinearLayout;

.field private mPolicesLayout:Landroid/widget/LinearLayout;

.field private policiesCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 84
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "value"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/PoliciesList;->POLICIES_CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/PoliciesList;->devicePolicyList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    .line 690
    return-void
.end method

.method public static actionShowPolicyList(Landroid/content/Context;J)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/PoliciesList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 80
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 82
    return-void
.end method

.method private getPolicyNameValue(Landroid/database/Cursor;)V
    .registers 20
    .parameter "cursor"

    .prologue
    .line 183
    const/4 v2, 0x1

    .line 184
    .local v2, POLICY_TYPE_DEVICE:I
    const/4 v1, 0x2

    .line 185
    .local v1, POLICY_TYPE_ACCOUNT:I
    const/4 v12, 0x0

    .line 186
    .local v12, showsign_algorithm:Z
    const/4 v11, 0x0

    .line 187
    .local v11, showencrypt_algorithm:Z
    const/4 v6, -0x1

    .line 188
    .local v6, getSignCount:I
    const/4 v5, -0x1

    .line 190
    .local v5, getEncryptCount:I
    const/4 v9, 0x1

    .line 192
    .local v9, policyType:I
    if-eqz p1, :cond_36

    .line 193
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 195
    :cond_f
    :goto_f
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_36

    .line 196
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, policyName:Ljava/lang/String;
    const-string v13, "RequireSignedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 199
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    .line 200
    goto :goto_f

    .line 202
    :cond_29
    const-string v13, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 203
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 204
    goto :goto_f

    .line 211
    .end local v8           #policyName:Ljava/lang/String;
    :cond_36
    const-string v8, ""

    .line 212
    .restart local v8       #policyName:Ljava/lang/String;
    const-string v10, ""

    .line 214
    .local v10, policyValue:Ljava/lang/String;
    if-eqz p1, :cond_d2

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_d2

    .line 216
    if-lez v6, :cond_8a

    .line 218
    :try_start_44
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 219
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 220
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 222
    const-string v13, "RequireSignedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8a

    .line 224
    const/4 v9, 0x2

    .line 225
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1dd

    .line 226
    const/4 v12, 0x1

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080255

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 229
    const-string v10, ""

    .line 231
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/email/activity/PoliciesList$PolicyItem;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v10}, Lcom/android/email/activity/PoliciesList$PolicyItem;-><init>(Lcom/android/email/activity/PoliciesList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    :goto_88
    const-string v10, ""
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_8a} :catch_1e0

    .line 244
    :cond_8a
    :goto_8a
    if-lez v5, :cond_d2

    .line 246
    :try_start_8c
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 248
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 249
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 251
    const-string v13, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d2

    .line 253
    const/4 v9, 0x2

    .line 254
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1ea

    .line 255
    const/4 v11, 0x1

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080256

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 258
    const-string v10, ""

    .line 259
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/email/activity/PoliciesList$PolicyItem;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v10}, Lcom/android/email/activity/PoliciesList$PolicyItem;-><init>(Lcom/android/email/activity/PoliciesList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :goto_d0
    const-string v10, ""
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_d2} :catch_1ed

    .line 271
    :cond_d2
    :goto_d2
    if-eqz p1, :cond_853

    .line 272
    const/4 v13, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 274
    :cond_da
    :goto_da
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_853

    .line 276
    const/4 v7, 0x1

    .line 277
    .local v7, itsBoolean:Z
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 278
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 279
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Integer"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_ff

    .line 280
    const/4 v7, 0x0

    .line 283
    :cond_ff
    const-string v13, "PasswordMode"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_20a

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080261

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 286
    const-string v13, "64"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_122

    const-string v13, "96"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f7

    .line 287
    :cond_122
    const v13, 0x7f08026f

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 360
    :cond_12b
    :goto_12b
    const-string v13, "AllowCamera"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_362

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080246

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 362
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 365
    const-string v10, ""

    .line 454
    :cond_14c
    :goto_14c
    const-string v13, "MaxEmailBodyTruncationSize"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_516

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08025a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 457
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 460
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f080273

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 615
    :cond_18a
    :goto_18a
    if-eqz v7, :cond_1ca

    .line 616
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1ab

    .line 617
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08026e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 620
    :cond_1ab
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "false"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1ca

    .line 621
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08026d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 626
    :cond_1ca
    const/4 v13, 0x1

    if-ne v9, v13, :cond_840

    .line 627
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/PoliciesList;->devicePolicyList:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/email/activity/PoliciesList$PolicyItem;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v10}, Lcom/android/email/activity/PoliciesList$PolicyItem;-><init>(Lcom/android/email/activity/PoliciesList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_da

    .line 233
    .end local v7           #itsBoolean:Z
    :cond_1dd
    const/4 v12, 0x0

    goto/16 :goto_88

    .line 237
    :catch_1e0
    move-exception v4

    .line 238
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    const-string v8, ""

    .line 240
    const-string v10, ""

    goto/16 :goto_8a

    .line 261
    .end local v4           #e:Ljava/lang/Exception;
    :cond_1ea
    const/4 v11, 0x0

    goto/16 :goto_d0

    .line 264
    :catch_1ed
    move-exception v4

    .line 265
    .restart local v4       #e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    const-string v8, ""

    .line 267
    const-string v10, ""

    goto/16 :goto_d2

    .line 288
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v7       #itsBoolean:Z
    :cond_1f7
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 291
    const v13, 0x7f080270

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_12b

    .line 293
    :cond_20a
    const-string v13, "AllowSimpleDevicePassword"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22d

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080254

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 296
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 299
    const-string v10, ""

    goto/16 :goto_12b

    .line 300
    :cond_22d
    const-string v13, "PasswordRecoveryEnabled"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_250

    .line 302
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_da

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080262

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 306
    const-string v10, ""

    goto/16 :goto_12b

    .line 309
    :cond_250
    const-string v13, "DevicePasswordExpiration"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_290

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080264

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 312
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 317
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f080274

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_12b

    .line 318
    :cond_290
    const-string v13, "DevicePasswordHistory"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2ad

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080265

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 321
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    goto/16 :goto_da

    .line 324
    :cond_2ad
    const-string v13, "MinPasswordComplexCharacters"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2ca

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080268

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 327
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    goto/16 :goto_da

    .line 330
    :cond_2ca
    const-string v13, "MaxDevicePasswordFailedAttempts"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2e7

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080263

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 334
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    goto/16 :goto_da

    .line 337
    :cond_2e7
    const-string v13, "MinDevicePasswordLength"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_304

    .line 338
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080266

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 340
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    goto/16 :goto_da

    .line 343
    :cond_304
    const-string v13, "RequireDeviceEncryption"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_32e

    .line 344
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_da

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08025f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 347
    const v13, 0x7f08026e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_12b

    .line 350
    :cond_32e
    const-string v13, "DeviceEncryptionEnabled"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_358

    .line 351
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_da

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080260

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 354
    const v13, 0x7f08026e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_12b

    .line 357
    :cond_358
    const-string v13, "RemoteWipe"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12b

    goto/16 :goto_da

    .line 366
    :cond_362
    const-string v13, "AllowTextMessaging"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_385

    .line 373
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 375
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 378
    const-string v10, ""

    goto/16 :goto_14c

    .line 379
    :cond_385
    const-string v13, "AllowWifi"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3a8

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 381
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 384
    const-string v10, ""

    goto/16 :goto_14c

    .line 385
    :cond_3a8
    const-string v13, "AllowBluetoothMode"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3eb

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080244

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 388
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3ce

    .line 389
    const v13, 0x7f08026d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_14c

    .line 390
    :cond_3ce
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3e1

    .line 391
    const v13, 0x7f080272

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_14c

    .line 392
    :cond_3e1
    const-string v13, "2"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14c

    goto/16 :goto_da

    .line 395
    :cond_3eb
    const-string v13, "AllowInternetSharing"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_40e

    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080248

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 398
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 401
    const-string v10, ""

    goto/16 :goto_14c

    .line 402
    :cond_40e
    const-string v13, "AllowPOPIMAPEmail"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_431

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080249

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 405
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 408
    const-string v10, ""

    goto/16 :goto_14c

    .line 409
    :cond_431
    const-string v13, "AllowBrowser"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_454

    .line 410
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080245

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 411
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 414
    const-string v10, ""

    goto/16 :goto_14c

    .line 415
    :cond_454
    const-string v13, "AllowStorageCard"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_477

    .line 416
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 417
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 420
    const-string v10, ""

    goto/16 :goto_14c

    .line 421
    :cond_477
    const-string v13, "AllowDesktopSync"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_49a

    .line 422
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 423
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 426
    const-string v10, ""

    goto/16 :goto_14c

    .line 427
    :cond_49a
    const-string v13, "AllowIrDA"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4bd

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 429
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 432
    const-string v10, ""

    goto/16 :goto_14c

    .line 433
    :cond_4bd
    const-string v13, "MaxInactivityTime"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_503

    .line 435
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4d3

    .line 436
    const-string v8, ""

    .line 437
    const-string v10, ""

    .line 438
    goto/16 :goto_da

    .line 440
    :cond_4d3
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080267

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 442
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f080271

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_14c

    .line 443
    :cond_503
    const-string v13, "RequireEncryptedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_da

    const-string v13, "RequireSignedSMIMEMessages"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 448
    const/4 v9, 0x2

    goto/16 :goto_14c

    .line 462
    :cond_516
    const-string v13, "MaxEmailHtmlBodyTruncationSize"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_556

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08025b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 465
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 468
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f080273

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 470
    :cond_556
    const-string v13, "MaxEmailAgeFilter"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5da

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08025d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 472
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 474
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_586

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a5

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 477
    :cond_586
    const-string v13, "2"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_59b

    .line 478
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 480
    :cond_59b
    const-string v13, "3"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5b0

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a7

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 483
    :cond_5b0
    const-string v13, "4"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5c5

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 486
    :cond_5c5
    const-string v13, "5"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18a

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a9

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 490
    :cond_5da
    const-string v13, "MaxCalendarAgeFilter"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_646

    .line 491
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 493
    const-string v13, "4"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_60a

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 506
    :cond_5fd
    :goto_5fd
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08025c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_18a

    .line 496
    :cond_60a
    const-string v13, "5"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_61e

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0801a9

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5fd

    .line 499
    :cond_61e
    const-string v13, "6"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_632

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0803de

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5fd

    .line 502
    :cond_632
    const-string v13, "7"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5fd

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0803df

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_5fd

    .line 508
    :cond_646
    const-string v13, "RequireManualSyncWhenRoaming"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_66c

    .line 514
    const-string v13, "true"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_da

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08025e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 518
    const v13, 0x7f08026e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 522
    :cond_66c
    const-string v13, "AllowHTMLEmail"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_68f

    .line 523
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080247

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 524
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 527
    const-string v10, ""

    goto/16 :goto_18a

    .line 528
    :cond_68f
    const-string v13, "AttachmentsEnabled"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6b2

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080253

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 531
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 534
    const-string v10, ""

    goto/16 :goto_18a

    .line 535
    :cond_6b2
    const-string v13, "MaxAttachmentSize"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6fa

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080259

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 538
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 541
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    const/4 v15, 0x3

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x400

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const v14, 0x7f080273

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/email/activity/PoliciesList;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 544
    :cond_6fa
    const-string v13, "RequireSignedSMIMEAlgorithm"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_73a

    .line 546
    const/4 v13, 0x1

    if-ne v12, v13, :cond_da

    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080257

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 549
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_725

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08050c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 552
    :cond_725
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18a

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08050d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 559
    :cond_73a
    const-string v13, "RequireEncryptionSMIMEAlgorithm"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7b9

    .line 562
    const/4 v13, 0x1

    if-ne v11, v13, :cond_da

    .line 563
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080258

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 565
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_765

    .line 566
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08050e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 568
    :cond_765
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_77a

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08050f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 571
    :cond_77a
    const-string v13, "2"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_78f

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080510

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 575
    :cond_78f
    const-string v13, "3"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7a4

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080511

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 579
    :cond_7a4
    const-string v13, "4"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18a

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080512

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 587
    :cond_7b9
    const-string v13, "AllowSMIMEEncryptionAlgorithmNegotiation"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_81a

    .line 589
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 590
    .local v3, c:I
    const/4 v13, 0x1

    if-ne v11, v13, :cond_da

    .line 591
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080252

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 593
    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 595
    const-string v13, "1"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7f0

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080275

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 597
    :cond_7f0
    const-string v13, "2"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_805

    .line 598
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080276

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 599
    :cond_805
    const-string v13, "3"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18a

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080277

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_18a

    .line 604
    .end local v3           #c:I
    :cond_81a
    const-string v13, "AllowSMIMESoftCerts"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_83d

    .line 605
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08024f

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 607
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    const-string v14, "true"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_da

    .line 610
    const-string v10, ""

    goto/16 :goto_18a

    .line 612
    :cond_83d
    const/4 v9, 0x1

    goto/16 :goto_18a

    .line 628
    :cond_840
    const/4 v13, 0x2

    if-ne v9, v13, :cond_da

    .line 629
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/email/activity/PoliciesList$PolicyItem;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8, v10}, Lcom/android/email/activity/PoliciesList$PolicyItem;-><init>(Lcom/android/email/activity/PoliciesList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_da

    .line 632
    .end local v7           #itsBoolean:Z
    :cond_853
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/email/activity/PoliciesList;->setHasOptionsMenu(Z)V

    .line 94
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 178
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 179
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 21
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 98
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-super {v0, v1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    const v2, 0x7f0400a8

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    .line 102
    .local v15, view:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "account_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 104
    .local v9, accountId:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v8

    .line 106
    .local v8, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/emailcommon/provider/EmailContent$Policies;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/email/activity/PoliciesList;->POLICIES_CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v5, "account_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    .line 111
    const v2, 0x7f10025a

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountText:Landroid/widget/TextView;

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountText:Landroid/widget/TextView;

    iget-object v3, v8, Lcom/android/emailcommon/provider/EmailContent$Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const v2, 0x7f100254

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mPolicesLayout:Landroid/widget/LinearLayout;

    .line 114
    const v2, 0x7f100256

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePolicesLayout:Landroid/widget/LinearLayout;

    .line 115
    const v2, 0x7f100259

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPolicesLayout:Landroid/widget/LinearLayout;

    .line 116
    const v2, 0x7f10025c

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mNoPolicesLayout:Landroid/widget/LinearLayout;

    .line 118
    const v2, 0x7f100258

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    .line 119
    const v2, 0x7f10025b

    invoke-virtual {v15, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    .line 121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/email/activity/PoliciesList;->getPolicyNameValue(Landroid/database/Cursor;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->devicePolicyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_db

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_db

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mNoPolicesLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mPolicesLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    :goto_da
    return-object v15

    .line 126
    :cond_db
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mNoPolicesLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mPolicesLayout:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->devicePolicyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_ff

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePolicesLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 131
    :cond_ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_112

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPolicesLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 135
    :cond_112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/email/activity/PoliciesList$PolicyAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0400a9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/PoliciesList;->devicePolicyList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/android/email/activity/PoliciesList$PolicyAdapter;-><init>(Lcom/android/email/activity/PoliciesList;Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 137
    const/4 v14, 0x0

    .line 138
    .local v14, totalHeight:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_12d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v11, v2, :cond_159

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-interface {v2, v11, v3, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 141
    .local v12, listItem:Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/View;->measure(II)V

    .line 142
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v14, v2

    .line 138
    add-int/lit8 v11, v11, 0x1

    goto :goto_12d

    .line 144
    .end local v12           #listItem:Landroid/view/View;
    :cond_159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 145
    .local v13, params:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, v14

    iput v2, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mDevicePoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2, v13}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    new-instance v3, Lcom/android/email/activity/PoliciesList$PolicyAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/PoliciesList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0400a9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/PoliciesList;->accountPolicyList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/android/email/activity/PoliciesList$PolicyAdapter;-><init>(Lcom/android/email/activity/PoliciesList;Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    const/4 v14, 0x0

    .line 152
    const/4 v11, 0x0

    :goto_199
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v11, v2, :cond_1c5

    .line 153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-interface {v2, v11, v3, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 155
    .restart local v12       #listItem:Landroid/view/View;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/view/View;->measure(II)V

    .line 156
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v14, v2

    .line 152
    add-int/lit8 v11, v11, 0x1

    goto :goto_199

    .line 158
    .end local v12           #listItem:Landroid/view/View;
    :cond_1c5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v2, v14

    iput v2, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/activity/PoliciesList;->mAccountPoliciesList:Landroid/widget/ListView;

    invoke-virtual {v2, v13}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_da
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_9

    .line 171
    iget-object v0, p0, Lcom/android/email/activity/PoliciesList;->policiesCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_9
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 174
    return-void
.end method
