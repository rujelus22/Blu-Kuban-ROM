.class final Lcom/google/android/apps/plus/content/EsNotificationData$1;
.super Ljava/lang/Object;
.source "EsNotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/content/EsNotificationData;->syncNotifications(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/service/EsSyncAdapterService$SyncState;Lcom/google/android/apps/plus/network/HttpOperation$OperationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;)I
    .registers 7
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 377
    invoke-virtual {p1}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getTimestamp()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;->getTimestamp()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, -0x1

    goto :goto_d
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 374
    check-cast p1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    .end local p1
    check-cast p2, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/content/EsNotificationData$1;->compare(Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;)I

    move-result v0

    return v0
.end method
