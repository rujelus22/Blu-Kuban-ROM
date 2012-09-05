.class Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;
.super Lcom/google/android/apps/pos/network/PosClient$PosRequestJson$Params;
.source "PosClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Params"
.end annotation


# instance fields
.field private container:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private noLog:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "nolog"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$PosRequestJson$Params;-><init>()V

    .line 63
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;->noLog:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/pos/network/PosClient$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosClient$GetSignUpStateRequestJson$Params;->container:Ljava/lang/String;

    return-object p1
.end method
