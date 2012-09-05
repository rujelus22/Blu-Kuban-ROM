.class public Lcom/android/contacts/interactions/ImportExportDialogFragment;
.super Landroid/app/DialogFragment;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# static fields
.field public static mExternalSdCardMounted:Z

.field public static mExternalSdCardStoragePath:Ljava/lang/String;

.field public static mSdCardMounted:Z

.field public static mSdCardStoragePath:Ljava/lang/String;

.field public static mStorageListener:Landroid/os/storage/StorageEventListener;

.field public static mStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private isAirplaneMode:Z

.field public mImportPath:Ljava/lang/String;

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 76
    new-instance v0, Lcom/android/contacts/interactions/ImportExportDialogFragment$1;

    invoke-direct {v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment$1;-><init>()V

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 82
    sput-boolean v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    .line 84
    const-string v0, ""

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    .line 85
    sput-boolean v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/interactions/ImportExportDialogFragment;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->handleImportRequest(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/interactions/ImportExportDialogFragment;)Lcom/android/contacts/preference/ContactsPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    return-object v0
.end method

.method private checkStorageState()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 374
    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v7, :cond_1b

    .line 375
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    sput-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 376
    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v8, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 378
    :cond_1b
    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 379
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v5

    .line 380
    .local v1, length:I
    const-string v3, ""

    .line 381
    .local v3, storagePath:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_25
    if-ge v0, v1, :cond_73

    .line 382
    aget-object v4, v5, v0

    .line 383
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    .line 384
    .local v6, subsystem:Ljava/lang/String;
    if-eqz v6, :cond_53

    .line 385
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 386
    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, state:Ljava/lang/String;
    const-string v7, "sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_59

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-nez v7, :cond_59

    .line 388
    sput-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    .line 389
    const-string v7, "mounted"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 390
    sput-boolean v10, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    .line 381
    .end local v2           #state:Ljava/lang/String;
    :cond_53
    :goto_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 392
    .restart local v2       #state:Ljava/lang/String;
    :cond_56
    sput-boolean v9, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    goto :goto_53

    .line 394
    :cond_59
    const-string v7, "sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 395
    sput-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 396
    const-string v7, "mounted"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_74

    .line 397
    sput-boolean v10, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    .line 405
    .end local v2           #state:Ljava/lang/String;
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v6           #subsystem:Ljava/lang/String;
    :cond_73
    return-void

    .line 400
    .restart local v2       #state:Ljava/lang/String;
    .restart local v4       #storageVolume:Landroid/os/storage/StorageVolume;
    .restart local v6       #subsystem:Ljava/lang/String;
    :cond_74
    sput-boolean v9, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    goto :goto_53
.end method

.method private handleImportRequest(I)Z
    .registers 10
    .parameter "resId"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 318
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 320
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 321
    .local v0, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 324
    .local v3, size:I
    packed-switch p1, :pswitch_data_4e

    .line 335
    :goto_15
    if-le v3, v5, :cond_3a

    .line 337
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 338
    .local v2, args:Landroid/os/Bundle;
    const-string v5, "resourceId"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0a0112

    sget-object v7, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v5, p0, v6, v7, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 352
    .end local v2           #args:Landroid/os/Bundle;
    :goto_2d
    return v4

    .line 326
    :pswitch_2e
    sget-object v6, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->setImportPath(Ljava/lang/String;)V

    goto :goto_15

    .line 330
    :pswitch_34
    sget-object v6, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->setImportPath(Ljava/lang/String;)V

    goto :goto_15

    .line 350
    :cond_3a
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-ne v3, v5, :cond_4b

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    :goto_46
    invoke-static {v6, p1, v4}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    move v4, v5

    .line 352
    goto :goto_2d

    .line 350
    :cond_4b
    const/4 v4, 0x0

    goto :goto_46

    .line 324
    nop

    :pswitch_data_4e
    .packed-switch 0x7f0a0276
        :pswitch_2e
        :pswitch_34
    .end packed-switch
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .registers 3
    .parameter "fragmentManager"

    .prologue
    .line 98
    new-instance v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;-><init>()V

    .line 99
    .local v0, fragment:Lcom/android/contacts/interactions/ImportExportDialogFragment;
    const-string v1, "ImportExportDialogFragment"

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 100
    return-void
.end method


# virtual methods
.method public getImportPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mImportPath:Ljava/lang/String;

    return-object v0
.end method

.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .registers 5
    .parameter "account"
    .parameter "extraArgs"

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->dismiss()V

    .line 365
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .registers 1

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->dismiss()V

    .line 371
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 93
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 94
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 12
    .parameter "savedInstanceState"

    .prologue
    const v9, 0x7f090003

    const/high16 v8, 0x7f09

    const/4 v5, 0x0

    .line 110
    if-eqz p1, :cond_11

    .line 111
    const-string v6, "import.vcard.path"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mImportPath:Ljava/lang/String;

    .line 114
    :cond_11
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 115
    .local v3, mContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 116
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 120
    .local v2, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0400b7

    invoke-direct {v0, p0, v6, v7, v2}, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;-><init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 133
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->checkStorageState()V

    .line 134
    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_45

    const/4 v5, 0x1

    :cond_45
    iput-boolean v5, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->isAirplaneMode:Z

    .line 135
    sget-boolean v5, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    if-eqz v5, :cond_6b

    .line 136
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 137
    const v5, 0x7f0a0276

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 138
    :cond_5b
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 139
    const v5, 0x7f0a0274

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 141
    :cond_6b
    sget-boolean v5, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    if-eqz v5, :cond_8f

    .line 142
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_7f

    .line 143
    const v5, 0x7f0a0277

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 144
    :cond_7f
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_8f

    .line 145
    const v5, 0x7f0a0275

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 147
    :cond_8f
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_b1

    iget-boolean v5, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->isAirplaneMode:Z

    if-nez v5, :cond_b1

    .line 148
    const v5, 0x7f0a00bb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 149
    const v5, 0x7f0a027f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 151
    :cond_b1
    const v5, 0x7f090004

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_c4

    .line 152
    const v5, 0x7f0a023a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 155
    :cond_c4
    new-instance v1, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;-><init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 217
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0a0101

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    const-string v0, "import.vcard.path"

    iget-object v1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mImportPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public setImportPath(Ljava/lang/String;)V
    .registers 2
    .parameter "path"

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mImportPath:Ljava/lang/String;

    .line 413
    return-void
.end method
