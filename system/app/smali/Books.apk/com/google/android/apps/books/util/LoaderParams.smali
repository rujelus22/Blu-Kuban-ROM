.class public Lcom/google/android/apps/books/util/LoaderParams;
.super Ljava/lang/Object;
.source "LoaderParams.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFrom(Landroid/accounts/Account;)Landroid/os/Bundle;
    .registers 2
    .parameter "account"

    .prologue
    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    .local v0, args:Landroid/os/Bundle;
    invoke-static {v0, p0}, Lcom/google/android/apps/books/util/LoaderParams;->setAccount(Landroid/os/Bundle;Landroid/accounts/Account;)V

    .line 24
    return-object v0
.end method

.method public static buildFrom(Landroid/accounts/Account;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .parameter "account"
    .parameter "volumeId"

    .prologue
    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v0, args:Landroid/os/Bundle;
    invoke-static {v0, p0}, Lcom/google/android/apps/books/util/LoaderParams;->setAccount(Landroid/os/Bundle;Landroid/accounts/Account;)V

    .line 30
    invoke-static {v0, p1}, Lcom/google/android/apps/books/util/LoaderParams;->setVolumeId(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 31
    return-object v0
.end method

.method public static getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;
    .registers 2
    .parameter "args"

    .prologue
    .line 68
    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    return-object v0
.end method

.method public static getAddToMyEBooks(Landroid/os/Bundle;)Z
    .registers 3
    .parameter "args"

    .prologue
    .line 100
    const-string v0, "addToMyEBooks"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getReaderFadeIn(Landroid/os/Bundle;Z)Z
    .registers 5
    .parameter "args"
    .parameter "consumeArgument"

    .prologue
    .line 88
    const-string v1, "readerFadeIn"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 89
    .local v0, result:Z
    if-eqz p1, :cond_e

    .line 90
    const-string v1, "readerFadeIn"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 92
    :cond_e
    return v0
.end method

.method public static getUpdateVolumeOverview(Landroid/os/Bundle;)Z
    .registers 3
    .parameter "args"

    .prologue
    .line 80
    const-string v0, "updateVolumeOverview"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .parameter "args"

    .prologue
    .line 72
    const-string v0, "volumeId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setAccount(Landroid/os/Bundle;Landroid/accounts/Account;)V
    .registers 3
    .parameter "args"
    .parameter "account"

    .prologue
    .line 35
    const-string v0, "missing account"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v0, "account"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 37
    return-void
.end method

.method public static setAddToMyEBooks(Landroid/os/Bundle;Z)V
    .registers 3
    .parameter "args"
    .parameter "addToMyEBooks"

    .prologue
    .line 64
    const-string v0, "addToMyEBooks"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    return-void
.end method

.method public static setReaderFadeIn(Landroid/os/Bundle;Z)V
    .registers 3
    .parameter "args"
    .parameter "readerFadeIn"

    .prologue
    .line 56
    const-string v0, "readerFadeIn"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    return-void
.end method

.method public static setUpdateVolumeOverview(Landroid/os/Bundle;Z)V
    .registers 3
    .parameter "args"
    .parameter "updateVolumeOverview"

    .prologue
    .line 49
    const-string v0, "updateVolumeOverview"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 50
    return-void
.end method

.method public static setVolumeId(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3
    .parameter "args"
    .parameter "volumeId"

    .prologue
    .line 40
    const-string v0, "missing account"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const-string v0, "volumeId"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method
