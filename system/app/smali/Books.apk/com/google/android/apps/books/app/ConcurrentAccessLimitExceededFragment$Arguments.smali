.class public Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$Arguments;
.super Ljava/lang/Object;
.source "ConcurrentAccessLimitExceededFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arguments"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/books/app/ConcurrentAccessLimitExceededFragment$Arguments$Keys;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static create(ILcom/google/android/apps/books/util/Config;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 7
    .parameter "maxDevices"
    .parameter "config"
    .parameter "volumeId"

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-static {p1, p2, v2, v2}, Lcom/google/android/apps/books/util/OceanUris;->getOfflineLimitUrl(Lcom/google/android/apps/books/util/Config;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 35
    .local v0, infoUrl:Landroid/net/Uri;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v1, result:Landroid/os/Bundle;
    const-string v2, "maxDevices"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    const-string v2, "infoUrl"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-object v1
.end method

.method static getInfoUrl(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 2
    .parameter "bundle"

    .prologue
    .line 44
    const-string v0, "infoUrl"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getMaxDevices(Landroid/os/Bundle;)I
    .registers 2
    .parameter "bundle"

    .prologue
    .line 41
    const-string v0, "maxDevices"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
