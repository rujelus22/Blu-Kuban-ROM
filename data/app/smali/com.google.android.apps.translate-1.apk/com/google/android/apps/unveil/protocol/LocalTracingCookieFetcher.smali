.class public Lcom/google/android/apps/unveil/protocol/LocalTracingCookieFetcher;
.super Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;
.source "LocalTracingCookieFetcher.java"


# static fields
.field public static final NO_OP:Lcom/google/android/apps/unveil/protocol/LocalTracingCookieFetcher;


# instance fields
.field private final cookie:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 24
    new-instance v0, Lcom/google/android/apps/unveil/protocol/LocalTracingCookieFetcher;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/protocol/LocalTracingCookieFetcher;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/LocalTracingCookieFetcher;->NO_OP:Lcom/google/android/apps/unveil/protocol/LocalTracingCookieFetcher;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "cookie"

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;-><init>(Lcom/google/android/apps/unveil/network/AbstractConnector;)V

    .line 11
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/LocalTracingCookieFetcher;->cookie:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public getFreshCookie()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/LocalTracingCookieFetcher;->cookie:Ljava/lang/String;

    return-object v0
.end method

.method public replenish()V
    .registers 1

    .prologue
    .line 22
    return-void
.end method
