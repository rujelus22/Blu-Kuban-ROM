.class public Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.super Landroid/app/ListActivity;
.source "SetDefaultActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;
    }
.end annotation


# instance fields
.field private isUsingTwoPanel:Z

.field private mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedEmailIndex:I

.field private mCheckedNameIndex:I

.field private mCheckedNumberIndex:I

.field private mCheckedPhotoIndex:I

.field private final mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEmailChanged:Z

.field private mIsNameChanged:Z

.field private mIsNumberChanged:Z

.field private mIsPhotoChanged:Z

.field private mLayoutMain:Landroid/widget/LinearLayout;

.field protected mLookupUri:Landroid/net/Uri;

.field private mNameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 82
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 91
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    .line 92
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    .line 93
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    .line 94
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    .line 95
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    .line 96
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    .line 97
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    .line 98
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    .line 350
    new-instance v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 443
    new-instance v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$4;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 990
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->performSaveAction()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Lcom/android/contacts/ContactLoader$Result;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindData(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/View$OnClickListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    return p1
.end method

.method private bindData(Lcom/android/contacts/ContactLoader$Result;)V
    .registers 25
    .parameter "data"

    .prologue
    .line 239
    if-nez p1, :cond_3

    .line 307
    :goto_2
    return-void

    .line 243
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->initData()V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v14

    .line 247
    .local v14, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_16
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_106

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/Entity;

    .line 248
    .local v16, entity:Landroid/content/Entity;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v17

    .line 249
    .local v17, entryValues:Landroid/content/ContentValues;
    const-string v2, "data_set"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 250
    .local v15, dataSet:Ljava/lang/String;
    const-string v2, "account_type"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 251
    .local v9, accountType:Ljava/lang/String;
    const-string v2, "account_name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 253
    .local v10, accountName:Ljava/lang/String;
    invoke-virtual {v14, v9, v15}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v22

    .line 254
    .local v22, type:Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 256
    .local v11, accountLabel:Ljava/lang/String;
    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 257
    move-object v10, v11

    .line 260
    :cond_57
    invoke-virtual/range {v16 .. v16}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_5f
    :goto_5f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/Entity$NamedContentValues;

    .line 261
    .local v21, subValue:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v21

    iget-object v7, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 262
    .local v7, subEntryValues:Landroid/content/ContentValues;
    const-string v2, "mimetype"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, mimeType:Ljava/lang/String;
    const-string v2, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 265
    .local v5, dataId:J
    if-eqz v3, :cond_5f

    .line 268
    invoke-virtual {v14, v9, v15, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 270
    .local v4, kind:Lcom/android/contacts/model/DataKind;
    if-eqz v4, :cond_5f

    .line 273
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    move-result-object v13

    .line 276
    .local v13, entry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a0

    move-object/from16 v8, p0

    move-object v12, v7

    .line 277
    invoke-direct/range {v8 .. v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindPhotoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_5f

    .line 278
    :cond_a0
    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 279
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1, v7, v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindNameData(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_5f

    .line 280
    :cond_b0
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 282
    .local v20, icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7, v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindPhoneNumberData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_5f

    .line 283
    .end local v20           #icon:Landroid/graphics/drawable/Drawable;
    :cond_ca
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 285
    .restart local v20       #icon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v7, v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindEmailData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto/16 :goto_5f

    .line 287
    .end local v20           #icon:Landroid/graphics/drawable/Drawable;
    :cond_e5
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fd

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 289
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1, v7, v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindNameData(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto/16 :goto_5f

    .line 291
    :cond_fd
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v10, v1, v7, v13}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindOtherData(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto/16 :goto_5f

    .line 296
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v4           #kind:Lcom/android/contacts/model/DataKind;
    .end local v5           #dataId:J
    .end local v7           #subEntryValues:Landroid/content/ContentValues;
    .end local v9           #accountType:Ljava/lang/String;
    .end local v10           #accountName:Ljava/lang/String;
    .end local v11           #accountLabel:Ljava/lang/String;
    .end local v13           #entry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    .end local v15           #dataSet:Ljava/lang/String;
    .end local v16           #entity:Landroid/content/Entity;
    .end local v17           #entryValues:Landroid/content/ContentValues;
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v21           #subValue:Landroid/content/Entity$NamedContentValues;
    .end local v22           #type:Lcom/android/contacts/model/AccountType;
    :cond_106
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 301
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setupFlattenedList()V

    .line 303
    new-instance v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Landroid/app/ListActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->notifyDataSetChanged()V

    goto/16 :goto_2
.end method

.method private bindEmailData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .registers 9
    .parameter "icon"
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    .line 625
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 626
    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 629
    :cond_9
    const-string v3, "data2"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, typeString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 633
    .local v0, dataType:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 634
    const/4 v0, 0x2

    .line 639
    :goto_17
    const/4 v2, 0x0

    .line 640
    .local v2, types:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isCustomType(I)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 641
    const-string v3, "data3"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 646
    :goto_24
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    .line 647
    iput-object p1, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 648
    iput-object v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 649
    const-string v3, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 650
    const/4 v3, 0x3

    iput v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 652
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    return-void

    .line 636
    .end local v2           #types:Ljava/lang/String;
    :cond_45
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_17

    .line 643
    .restart local v2       #types:Ljava/lang/String;
    :cond_4a
    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_24
.end method

.method private bindNameData(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .registers 10
    .parameter "accountName"
    .parameter "entryValues"
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    const/4 v4, 0x1

    .line 532
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 533
    iput-boolean v4, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 536
    :cond_9
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 538
    .local v1, rawContactId:J
    const-string v3, "data1"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 541
    :cond_21
    const v3, 0x104000e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 544
    :cond_28
    iput-wide v1, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    .line 545
    iput-object v0, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 546
    iput-object p1, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 547
    iput-boolean v4, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    .line 548
    iput v4, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 550
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    return-void
.end method

.method private bindOtherData(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .registers 10
    .parameter "accountName"
    .parameter "entryValues"
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    const/4 v4, 0x1

    .line 558
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 559
    iput-boolean v4, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 563
    :cond_9
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 567
    .local v1, rawContactId:J
    const/4 v0, 0x0

    .line 569
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 570
    :cond_1c
    const v3, 0x104000e

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 573
    :cond_23
    iput-wide v1, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    .line 574
    iput-object v0, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 575
    iput-object p1, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 576
    iput-boolean v4, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    .line 577
    iput v4, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 580
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    return-void
.end method

.method private bindPhoneNumberData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .registers 11
    .parameter "icon"
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    .line 587
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 588
    const/4 v5, 0x1

    iput-boolean v5, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 591
    :cond_9
    const-string v5, "data1"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, number:Ljava/lang/String;
    const-string v5, "normalized_number"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 593
    .local v2, phoneNumberE164:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v5}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 596
    const-string v5, "data2"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, typeString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 600
    .local v0, dataType:I
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 601
    const/4 v0, 0x2

    .line 606
    :goto_2d
    const/4 v4, 0x0

    .line 607
    .local v4, types:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isCustomType(I)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 608
    const-string v5, "data3"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 613
    :goto_3a
    const-string v5, "_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    .line 614
    iput-object p1, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 615
    iput-object v4, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 616
    const-string v5, "data1"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 617
    const/4 v5, 0x2

    iput v5, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 619
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    return-void

    .line 603
    .end local v4           #types:Ljava/lang/String;
    :cond_5b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2d

    .line 610
    .restart local v4       #types:Ljava/lang/String;
    :cond_60
    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3a
.end method

.method private bindPhotoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .registers 12
    .parameter "accountType"
    .parameter "accountName"
    .parameter "accountLabel"
    .parameter "subEntryValues"
    .parameter "entry"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 500
    invoke-direct {p0, p4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 501
    iput-boolean v5, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 504
    :cond_a
    const/4 v0, 0x0

    .line 505
    .local v0, photo:Landroid/graphics/Bitmap;
    const-string v2, "data15"

    invoke-virtual {p4, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 506
    .local v1, photoBiteArray:[B
    if-nez v1, :cond_4f

    .line 507
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02019d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 513
    :goto_1e
    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 514
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0244

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 519
    :goto_33
    const-string v2, "_id"

    invoke-virtual {p4, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    .line 520
    iput-object v0, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mImage:Landroid/graphics/Bitmap;

    .line 521
    iput-object p2, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 522
    iput-object p1, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 523
    iput-boolean v5, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    .line 524
    iput v4, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 526
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    return-void

    .line 510
    :cond_4f
    array-length v2, v1

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1e

    .line 516
    :cond_55
    move-object p1, p3

    goto :goto_33
.end method

.method private static buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .parameter "kind"
    .parameter "values"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1005
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-nez v2, :cond_6

    .line 1009
    :cond_5
    :goto_5
    return-object v1

    .line 1008
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    invoke-interface {v2, p2, p1}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1009
    .local v0, actionBody:Ljava/lang/CharSequence;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 323
    .local v0, count:I
    if-lez v0, :cond_19

    .line 324
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    iget-object v2, v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->kind:Ljava/lang/String;

    .line 325
    .local v2, kind:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;

    invoke-direct {v4, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v2           #kind:Ljava/lang/String;
    :cond_19
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1a
    if-ge v1, v0, :cond_34

    .line 331
    if-eqz v1, :cond_28

    .line 332
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;

    invoke-direct {v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_28
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 338
    :cond_34
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 339
    return-void
.end method

.method private initData()V
    .registers 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 483
    :cond_9
    return-void
.end method

.method private isCustomType(I)Z
    .registers 3
    .parameter "dataType"

    .prologue
    .line 486
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private isDefaultData(Landroid/content/ContentValues;)Z
    .registers 4
    .parameter "subEntryValues"

    .prologue
    const/4 v0, 0x1

    .line 490
    const-string v1, "is_super_primary"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isDefaultName(Landroid/content/ContentValues;)Z
    .registers 4
    .parameter "entryValues"

    .prologue
    const/4 v0, 0x1

    .line 494
    const-string v1, "name_verified"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private performSaveAction()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 404
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 406
    .local v0, contentResolver:Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    if-eqz v2, :cond_2f

    .line 407
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 408
    .local v1, trueValues:Landroid/content/ContentValues;
    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 410
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 414
    .end local v1           #trueValues:Landroid/content/ContentValues;
    :cond_2f
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    if-eqz v2, :cond_58

    .line 415
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 416
    .restart local v1       #trueValues:Landroid/content/ContentValues;
    const-string v2, "name_verified"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 423
    .end local v1           #trueValues:Landroid/content/ContentValues;
    :cond_58
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    if-eqz v2, :cond_81

    .line 424
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 425
    .restart local v1       #trueValues:Landroid/content/ContentValues;
    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 432
    .end local v1           #trueValues:Landroid/content/ContentValues;
    :cond_81
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    if-eqz v2, :cond_aa

    .line 433
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 434
    .restart local v1       #trueValues:Landroid/content/ContentValues;
    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 436
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 440
    .end local v1           #trueValues:Landroid/content/ContentValues;
    :cond_aa
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->finish()V

    .line 441
    return-void
.end method

.method private prepareData()V
    .registers 5

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLookupUri:Landroid/net/Uri;

    .line 345
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 346
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 347
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 348
    return-void
.end method

.method private setLayout()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 205
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 210
    .local v1, rot:I
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isUsingTwoPanel:Z

    if-eqz v2, :cond_2a

    .line 211
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2b

    .line 212
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 214
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 215
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 229
    .end local v0           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_2a
    :goto_2a
    return-void

    .line 218
    :cond_2b
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    .line 219
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 221
    .restart local v0       #params:Landroid/view/ViewGroup$MarginLayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 222
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 223
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLayoutMain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    goto :goto_2a
.end method

.method private setupFlattenedList()V
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 317
    return-void
.end method

.method private setupTitle()V
    .registers 12

    .prologue
    const/16 v10, 0x1e

    const/4 v9, -0x2

    .line 155
    const v7, 0x7f0a0257

    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, displayName:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 158
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_68

    .line 160
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 161
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040018

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 162
    .local v2, customActionBarView:Landroid/view/View;
    const v7, 0x7f0d009d

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 163
    .local v6, saveMenuItem:Landroid/view/View;
    new-instance v7, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v7, 0x7f0d009e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 172
    .local v5, revertMenuItem:Landroid/view/View;
    new-instance v7, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;

    invoke-direct {v7, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-virtual {v0, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 185
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    const-string v1, ""

    .line 188
    .local v1, currentLang:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 189
    const-string v7, "he"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5e

    const-string v7, "iw"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 191
    :cond_5e
    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x13

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 201
    .end local v1           #currentLang:Ljava/lang/String;
    .end local v2           #customActionBarView:Landroid/view/View;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #revertMenuItem:Landroid/view/View;
    .end local v6           #saveMenuItem:Landroid/view/View;
    :cond_68
    :goto_68
    return-void

    .line 195
    .restart local v1       #currentLang:Ljava/lang/String;
    .restart local v2       #customActionBarView:Landroid/view/View;
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    .restart local v5       #revertMenuItem:Landroid/view/View;
    .restart local v6       #saveMenuItem:Landroid/view/View;
    :cond_69
    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_68
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 233
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 234
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setLayout()V

    .line 235
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isUsingTwoPanel:Z

    .line 126
    const v0, 0x7f0400bd

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setContentView(I)V

    .line 127
    const v0, 0x7f0d00ca

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLayoutMain:Landroid/widget/LinearLayout;

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->prepareData()V

    .line 131
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setupTitle()V

    .line 132
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1014
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-gez p3, :cond_3

    .line 1018
    :cond_2
    :goto_2
    return-void

    .line 1015
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    .line 1016
    .local v0, entry:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;
    if-eqz v0, :cond_2

    .line 1017
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 150
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 144
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->finish()V

    .line 145
    const/4 v0, 0x1

    goto :goto_b

    .line 142
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 137
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setLayout()V

    .line 138
    return-void
.end method
