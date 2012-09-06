.class Lcom/google/android/apps/unveil/env/Clock$SystemClock;
.super Lcom/google/android/apps/unveil/env/Clock;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemClock"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/Clock;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/env/Clock$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/Clock$SystemClock;-><init>()V

    return-void
.end method


# virtual methods
.method public now()J
    .registers 3

    .prologue
    .line 17
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
