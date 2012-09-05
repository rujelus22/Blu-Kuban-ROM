.class final Lcom/google/android/marvin/talkback/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;


# direct methods
.method constructor <init>(Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/marvin/talkback/o;->a:Lcom/google/android/marvin/talkback/TalkBackPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_2b

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2b

    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-ltz v1, :cond_2d

    array-length v2, v0

    if-ge v1, v2, :cond_2d

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%"

    const-string v2, "%%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2b
    :goto_2b
    const/4 v0, 0x1

    return v0

    :cond_2d
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2b
.end method
