.class final Lcom/google/android/apps/pos/network/p;
.super Lcom/google/android/apps/pos/network/u;
.source "SourceFile"


# instance fields
.field private noLog:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "nolog"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/u;-><init>()V

    .line 257
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/apps/pos/network/p;->noLog:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/p;-><init>()V

    return-void
.end method
