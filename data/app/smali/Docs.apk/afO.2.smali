.class final LafO;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, LafP;

    invoke-direct {v0}, LafP;-><init>()V

    sput-object v0, LafO;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static a()J
    .registers 2

    .prologue
    .line 37
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static a(Lafl;)Lafl;
    .registers 2
    .parameter

    .prologue
    .line 53
    invoke-virtual {p0}, Lafl;->c()Lafl;

    move-result-object v0

    return-object v0
.end method
