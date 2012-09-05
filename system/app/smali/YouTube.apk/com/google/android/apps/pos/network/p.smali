.class final Lcom/google/android/apps/pos/network/p;
.super Lcom/google/android/apps/pos/network/u;
.source "SourceFile"


# instance fields
.field private noLog:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "nolog"
    .end annotation
.end field


# direct methods
.method synthetic constructor <init>()V
    .registers 2

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/pos/network/p;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 3
    .parameter

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/u;-><init>()V

    .line 243
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/apps/pos/network/p;->noLog:Ljava/lang/Boolean;

    return-void
.end method
