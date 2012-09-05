.class Lcom/google/googlenav/settings/H;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/MapTileSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/MapTileSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/settings/H;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/M;->e(Z)V

    iget-object v0, p0, Lcom/google/googlenav/settings/H;->a:Lcom/google/googlenav/settings/MapTileSettingsActivity;

    const-string v1, "map_tile_settings_use_cached_tiles_only"

    invoke-virtual {v0, v1}, Lcom/google/googlenav/settings/MapTileSettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    new-instance v0, Lcom/google/googlenav/settings/I;

    invoke-static {}, Lcom/google/googlenav/bD;->a()Lap/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/settings/I;-><init>(Lcom/google/googlenav/settings/H;Lap/c;)V

    invoke-virtual {v0}, Lcom/google/googlenav/settings/I;->g()V

    return-void
.end method
