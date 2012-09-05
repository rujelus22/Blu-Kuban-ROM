.class public Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasPreferences;
.super Landroid/preference/PreferenceActivity;
.source "SecDownloadSaveasPreferences.java"


# instance fields
.field private LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 42
    const-string v0, "BrowserPreferencesPage"

    iput-object v0, p0, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasPreferences;->LOGTAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/high16 v0, 0x7f06

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasPreferences;->addPreferencesFromResource(I)V

    .line 49
    return-void
.end method
