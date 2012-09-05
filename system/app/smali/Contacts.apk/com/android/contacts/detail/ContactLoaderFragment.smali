.class public Lcom/android/contacts/detail/ContactLoaderFragment;
.super Landroid/app/Fragment;
.source "ContactLoaderFragment.java"

# interfaces
.implements Lcom/android/contacts/activities/ContactDetailActivity$FragmentKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContactData:Lcom/android/contacts/ContactLoader$Result;

.field private mContext:Landroid/content/Context;

.field private mCustomRingtone:Ljava/lang/String;

.field private final mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

.field private mLookupUri:Landroid/net/Uri;

.field private mOptionsMenuEditable:Z

.field private mOptionsMenuExceptSim:Z

.field private mOptionsMenuExceptSimAirplane:Z

.field private mOptionsMenuOptions:Z

.field private mOptionsMenuPhoneNumber:Z

.field private mOptionsMenuPrint:Z

.field private mOptionsMenuSeparate:Z

.field private mOptionsMenuShareable:Z

.field private mOptionsMenuUserProfile:Z

.field private mSendToVoicemailState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    const-class v0, Lcom/android/contacts/detail/ContactLoaderFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 201
    new-instance v0, Lcom/android/contacts/detail/ContactLoaderFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactLoaderFragment$1;-><init>(Lcom/android/contacts/detail/ContactLoaderFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/ContactLoaderFragment;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/ContactLoader$Result;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/contacts/detail/ContactLoaderFragment;Lcom/android/contacts/ContactLoader$Result;)Lcom/android/contacts/ContactLoader$Result;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/ContactLoaderFragment;)Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    return-object v0
.end method

.method private doPickRingtone()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 568
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 572
    const-string v2, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 574
    const-string v2, "android.intent.extra.ringtone.SHOW_SILENT"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 577
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 578
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 585
    .local v1, ringtoneUri:Landroid/net/Uri;
    :goto_22
    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 588
    invoke-virtual {p0, v0, v4}, Lcom/android/contacts/detail/ContactLoaderFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 589
    return-void

    .line 581
    .end local v1           #ringtoneUri:Landroid/net/Uri;
    :cond_2b
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .restart local v1       #ringtoneUri:Landroid/net/Uri;
    goto :goto_22
.end method

.method private getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 8
    .parameter "uri"

    .prologue
    .line 539
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 540
    .local v1, uriBundle:Landroid/os/Bundle;
    const-string v2, "uri_to_authorize"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 541
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "authorize"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 546
    .local v0, authResponse:Landroid/os/Bundle;
    if-eqz v0, :cond_24

    .line 547
    const-string v2, "authorized_uri"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 550
    :goto_23
    return-object v2

    :cond_24
    move-object v2, p1

    goto :goto_23
.end method

