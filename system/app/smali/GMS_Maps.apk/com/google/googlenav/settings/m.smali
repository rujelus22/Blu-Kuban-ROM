.class Lcom/google/googlenav/settings/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/settings/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/settings/l;)V
    .registers 2
    .parameter

    .prologue
    .line 829
    iput-object p1, p0, Lcom/google/googlenav/settings/m;->a:Lcom/google/googlenav/settings/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 832
    iget-object v0, p0, Lcom/google/googlenav/settings/m;->a:Lcom/google/googlenav/settings/l;

    iget-object v0, v0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/q;

    move-result-object v0

    if-nez v0, :cond_c

    .line 833
    const/4 v0, 0x0

    .line 836
    :goto_b
    return v0

    .line 835
    :cond_c
    iget-object v0, p0, Lcom/google/googlenav/settings/m;->a:Lcom/google/googlenav/settings/l;

    iget-object v0, v0, Lcom/google/googlenav/settings/l;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/q;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/settings/q;->b(Z)V

    .line 836
    const/4 v0, 0x1

    goto :goto_b
.end method
