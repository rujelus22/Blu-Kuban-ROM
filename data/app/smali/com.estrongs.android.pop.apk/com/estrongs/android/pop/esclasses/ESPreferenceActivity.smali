.class public Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;
.super Landroid/preference/PreferenceActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/preference/PreferenceActivity;[Ljava/lang/String;[I)V
    .registers 7

    if-eqz p0, :cond_c

    if-eqz p1, :cond_c

    array-length v0, p1

    if-eqz v0, :cond_c

    if-eqz p2, :cond_c

    array-length v0, p2

    if-nez v0, :cond_d

    :cond_c
    return-void

    :cond_d
    const/4 v0, 0x0

    move v1, v0

    :goto_f
    array-length v0, p1

    if-ge v1, v0, :cond_c

    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f
.end method


# virtual methods
.method public declared-synchronized getResources()Landroid/content/res/Resources;
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/b;->a(Landroid/content/res/Resources;)Lcom/estrongs/android/pop/esclasses/b;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/a;->a(Landroid/content/Context;)V

    return-void
.end method
