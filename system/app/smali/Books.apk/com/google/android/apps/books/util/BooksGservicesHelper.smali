.class public final Lcom/google/android/apps/books/util/BooksGservicesHelper;
.super Ljava/lang/Object;
.source "BooksGservicesHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeveloperKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .parameter "context"

    .prologue
    .line 70
    const-string v0, "books:plus_one_developer_key"

    const-string v1, "AIzaSyCuLL2piIVBGOtu196oSi3-ndISBYPOjCU"

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/books/util/GservicesHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isInSupportedCountry(Landroid/content/Context;)Z
    .registers 3
    .parameter "resolver"

    .prologue
    .line 58
    const-string v0, "books:launched_in_current_country"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/books/util/GservicesHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static maxSessionKeyUpgradesPerRequest(Landroid/content/Context;)I
    .registers 3
    .parameter "context"

    .prologue
    .line 51
    const-string v0, "books:max_session_key_upgrades"

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/books/util/GservicesHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static shouldBulkUpgradeSessionKeys(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 43
    const-string v0, "books_phone:bulk_upgrade_session_keys"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/books/util/GservicesHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldGetAccessLock(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 27
    const-string v0, "books_phone:get_access_lock"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/books/util/GservicesHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldReleaseAccessLock(Landroid/content/Context;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 35
    const-string v0, "books_phone:release_access_lock"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/apps/books/util/GservicesHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
