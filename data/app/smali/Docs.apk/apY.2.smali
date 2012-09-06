.class public final LapY;
.super Ljava/lang/Object;
.source "Stopwatch.java"


# static fields
.field private static final a:Ljava/util/logging/Logger;


# instance fields
.field private a:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, LapY;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LapY;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LapY;->a:J

    return-void
.end method
