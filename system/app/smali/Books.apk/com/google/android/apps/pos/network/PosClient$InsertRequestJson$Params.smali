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
.field private abtk:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private ad:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private adGroupId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "ag"
    .end annotation
.end field

.field private clickDeltaHex:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "cdx"
    .end annotation
.end field

.field private creativeId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "cr"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson$Params;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/pos/network/PosClient$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->abtk:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->ad:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->adGroupId:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->clickDeltaHex:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 436
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$InsertRequestJson$Params;->creativeId:Ljava/lang/Integer;

    return-object p1
.end method
