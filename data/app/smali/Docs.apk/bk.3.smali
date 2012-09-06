.class public Lbk;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# static fields
.field private static final a:Lbn;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 38
    new-instance v0, Lbm;

    invoke-direct {v0}, Lbm;-><init>()V

    sput-object v0, Lbk;->a:Lbn;

    .line 42
    :goto_d
    return-void

    .line 40
    :cond_e
    new-instance v0, Lbl;

    invoke-direct {v0}, Lbl;-><init>()V

    sput-object v0, Lbk;->a:Lbn;

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Lbk;->a:Lbn;

    invoke-interface {v0, p1}, Lbn;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lbk;->a:Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 162
    sget-object v0, Lbk;->a:Lbn;

    iget-object v1, p0, Lbk;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lbn;->a(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 143
    sget-object v0, Lbk;->a:Lbn;

    iget-object v1, p0, Lbk;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lbn;->a(Ljava/lang/Object;II)V

    .line 144
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 154
    sget-object v0, Lbk;->a:Lbn;

    iget-object v1, p0, Lbk;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lbn;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(F)Z
    .registers 4
    .parameter

    .prologue
    .line 177
    sget-object v0, Lbk;->a:Lbn;

    iget-object v1, p0, Lbk;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lbn;->a(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .registers 4
    .parameter

    .prologue
    .line 218
    sget-object v0, Lbk;->a:Lbn;

    iget-object v1, p0, Lbk;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lbn;->a(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 189
    sget-object v0, Lbk;->a:Lbn;

    iget-object v1, p0, Lbk;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lbn;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
