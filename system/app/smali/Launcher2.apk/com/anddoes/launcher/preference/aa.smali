.class final Lcom/anddoes/launcher/preference/aa;
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
    iput-object p1, p0, Lcom/anddoes/launcher/preference/aa;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 6
    .parameter

    .prologue
    .line 607
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/anddoes/launcher/preference/aa;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    const-class v2, Lcom/anddoes/launcher/MultiPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 608
    sget-object v1, Lcom/anddoes/launcher/MultiPickerActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/anddoes/launcher/preference/aa;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    const v3, 0x7f06008f

    invoke-virtual {v2, v3}, Lcom/anddoes/launcher/preference/PreferencesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    sget-object v1, Lcom/anddoes/launcher/MultiPickerActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anddoes/launcher/preference/aa;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-static {v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->b(Lcom/anddoes/launcher/preference/PreferencesActivity;)Lcom/anddoes/launcher/preference/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anddoes/launcher/preference/h;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    iget-object v1, p0, Lcom/anddoes/launcher/preference/aa;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2}, Lcom/anddoes/launcher/preference/PreferencesActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 611
    const/4 v0, 0x1

    return v0
.end method
