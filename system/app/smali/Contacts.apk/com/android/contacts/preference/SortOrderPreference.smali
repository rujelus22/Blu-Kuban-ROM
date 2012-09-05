.class public final Lcom/android/contacts/preference/SortOrderPreference;
.super Landroid/preference/ListPreference;
.source "SortOrderPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-direct {p0}, Lcom/android/contacts/preference/SortOrderPreference;->prepare()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/android/contacts/preference/SortOrderPreference;->prepare()V

    .line 42
    return-void
.end method

.method private prepare()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 45
    invoke-virtual {p0}, Lcom/android/contacts/preference/SortOrderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/preference/SortOrderPreference;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/preference/SortOrderPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/preference/SortOrderPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 47
    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/preference/SortOrderPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0177

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/contacts/preference/SortOrderPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0178

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/SortOrderPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 51
    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/SortOrderPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/android/contacts/preference/SortOrderPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/preference/SortOrderPreference;->setValue(Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/contacts/preference/SortOrderPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 71
    const/4 v0, 0x0

    :goto_a
    return-object v0

    .line 67
    :pswitch_b
    iget-object v0, p0, Lcom/android/contacts/preference/SortOrderPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0177

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 69
    :pswitch_15
    iget-object v0, p0, Lcom/android/contacts/preference/SortOrderPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0178

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 65
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_b
        :pswitch_15
    .end packed-switch
.end method

.method protected persistString(Ljava/lang/String;)Z
    .registers 4
    .parameter "value"

    .prologue
    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, newValue:I
    iget-object v1, p0, Lcom/android/contacts/preference/SortOrderPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    if-eq v0, v1, :cond_14

    .line 78
    iget-object v1, p0, Lcom/android/contacts/preference/SortOrderPreference;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1, v0}, Lcom/android/contacts/preference/ContactsPreferences;->setSortOrder(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/contacts/preference/SortOrderPreference;->notifyChanged()V

    .line 81
    :cond_14
    const/4 v1, 0x1

    return v1
.end method

.method protected shouldPersist()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
