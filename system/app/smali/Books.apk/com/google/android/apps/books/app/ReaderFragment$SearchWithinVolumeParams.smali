.class Lcom/google/android/apps/books/app/ReaderFragment$SearchWithinVolumeParams;
.super Ljava/lang/Object;
.source "ReaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ReaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchWithinVolumeParams"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 2068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFrom(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .parameter "account"
    .parameter "volumeId"
    .parameter "query"

    .prologue
    .line 2074
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2075
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "account"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2076
    const-string v1, "volumeId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    const-string v1, "query"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2078
    return-object v0
.end method

.method public static getAccount(Landroid/os/Bundle;)Landroid/accounts/Account;
    .registers 2
    .parameter "args"

    .prologue
    .line 2082
    const-string v0, "account"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    return-object v0
.end method

.method public static getQuery(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .parameter "args"

    .prologue
    .line 2090
    const-string v0, "query"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVolumeId(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .parameter "args"

    .prologue
    .line 2086
    const-string v0, "volumeId"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
