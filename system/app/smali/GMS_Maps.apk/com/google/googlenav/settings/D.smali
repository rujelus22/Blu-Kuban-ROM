.class Lcom/google/googlenav/settings/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Landroid/preference/ListPreference;

.field final synthetic b:Lcom/google/googlenav/settings/DisplaySettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/DisplaySettingsActivity;Landroid/preference/ListPreference;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/google/googlenav/settings/d;->b:Lcom/google/googlenav/settings/DisplaySettingsActivity;

    iput-object p2, p0, Lcom/google/googlenav/settings/d;->a:Landroid/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 276
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/googlenav/settings/e;->valueOf(Ljava/lang/String;)Lcom/google/googlenav/settings/e;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/google/googlenav/settings/d;->a:Landroid/preference/ListPreference;

    const/16 v2, 0x61

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/googlenav/settings/e;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 280
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/K;->a(Lcom/google/googlenav/settings/e;)V

    .line 281
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "a=s"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/google/googlenav/settings/e;->a(Lcom/google/googlenav/settings/e;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-static {v1}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    const/16 v1, 0x10

    const-string v2, "s"

    invoke-static {v1, v2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 286
    return v5
.end method
