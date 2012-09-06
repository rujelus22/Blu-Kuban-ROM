.class interface abstract Lcom/google/android/apps/plus/content/EsNetworkData$TransactionIdsQuery;
.super Ljava/lang/Object;
.source "EsNetworkData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/content/EsNetworkData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "TransactionIdsQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/content/EsNetworkData$TransactionIdsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
