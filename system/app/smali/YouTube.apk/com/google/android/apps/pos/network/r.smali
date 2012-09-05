.class final Lcom/google/android/apps/pos/network/r;
.super Lcom/google/android/apps/pos/network/u;
.source "SourceFile"


# instance fields
.field private abtk:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field private ad:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field private adGroupId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "ag"
    .end annotation
.end field

.field private clickDeltaHex:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "cdx"
    .end annotation
.end field

.field private creativeId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "cr"
    .end annotation
.end field

.field public id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>()V
    .registers 2

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/pos/network/r;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/u;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/pos/network/r;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/google/android/apps/pos/network/r;->abtk:Ljava/lang/String;

    return-object p1
.end method
