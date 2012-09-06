.class public Len;
.super Ljava/lang/Object;
.source "DocsPreferencesActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Len;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 160
    iget-object v1, p0, Len;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-static {v1}, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a(Lcom/google/android/apps/docs/app/DocsPreferencesActivity;)Lck;

    move-result-object v1

    iget-object v2, p0, Len;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    invoke-interface {v1, v2}, Lck;->a(Landroid/content/Context;)V

    .line 163
    if-eqz p2, :cond_12

    instance-of v1, p2, Ljava/lang/Boolean;

    if-nez v1, :cond_46

    .line 164
    :cond_12
    const-string v1, "DocsPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got null or non-Boolean newValue, treating as false: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 170
    :goto_2b
    if-nez v1, :cond_4d

    .line 172
    iget-object v1, p0, Len;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    iget-object v1, v1, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LHW;

    invoke-interface {v1}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    :goto_36
    if-ge v0, v2, :cond_4d

    aget-object v3, v1, v0

    .line 173
    iget-object v4, p0, Len;->a:Lcom/google/android/apps/docs/app/DocsPreferencesActivity;

    iget-object v4, v4, Lcom/google/android/apps/docs/app/DocsPreferencesActivity;->a:LKR;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v3}, LKR;->a(Ljava/lang/String;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 167
    :cond_46
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2b

    .line 176
    :cond_4d
    const/4 v0, 0x1

    return v0
.end method
