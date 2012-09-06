.class public abstract Lcom/google/android/apps/unveil/env/Clock;
.super Ljava/lang/Object;
.source "Clock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/env/Clock$1;,
        Lcom/google/android/apps/unveil/env/Clock$SystemClock;
    }
.end annotation


# static fields
.field public static final SYSTEM_CLOCK:Lcom/google/android/apps/unveil/env/Clock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/apps/unveil/env/Clock$SystemClock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/env/Clock$SystemClock;-><init>(Lcom/google/android/apps/unveil/env/Clock$1;)V

    sput-object v0, Lcom/google/android/apps/unveil/env/Clock;->SYSTEM_CLOCK:Lcom/google/android/apps/unveil/env/Clock;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public abstract now()J
.end method
