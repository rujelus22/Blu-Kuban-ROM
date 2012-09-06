.class public Lcom/google/googlenav/settings/GmmPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SourceFile"


# instance fields
.field protected a:Lcom/google/googlenav/ui/v;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Z
    .registers 3

    .prologue
    .line 37
    invoke-static {}, Lcom/google/googlenav/android/c;->b()Z

    move-result v0

    if-nez v0, :cond_15

    .line 40
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/maps/MapsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    invoke-virtual {p0, v0}, Lcom/google/googlenav/settings/GmmPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 42
    invoke-virtual {p0}, Lcom/google/googlenav/settings/GmmPreferenceActivity;->finish()V

    .line 43
    const/4 v0, 0x1

    .line 46
    :goto_14
    return v0

    .line 45
    :cond_15
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/settings/GmmPreferenceActivity;->a:Lcom/google/googlenav/ui/v;

    .line 46
    const/4 v0, 0x0

    goto :goto_14
.end method
