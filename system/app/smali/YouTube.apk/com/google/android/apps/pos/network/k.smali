.class final Lcom/google/android/apps/pos/network/k;
.super Lcom/google/android/apps/pos/network/u;
.source "SourceFile"


# instance fields
.field private ad:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private clickDeltaHex:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "cdx"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/u;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/k;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/pos/network/k;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 519
    iput-object p1, p0, Lcom/google/android/apps/pos/network/k;->id:Ljava/lang/String;

    return-object p1
.end method
