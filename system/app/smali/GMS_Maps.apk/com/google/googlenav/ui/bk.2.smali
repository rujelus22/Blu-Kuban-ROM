.class final Lcom/google/googlenav/ui/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/bl;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/bj;)V
    .registers 2
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/googlenav/ui/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
