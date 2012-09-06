.class Lcom/google/googlenav/settings/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/MapTileSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 621
    iput-object p1, p0, Lcom/google/googlenav/settings/O;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;Lcom/google/googlenav/settings/F;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/google/googlenav/settings/O;-><init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 625
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 628
    iget-object v1, p0, Lcom/google/googlenav/settings/O;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    check-cast p1, Landroid/preference/ListPreference;

    invoke-static {v1, p1, v0}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->a(Lcom/google/googlenav/settings/MapTileSettingsActivity;Landroid/preference/ListPreference;Z)V

    .line 631
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/K;->b(Z)V

    .line 633
    const/4 v0, 0x1

    return v0
.end method
