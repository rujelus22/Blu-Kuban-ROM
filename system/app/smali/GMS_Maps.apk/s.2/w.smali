.class Ls/w;
.super Ljava/lang/Object;

# interfaces
.implements LaP/i;


# instance fields
.field private a:Ls/c;

.field private b:Ls/s;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ls/p;)V
    .registers 2

    invoke-direct {p0}, Ls/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .registers 10

    iget-object v6, p0, Ls/w;->a:Ls/c;

    new-instance v0, Ls/C;

    const-string v1, "android_orientation"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ls/C;-><init>(Ljava/lang/String;JFF)V

    invoke-interface {v6, v0}, Ls/c;->a(Ls/C;)V

    return-void
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Ls/w;->b:Ls/s;

    if-eqz v0, :cond_9

    iget-object v0, p0, Ls/w;->b:Ls/s;

    invoke-interface {v0, p1}, Ls/s;->a(I)V

    :cond_9
    return-void
.end method

.method public a(Ls/c;)V
    .registers 2

    iput-object p1, p0, Ls/w;->a:Ls/c;

    return-void
.end method

.method public a(Ls/s;)V
    .registers 2

    iput-object p1, p0, Ls/w;->b:Ls/s;

    return-void
.end method
