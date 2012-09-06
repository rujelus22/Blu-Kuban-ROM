.class Lcom/google/googlenav/settings/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/google/googlenav/settings/j;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/googlenav/settings/j;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/q;

    move-result-object v0

    if-nez v0, :cond_a

    .line 430
    const/4 v0, 0x0

    .line 434
    :goto_9
    return v0

    .line 432
    :cond_a
    check-cast p2, Ljava/lang/Boolean;

    .line 433
    iget-object v0, p0, Lcom/google/googlenav/settings/j;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/q;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/settings/q;->c(Z)V

    .line 434
    const/4 v0, 0x1

    goto :goto_9
.end method