.method private handleRingtonePicked(Landroid/net/Uri;)V
    .registers 6
    .parameter "pickedUri"

    .prologue
    .line 607
    if-eqz p1, :cond_8

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 608
    :cond_8
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    .line 612
    :goto_b
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/ContactSaveService;->createSetRingtone(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 614
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 615
    return-void

    .line 610
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1b
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    goto :goto_b
.end method


# virtual methods
.method public handleKeyDown(I)Z
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 557
    packed-switch p1, :pswitch_data_12

    .line 563
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 559
    :pswitch_5
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDeleteRequested(Landroid/net/Uri;)V

    .line 560
    :cond_10
    const/4 v0, 0x1

    goto :goto_4

    .line 557
    :pswitch_data_12
    .packed-switch 0x43
        :pswitch_5
    .end packed-switch
.end method

.method public hasContactPhoneNumber(Landroid/view/Menu;)Z
    .registers 21
    .parameter "menu"

    .prologue
    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v17, v0

    if-nez v17, :cond_17

    .line 366
    :cond_14
    const/16 v17, 0x0

    .line 412
    :goto_16
    return v17

    .line 369
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 370
    .local v3, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/ContactLoader$Result;->getBlackList()Ljava/util/ArrayList;

    move-result-object v5

    .line 372
    .local v5, blackList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v15, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 375
    .local v12, isBlackListContact:Ljava/lang/Boolean;
    if-eqz v3, :cond_3a

    if-nez v5, :cond_3d

    .line 376
    :cond_3a
    const/16 v17, 0x0

    goto :goto_16

    .line 378
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4b
    :goto_4b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Entity;

    .line 379
    .local v8, entity:Landroid/content/Entity;
    invoke-virtual {v8}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v7

    .line 380
    .local v7, entValues:Landroid/content/ContentValues;
    const-string v17, "account_type"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 381
    .local v2, accountType:Ljava/lang/String;
    const-string v17, "data_set"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 383
    .local v6, dataSet:Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_73
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Entity$NamedContentValues;

    .line 384
    .local v16, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v16

    iget-object v9, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 385
    .local v9, entryValues:Landroid/content/ContentValues;
    const-string v17, "mimetype"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 386
    .local v14, mimeType:Ljava/lang/String;
    invoke-virtual {v3, v2, v6, v14}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v13

    .line 389
    .local v13, kind:Lcom/android/contacts/model/DataKind;
    const-string v17, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_73

    .line 390
    if-eqz v13, :cond_73

    iget-object v0, v13, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v17, v0

    if-eqz v17, :cond_73

    .line 392
    iget-object v0, v13, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v9}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 393
    .local v4, actionBody:Ljava/lang/CharSequence;
    if-eqz v4, :cond_73

    .line 394
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_73

    .line 397
    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 398
    goto/16 :goto_4b

    .line 412
    .end local v2           #accountType:Ljava/lang/String;
    .end local v4           #actionBody:Ljava/lang/CharSequence;
    .end local v6           #dataSet:Ljava/lang/String;
    .end local v7           #entValues:Landroid/content/ContentValues;
    .end local v8           #entity:Landroid/content/Entity;
    .end local v9           #entryValues:Landroid/content/ContentValues;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #kind:Lcom/android/contacts/model/DataKind;
    .end local v14           #mimeType:Ljava/lang/String;
    .end local v16           #subValue:Landroid/content/Entity$NamedContentValues;
    :cond_d6
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_e0

    const/16 v17, 0x1

    goto/16 :goto_16

    :cond_e0
    const/16 v17, 0x0

    goto/16 :goto_16
.end method

.method public isContactEditable()Z
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isContactOptionsChangeEnabled()Z
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public isContactPrintable()Z
    .registers 2

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isContactShareable()Z
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isDirectoryEntry()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isContactSim()Z
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isSim()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isContactUserProfile()Z
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v0}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOptionsMenuChanged()Z
    .registers 3

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactOptionsChangeEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_18

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v1

    if-ne v0, v1, :cond_18

    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactShareable()Z

    move-result v1

    if-eq v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isSimAirplane()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 350
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactSim()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 351
    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_17

    .line 355
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 351
    goto :goto_16

    :cond_19
    move v0, v1

    .line 355
    goto :goto_16
.end method

