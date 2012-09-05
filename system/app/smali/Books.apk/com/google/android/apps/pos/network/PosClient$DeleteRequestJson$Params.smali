.class Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;
.super Lcom/google/android/apps/pos/network/PosClient$PosRequestJson$Params;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params"
.end annotation


# instance fields
.field private ad:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private clickDeltaHex:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "cdx"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson$Params;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/pos/network/PosClient$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 547
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;-><init>()V

    return-void
.end method

.method static synthetic access$1602(Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;->id:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;->ad:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$DeleteRequestJson$Params;->clickDeltaHex:Ljava/lang/String;

    return-object p1
.end method
