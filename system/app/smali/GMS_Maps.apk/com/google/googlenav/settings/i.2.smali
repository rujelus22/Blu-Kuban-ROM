.class Lcom/google/googlenav/settings/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/MapTileSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/google/googlenav/settings/I;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/K;->c(Z)V

    .line 469
    iget-object v0, p0, Lcom/google/googlenav/settings/I;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    const-string v1, "map_tile_settings_use_cached_tiles_only"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 472
    new-instance v0, Lcom/google/googlenav/settings/J;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/settings/J;-><init>(Lcom/google/googlenav/settings/I;LY/c;)V

    invoke-virtual {v0}, Lcom/google/googlenav/settings/J;->g()V

    .line 479
    return-void
.end method
