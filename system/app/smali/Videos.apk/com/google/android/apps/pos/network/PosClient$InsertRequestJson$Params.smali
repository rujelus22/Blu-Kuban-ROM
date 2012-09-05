.class Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;
.super Lcom/google/android/apps/pos/network/PosClient$PosRequestJson$Params;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params"
.end annotation


# instance fields
.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson$Params;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/pos/network/PosClient$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;-><init>()V

    return-void
.end method
