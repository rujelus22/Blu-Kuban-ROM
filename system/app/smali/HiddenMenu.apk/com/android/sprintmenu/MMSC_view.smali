.class public Lcom/android/sprintmenu/MMSC_view;
.super Landroid/preference/PreferenceActivity;
.source "MMSC_view.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mMmsc:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 31
    const-class v0, Lcom/android/sprintmenu/MMSC;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/sprintmenu/MMSC_view;->TAG:Ljava/lang/String;

    .line 34
    const-string v0, "<Not set>"

    sput-object v0, Lcom/android/sprintmenu/MMSC_view;->sNotSet:Ljava/lang/String;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/sprintmenu/MMSC_view;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/sprintmenu/MMSC_view;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 60
    .local v3, root:Landroid/preference/PreferenceScreen;
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 61
    .local v2, inlinePrefCat:Landroid/preference/PreferenceCategory;
    const-string v5, "mmsc"

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 62
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 64
    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/sprintmenu/MMSC_view;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v7, v7}, Lcom/android/sprintmenu/MMSC_view;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/sprintmenu/MMSC_view;->mCursor:Landroid/database/Cursor;

    .line 67
    iget-object v5, p0, Lcom/android/sprintmenu/MMSC_view;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_2c

    .line 68
    iget-object v5, p0, Lcom/android/sprintmenu/MMSC_view;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    :cond_2c
    iget-object v5, p0, Lcom/android/sprintmenu/MMSC_view;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 73
    .local v0, countOfCursor:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_33
    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_4d

    .line 74
    iget-object v5, p0, Lcom/android/sprintmenu/MMSC_view;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, value:Ljava/lang/String;
    if-eqz v4, :cond_70

    const-string v5, "Sprint"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 77
    iget-object v5, p0, Lcom/android/sprintmenu/MMSC_view;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 83
    .end local v4           #value:Ljava/lang/String;
    :cond_4d
    new-instance v5, Landroid/preference/Preference;

    invoke-direct {v5, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/sprintmenu/MMSC_view;->mMmsc:Landroid/preference/Preference;

    .line 84
    iget-object v5, p0, Lcom/android/sprintmenu/MMSC_view;->mMmsc:Landroid/preference/Preference;

    const-string v6, "mmsc"

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v5, p0, Lcom/android/sprintmenu/MMSC_view;->mMmsc:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/sprintmenu/MMSC_view;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v5, p0, Lcom/android/sprintmenu/MMSC_view;->mMmsc:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 93
    invoke-virtual {p0, v3}, Lcom/android/sprintmenu/MMSC_view;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 94
    return-void

    .line 80
    .restart local v4       #value:Ljava/lang/String;
    :cond_70
    iget-object v5, p0, Lcom/android/sprintmenu/MMSC_view;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_33
.end method
