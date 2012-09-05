.class final Lcom/google/googlenav/ui/bs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/ui/bt;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/br;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/bs;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
