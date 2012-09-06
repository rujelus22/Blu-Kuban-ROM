.class public final Lcom/google/api/services/plusi/model/UserLoyaltyInfo;
.super Lcom/google/android/apps/plus/json/GenericJson;
.source "UserLoyaltyInfo.java"


# instance fields
.field public currentTier:Ljava/lang/Integer;

.field public currentTierTimestampMs:Ljava/lang/Long;

.field public downgradeTier:Ljava/lang/Integer;

.field public downgradeTierTimestampMs:Ljava/lang/Long;

.field public upgradeTier:Ljava/lang/Integer;

.field public upgradeTierTimestampMs:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/GenericJson;-><init>()V

    return-void
.end method
