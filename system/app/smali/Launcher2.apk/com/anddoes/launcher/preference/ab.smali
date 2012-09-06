.class final Lcom/anddoes/launcher/preference/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/preference/PreferencesActivity;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/preference/PreferencesActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/preference/ab;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 5
    .parameter

    .prologue
    .line 619
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/ab;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    const-class v2, Lcom/anddoes/launcher/TabConfigActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 620
    iget-object v1, p0, Lcom/anddoes/launcher/preference/ab;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->startActivity(Landroid/content/Intent;)V

    .line 621
    const/4 v0, 0x1

    return v0
.end method
