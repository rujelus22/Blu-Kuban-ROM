.class public Lcom/lidroid/quickpanel/MainActivity;
.super Lcom/lidroid/quickpanel/RevampedPreferenceActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/lidroid/quickpanel/RevampedPreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/lidroid/quickpanel/RevampedPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/lidroid/quickpanel/MainActivity;->addPreferencesFromResource(I)V

    .line 11
    return-void
.end method
