.class final Lcom/google/android/apps/pos/network/m;
.super Lcom/google/android/apps/pos/network/u;
.source "SourceFile"


# instance fields
.field private ad:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field

.field private maxPeople:Ljava/lang/Integer;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "max_people"
    .end annotation
.end field

.field private noLog:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "nolog"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/u;-><init>()V

    .line 321
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/pos/network/m;->maxPeople:Ljava/lang/Integer;

    .line 325
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/apps/pos/network/m;->noLog:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/m;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/pos/network/m;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/google/android/apps/pos/network/m;->id:Ljava/lang/String;

    return-object p1
.end method