.method public loadUri(Landroid/net/Uri;)V
    .registers 6
    .parameter "lookupUri"

    .prologue
    const/4 v3, 0x1

    .line 175
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {p1, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 192
    :cond_9
    :goto_9
    return-void

    .line 180
    :cond_a
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    .line 181
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v1, :cond_26

    .line 182
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 183
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    .line 184
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v1, :cond_9

    .line 185
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-interface {v1, v2}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDetailsLoaded(Lcom/android/contacts/ContactLoader$Result;)V

    goto :goto_9

    .line 187
    :cond_26
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 188
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_9
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 167
    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_1d

    .line 168
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 169
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mDetailLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 172
    .end local v0           #args:Landroid/os/Bundle;
    :cond_1d
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 593
    const/4 v1, -0x1

    if-eq p2, v1, :cond_4

    .line 604
    :goto_3
    return-void

    .line 597
    :cond_4
    packed-switch p1, :pswitch_data_14

    goto :goto_3

    .line 599
    :pswitch_8
    const-string v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 600
    .local v0, pickedUri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->handleRingtonePicked(Landroid/net/Uri;)V

    goto :goto_3

    .line 597
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 151
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    .line 152
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 137
    if-eqz p1, :cond_f

    .line 138
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    .line 140
    :cond_f
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 244
    const v0, 0x7f10000e

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 245
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 156
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactLoaderFragment;->setHasOptionsMenu(Z)V

    .line 160
    const v0, 0x7f040026

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 15
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 417
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v11

    packed-switch v11, :pswitch_data_166

    :cond_9
    :goto_9
    :pswitch_9
    move v10, v9

    .line 532
    :cond_a
    :goto_a
    return v10

    .line 419
    :pswitch_b
    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v10, v11}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_9

    .line 423
    :pswitch_17
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-interface {v9, v11}, Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;->onDeleteRequested(Landroid/net/Uri;)V

    goto :goto_a

    .line 427
    :pswitch_23
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v11, :cond_29

    move v10, v9

    goto :goto_a

    .line 428
    :cond_29
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->doPickRingtone()V

    goto :goto_a

    .line 432
    :pswitch_2d
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-nez v11, :cond_33

    move v10, v9

    goto :goto_a

    .line 434
    :cond_33
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->getLookupKey()Ljava/lang/String;

    move-result-object v7

    .line 435
    .local v7, lookupKey:Ljava/lang/String;
    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v11, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 436
    .local v8, shareUri:Landroid/net/Uri;
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->isUserProfile()Z

    move-result v11

    if-eqz v11, :cond_4b

    .line 440
    invoke-direct {p0, v8}, Lcom/android/contacts/detail/ContactLoaderFragment;->getPreAuthorizedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    .line 443
    :cond_4b
    new-instance v5, Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND"

    invoke-direct {v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    .local v5, intent:Landroid/content/Intent;
    const-string v11, "text/x-vcard"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const-string v11, "android.intent.extra.STREAM"

    invoke-virtual {v5, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 448
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const v12, 0x7f0a020f

    invoke-virtual {v11, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 449
    .local v1, chooseTitle:Ljava/lang/CharSequence;
    invoke-static {v5, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 452
    .local v0, chooseIntent:Landroid/content/Intent;
    :try_start_69
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_69 .. :try_end_6e} :catch_6f

    goto :goto_a

    .line 453
    :catch_6f
    move-exception v4

    .line 454
    .local v4, ex:Landroid/content/ActivityNotFoundException;
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    const v12, 0x7f0a0105

    invoke-static {v11, v12, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_a

    .line 460
    .end local v0           #chooseIntent:Landroid/content/Intent;
    .end local v1           #chooseTitle:Ljava/lang/CharSequence;
    .end local v4           #ex:Landroid/content/ActivityNotFoundException;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #lookupKey:Ljava/lang/String;
    .end local v8           #shareUri:Landroid/net/Uri;
    :pswitch_7d
    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    if-nez v11, :cond_82

    move v9, v10

    :cond_82
    iput-boolean v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 461
    iget-boolean v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-interface {p1, v9}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 462
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    iget-boolean v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-static {v9, v11, v12}, Lcom/android/contacts/ContactSaveService;->createSetSendToVoicemail(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v5

    .line 464
    .restart local v5       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_a

    .line 468
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_9a
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v9, :cond_b1

    .line 469
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.contacts.action.SET_DEFAULT"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 470
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v9, "contactUri"

    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v5, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 471
    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactLoaderFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 473
    .end local v5           #intent:Landroid/content/Intent;
    :cond_b1
    sget-object v9, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v11, "contactUri is null"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 479
    :pswitch_ba
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v9, :cond_dc

    .line 480
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 481
    .local v2, contactId:J
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.android.contacts.action.JOIN_CONTACT"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v9, "com.android.contacts.action.CONTACT_ID"

    invoke-virtual {v5, v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 483
    const-string v9, "intentFrom"

    const-string v11, "detailview"

    invoke-virtual {v5, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactLoaderFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 486
    .end local v2           #contactId:J
    .end local v5           #intent:Landroid/content/Intent;
    :cond_dc
    sget-object v9, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v11, "contactUri is null"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 492
    :pswitch_e5
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v9, :cond_103

    .line 493
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.android.contacts.action.JOINED_CONTACT"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    .restart local v5       #intent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 495
    const-string v9, "UNLINK_ONLY"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 496
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v5, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_a

    .line 499
    .end local v5           #intent:Landroid/content/Intent;
    :cond_103
    sget-object v9, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v11, "contactUri is null"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 506
    :pswitch_10c
    iget-object v9, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v9, :cond_123

    .line 507
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.contacts.action.HISTORY_LIST"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v9, "contactUri"

    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v5, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 509
    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactLoaderFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    .line 511
    .end local v5           #intent:Landroid/content/Intent;
    :cond_123
    sget-object v9, Lcom/android/contacts/detail/ContactLoaderFragment;->TAG:Ljava/lang/String;

    const-string v11, "contactUri is null"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 517
    :pswitch_12c
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v11, :cond_a

    .line 518
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string v12, "isBlackListContact"

    invoke-virtual {v11, v12, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 519
    .local v6, isBlackListContact:Z
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    iget-object v12, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v6, :cond_143

    move v9, v10

    :cond_143
    invoke-static {v11, v12, v9}, Lcom/android/contacts/interactions/AddToRejectListInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/AddToRejectListInteraction;

    goto/16 :goto_a

    .line 524
    .end local v6           #isBlackListContact:Z
    :pswitch_148
    iget-object v10, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v10, :cond_9

    .line 525
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.android.contacts.action.SEND_INFO"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 526
    .restart local v5       #intent:Landroid/content/Intent;
    const-string v10, "CONTACT_URI"

    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 527
    const-string v10, "mode"

    const/4 v11, 0x2

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 528
    invoke-virtual {p0, v5}, Lcom/android/contacts/detail/ContactLoaderFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_9

    .line 417
    nop

    :pswitch_data_166
    .packed-switch 0x7f0d026a
        :pswitch_ba
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_17
        :pswitch_9
        :pswitch_b
        :pswitch_9
        :pswitch_10c
        :pswitch_e5
        :pswitch_9a
        :pswitch_23
        :pswitch_2d
        :pswitch_148
        :pswitch_7d
        :pswitch_12c
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 15
    .parameter "menu"

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactOptionsChangeEnabled()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    .line 256
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactEditable()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    .line 257
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactShareable()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    .line 258
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactUserProfile()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    .line 259
    invoke-virtual {p0, p1}, Lcom/android/contacts/detail/ContactLoaderFragment;->hasContactPhoneNumber(Landroid/view/Menu;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPhoneNumber:Z

    .line 260
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactSim()Z

    move-result v11

    if-nez v11, :cond_127

    const/4 v11, 0x1

    :goto_25
    iput-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    .line 261
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isSimAirplane()Z

    move-result v11

    if-nez v11, :cond_12a

    const/4 v11, 0x1

    :goto_2e
    iput-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    .line 262
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactLoaderFragment;->isContactPrintable()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPrint:Z

    .line 264
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    if-eqz v11, :cond_5a

    .line 265
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->isSendToVoicemail()Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    .line 266
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->getCustomRingtone()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mCustomRingtone:Ljava/lang/String;

    .line 267
    iget-object v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mContactData:Lcom/android/contacts/ContactLoader$Result;

    invoke-virtual {v11}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_12d

    const/4 v11, 0x1

    :goto_58
    iput-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuSeparate:Z

    .line 272
    :cond_5a
    const v11, 0x7f0d027d

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 273
    .local v6, optionsSendToVoicemail:Landroid/view/MenuItem;
    if-eqz v6, :cond_6d

    .line 274
    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mSendToVoicemailState:Z

    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 275
    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuOptions:Z

    invoke-interface {v6, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 277
    :cond_6d
    const v11, 0x7f0d027a

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 278
    .local v5, optionsRingtone:Landroid/view/MenuItem;
    if-eqz v5, :cond_7a

    .line 281
    const/4 v11, 0x0

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 285
    :cond_7a
    const v11, 0x7f0d0277

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 286
    .local v2, historyMenu:Landroid/view/MenuItem;
    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    if-eqz v11, :cond_130

    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    if-nez v11, :cond_130

    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    if-eqz v11, :cond_130

    const/4 v11, 0x1

    :goto_8e
    invoke-interface {v2, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 288
    const v11, 0x7f0d0279

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 289
    .local v4, optionsDefault:Landroid/view/MenuItem;
    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    if-eqz v11, :cond_133

    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    if-nez v11, :cond_133

    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    if-eqz v11, :cond_133

    const/4 v11, 0x1

    :goto_a5
    invoke-interface {v4, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 291
    const v11, 0x7f0d0275

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 292
    .local v1, editMenu:Landroid/view/MenuItem;
    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    if-eqz v11, :cond_136

    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    if-eqz v11, :cond_136

    const/4 v11, 0x1

    :goto_b8
    invoke-interface {v1, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 294
    const v11, 0x7f0d0273

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 295
    .local v0, deleteMenu:Landroid/view/MenuItem;
    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    if-eqz v11, :cond_138

    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSimAirplane:Z

    if-eqz v11, :cond_138

    const/4 v11, 0x1

    :goto_cb
    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 298
    const v11, 0x7f0d026a

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 299
    .local v3, joinMenu:Landroid/view/MenuItem;
    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    if-eqz v11, :cond_13a

    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    if-nez v11, :cond_13a

    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuExceptSim:Z

    if-eqz v11, :cond_13a

    const/4 v11, 0x1

    :goto_e2
    invoke-interface {v3, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 302
    const v11, 0x7f0d0278

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 308
    .local v9, separateMenu:Landroid/view/MenuItem;
    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuEditable:Z

    if-eqz v11, :cond_13c

    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    if-nez v11, :cond_13c

    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuSeparate:Z

    if-eqz v11, :cond_13c

    const/4 v11, 0x1

    :goto_f9
    invoke-interface {v9, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 311
    const v11, 0x7f0d027b

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 312
    .local v10, shareMenu:Landroid/view/MenuItem;
    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuShareable:Z

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 320
    const v11, 0x7f0d027d

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 321
    .local v8, sendVoiceMenu:Landroid/view/MenuItem;
    const/4 v11, 0x0

    invoke-interface {v8, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 323
    const v11, 0x7f0d027c

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 324
    .local v7, printMenu:Landroid/view/MenuItem;
    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuPrint:Z

    if-eqz v11, :cond_13e

    iget-boolean v11, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mOptionsMenuUserProfile:Z

    if-nez v11, :cond_13e

    const/4 v11, 0x1

    :goto_123
    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 326
    return-void

    .line 260
    .end local v0           #deleteMenu:Landroid/view/MenuItem;
    .end local v1           #editMenu:Landroid/view/MenuItem;
    .end local v2           #historyMenu:Landroid/view/MenuItem;
    .end local v3           #joinMenu:Landroid/view/MenuItem;
    .end local v4           #optionsDefault:Landroid/view/MenuItem;
    .end local v5           #optionsRingtone:Landroid/view/MenuItem;
    .end local v6           #optionsSendToVoicemail:Landroid/view/MenuItem;
    .end local v7           #printMenu:Landroid/view/MenuItem;
    .end local v8           #sendVoiceMenu:Landroid/view/MenuItem;
    .end local v9           #separateMenu:Landroid/view/MenuItem;
    .end local v10           #shareMenu:Landroid/view/MenuItem;
    :cond_127
    const/4 v11, 0x0

    goto/16 :goto_25

    .line 261
    :cond_12a
    const/4 v11, 0x0

    goto/16 :goto_2e

    .line 267
    :cond_12d
    const/4 v11, 0x0

    goto/16 :goto_58

    .line 286
    .restart local v2       #historyMenu:Landroid/view/MenuItem;
    .restart local v5       #optionsRingtone:Landroid/view/MenuItem;
    .restart local v6       #optionsSendToVoicemail:Landroid/view/MenuItem;
    :cond_130
    const/4 v11, 0x0

    goto/16 :goto_8e

    .line 289
    .restart local v4       #optionsDefault:Landroid/view/MenuItem;
    :cond_133
    const/4 v11, 0x0

    goto/16 :goto_a5

    .line 292
    .restart local v1       #editMenu:Landroid/view/MenuItem;
    :cond_136
    const/4 v11, 0x0

    goto :goto_b8

    .line 295
    .restart local v0       #deleteMenu:Landroid/view/MenuItem;
    :cond_138
    const/4 v11, 0x0

    goto :goto_cb

    .line 299
    .restart local v3       #joinMenu:Landroid/view/MenuItem;
    :cond_13a
    const/4 v11, 0x0

    goto :goto_e2

    .line 308
    .restart local v9       #separateMenu:Landroid/view/MenuItem;
    :cond_13c
    const/4 v11, 0x0

    goto :goto_f9

    .line 324
    .restart local v7       #printMenu:Landroid/view/MenuItem;
    .restart local v8       #sendVoiceMenu:Landroid/view/MenuItem;
    .restart local v10       #shareMenu:Landroid/view/MenuItem;
    :cond_13e
    const/4 v11, 0x0

    goto :goto_123
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 146
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/contacts/detail/ContactLoaderFragment;->mListener:Lcom/android/contacts/detail/ContactLoaderFragment$ContactLoaderFragmentListener;

    .line 196
    return-void
.end method
