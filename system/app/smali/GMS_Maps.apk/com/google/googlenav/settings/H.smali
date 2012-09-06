.class Lcom/google/googlenav/settings/h;
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
    .line 350
    iput-object p1, p0, Lcom/google/googlenav/settings/h;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter

    .prologue
    .line 353
    iget-object v0, p0, Lcom/google/googlenav/settings/h;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/q;

    move-result-object v0

    if-nez v0, :cond_a

    .line 354
    const/4 v0, 0x0

    .line 357
    :goto_9
    return v0

    .line 356
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/settings/h;->a:Lcom/google/googlenav/settings/LatitudeSettingsActivity;

    invoke-static {v0}, Lcom/google/googlenav/settings/LatitudeSettingsActivity;->a(Lcom/google/googlenav/settings/LatitudeSettingsActivity;)Lcom/google/googlenav/settings/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/settings/q;->a()V

    .line 357
    const/4 v0, 0x1

    goto :goto_9
.end method
