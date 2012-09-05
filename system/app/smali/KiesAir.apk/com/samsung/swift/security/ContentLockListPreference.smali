.class public Lcom/samsung/swift/security/ContentLockListPreference;
.super Landroid/preference/DialogPreference;
.source "ContentLockListPreference.java"


# instance fields
.field checkedItems:[Z

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mNewValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChanged:Z

.field private mValues:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/swift/security/ContentLockListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mValues:Ljava/util/Set;

    .line 24
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mNewValues:Ljava/util/Set;

    .line 33
    sget-object v1, Lcom/samsung/swift/R$styleable;->ContentLockListPreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 34
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 35
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 36
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 37
    invoke-direct {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->setContentLockItems()V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/swift/security/ContentLockListPreference;)[Ljava/lang/CharSequence;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/swift/security/ContentLockListPreference;)Ljava/util/Set;
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mNewValues:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$276(Lcom/samsung/swift/security/ContentLockListPreference;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mPreferenceChanged:Z

    or-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mPreferenceChanged:Z

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/swift/security/ContentLockListPreference;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getCheckedItemsCount()I

    move-result v0

    return v0
.end method

.method private getCheckedItemsCount()I
    .registers 4

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference;->checkedItems:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_12

    .line 248
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference;->checkedItems:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_f

    .line 249
    add-int/lit8 v0, v0, 0x1

    .line 246
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 252
    :cond_12
    return v0
.end method

.method private getContentLockPref()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 259
    .local v1, values:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_2c

    .line 261
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 262
    iget-object v2, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 265
    :cond_2c
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4e

    .line 267
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "allPortlets"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    const-string v2, "allPortlets"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_4e
    return-object v1
.end method

.method private getSelectedItems()[Z
    .registers 7

    .prologue
    .line 276
    iget-object v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 277
    .local v0, entries:[Ljava/lang/CharSequence;
    array-length v1, v0

    .line 278
    .local v1, entryCount:I
    iget-object v4, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mValues:Ljava/util/Set;

    .line 279
    .local v4, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-array v3, v1, [Z

    .line 281
    .local v3, result:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_19

    .line 283
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aput-boolean v5, v3, v2

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 286
    :cond_19
    return-object v3
.end method

.method private setContentLockItems()V
    .registers 9

    .prologue
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v1, entryValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v5, 0xb

    new-array v3, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/swift/R$string;->all:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/swift/R$string;->bookmarks:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/swift/R$string;->calendar:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/swift/R$string;->call:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/swift/R$string;->contacts:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x5

    invoke-virtual {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/swift/R$string;->file_explorer:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x6

    invoke-virtual {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/swift/R$string;->messages:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x7

    invoke-virtual {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/swift/R$string;->music:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/16 v5, 0x8

    invoke-virtual {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/swift/R$string;->photo:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/16 v5, 0x9

    invoke-virtual {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/swift/R$string;->ringtone:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/16 v5, 0xa

    invoke-virtual {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/swift/R$string;->video:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 64
    .local v3, portletNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/samsung/swift/R$array;->portlet_list:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 66
    .local v4, portletValues:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_db
    array-length v5, v4

    if-ge v2, v5, :cond_139

    .line 68
    aget-object v5, v4, v2

    const-string v6, "callsPortlet"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_103

    .line 70
    invoke-static {}, Lcom/samsung/swift/Swift;->isTelephonySupported()Z

    move-result v5

    if-eqz v5, :cond_100

    .line 72
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_100
    :goto_100
    add-int/lit8 v2, v2, 0x1

    goto :goto_db

    .line 76
    :cond_103
    aget-object v5, v4, v2

    const-string v6, "messagesPortlet"

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_126

    .line 78
    invoke-static {}, Lcom/samsung/swift/Swift;->isMessagingSupported()Z

    move-result v5

    if-eqz v5, :cond_100

    .line 80
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_100

    .line 86
    :cond_126
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    aget-object v5, v4, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_100

    .line 91
    :cond_139
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 94
    return-void
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .registers 4
    .parameter "value"

    .prologue
    .line 156
    if-eqz p1, :cond_1b

    iget-object v1, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_1b

    .line 158
    iget-object v1, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_b
    if-ltz v0, :cond_1b

    .line 160
    iget-object v1, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 165
    .end local v0           #i:I
    :goto_17
    return v0

    .line 158
    .restart local v0       #i:I
    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 165
    .end local v0           #i:I
    :cond_1b
    const/4 v0, -0x1

    goto :goto_17
.end method

.method public getEntries()[Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntries:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getEntryValues()[Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValues()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mValues:Ljava/util/Set;

    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .registers 4
    .parameter "positiveResult"

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 294
    if-eqz p1, :cond_17

    iget-boolean v1, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mPreferenceChanged:Z

    if-eqz v1, :cond_17

    .line 296
    iget-object v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mNewValues:Ljava/util/Set;

    .line 297
    .local v0, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, v0}, Lcom/samsung/swift/security/ContentLockListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 299
    invoke-virtual {p0, v0}, Lcom/samsung/swift/security/ContentLockListPreference;->saveValues(Ljava/util/Set;)V

    .line 300
    invoke-virtual {p0, v0}, Lcom/samsung/swift/security/ContentLockListPreference;->setValues(Ljava/util/Set;)V

    .line 304
    .end local v0           #values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_17
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mPreferenceChanged:Z

    .line 305
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .registers 5
    .parameter "builder"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntries:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v0, :cond_13

    .line 175
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MultiSelectListPreference requires an entries array and an entryValues array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_13
    invoke-direct {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getContentLockPref()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/security/ContentLockListPreference;->setValues(Ljava/util/Set;)V

    .line 180
    invoke-direct {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getSelectedItems()[Z

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->checkedItems:[Z

    .line 182
    iget-object v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/samsung/swift/security/ContentLockListPreference;->checkedItems:[Z

    new-instance v2, Lcom/samsung/swift/security/ContentLockListPreference$1;

    invoke-direct {v2, p0}, Lcom/samsung/swift/security/ContentLockListPreference$1;-><init>(Lcom/samsung/swift/security/ContentLockListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    iget-object v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mNewValues:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 239
    iget-object v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mNewValues:Ljava/util/Set;

    iget-object v1, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mValues:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 240
    return-void
.end method

.method protected saveValues(Ljava/util/Set;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 136
    .local v0, entries:[Ljava/lang/CharSequence;
    array-length v1, v0

    .line 138
    .local v1, entryCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    if-ge v2, v1, :cond_42

    .line 140
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 141
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 143
    :cond_2b
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_28

    .line 146
    :cond_42
    invoke-static {}, Lcom/samsung/swift/Swift;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    return-void
.end method

.method public setEntries(I)V
    .registers 3
    .parameter "entriesResId"

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/security/ContentLockListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public setEntries([Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "entries"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 101
    return-void
.end method

.method public setEntryValues(I)V
    .registers 3
    .parameter "entryValuesResId"

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/samsung/swift/security/ContentLockListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/swift/security/ContentLockListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public setEntryValues([Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "entryValues"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 116
    return-void
.end method

.method public setValues(Ljava/util/Set;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/samsung/swift/security/ContentLockListPreference;->mValues:Ljava/util/Set;

    .line 130
    return-void
.end method
