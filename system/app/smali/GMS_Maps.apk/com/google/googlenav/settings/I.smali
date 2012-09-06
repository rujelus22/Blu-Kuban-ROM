.class Lcom/google/googlenav/settings/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/google/googlenav/settings/i;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/googlenav/settings/i;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/q;

    move-result-object v0

    if-nez v0, :cond_a

    .line 396
    const/4 v0, 0x0

    .line 399
    :goto_9
    return v0

    .line 398
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/settings/i;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/settings/q;->b()V

    .line 399
    const/4 v0, 0x1

    goto :goto_9
.end method
