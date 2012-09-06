.class Lm/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaB/i;


# instance fields
.field private a:Lm/c;

.field private b:Lm/t;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lm/p;)V
    .registers 2
    .parameter

    .prologue
    .line 980
    invoke-direct {p0}, Lm/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FF)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 986
    iget-object v6, p0, Lm/x;->a:Lm/c;

    new-instance v0, Lm/D;

    const-string v1, "android_orientation"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lm/D;-><init>(Ljava/lang/String;JFF)V

    invoke-interface {v6, v0}, Lm/c;->a(Lm/D;)V

    .line 989
    return-void
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 1001
    iget-object v0, p0, Lm/x;->b:Lm/t;

    if-eqz v0, :cond_9

    .line 1002
    iget-object v0, p0, Lm/x;->b:Lm/t;

    invoke-interface {v0, p1}, Lm/t;->a(I)V

    .line 1004
    :cond_9
    return-void
.end method

.method public a(Lm/c;)V
    .registers 2
    .parameter

    .prologue
    .line 992
    iput-object p1, p0, Lm/x;->a:Lm/c;

    .line 993
    return-void
.end method

.method public a(Lm/t;)V
    .registers 2
    .parameter

    .prologue
    .line 996
    iput-object p1, p0, Lm/x;->b:Lm/t;

    .line 997
    return-void
.end method
