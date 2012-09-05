.class public Lcom/samsung/SMT/SamsungTTSSettings;
.super Landroid/preference/PreferenceActivity;
.source "SamsungTTSSettings.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f020001

    invoke-virtual {p0, v0, p1}, Lcom/samsung/SMT/SamsungTTSSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 50
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 44
    return-void
.end method
