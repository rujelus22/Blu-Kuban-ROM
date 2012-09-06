.class final Lcom/anddoes/launcher/preference/x;
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
    iput-object p1, p0, Lcom/anddoes/launcher/preference/x;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 3
    .parameter

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/anddoes/launcher/preference/x;->a:Lcom/anddoes/launcher/preference/PreferencesActivity;

    invoke-static {v0}, Lcom/anddoes/launcher/preference/PreferencesActivity;->d(Lcom/anddoes/launcher/preference/PreferencesActivity;)V

    .line 1024
    const/4 v0, 0x1

    return v0
.end method
