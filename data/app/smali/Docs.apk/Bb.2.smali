.class public LBb;
.super Ljava/lang/Object;
.source "ImageStyle.java"

# interfaces
.implements LBj;


# instance fields
.field private final a:F

.field private final a:Ljava/lang/String;

.field private final a:LwH;

.field private final a:LzH;

.field private final b:F


# direct methods
.method public constructor <init>(LzH;LvD;LwH;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, LBb;->a:LzH;

    .line 42
    invoke-interface {p2}, LvD;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LBb;->a:Ljava/lang/String;

    .line 43
    invoke-interface {p2}, LvD;->a()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, LBb;->a:F

    .line 44
    invoke-interface {p2}, LvD;->b()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, LBb;->b:F

    .line 45
    iput-object p3, p0, LBb;->a:LwH;

    .line 46
    return-void
.end method

.method static synthetic a(LBb;)F
    .registers 2
    .parameter

    .prologue
    .line 24
    iget v0, p0, LBb;->a:F

    return v0
.end method

.method static synthetic a(LBb;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, LBb;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(LBb;)LwH;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, LBb;->a:LwH;

    return-object v0
.end method

.method static synthetic a(LBb;)LzH;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, LBb;->a:LzH;

    return-object v0
.end method

.method static synthetic b(LBb;)F
    .registers 2
    .parameter

    .prologue
    .line 24
    iget v0, p0, LBb;->b:F

    return v0
.end method


# virtual methods
.method public a()LyD;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LyD",
            "<",
            "LBb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v0, LBc;

    invoke-direct {v0, p0}, LBc;-><init>(LBb;)V

    return-object v0
.end method

.method public a(LBj;)Z
    .registers 3
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method
