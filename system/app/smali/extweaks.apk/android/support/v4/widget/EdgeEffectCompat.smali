.class public Landroid/support/v4/widget/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# static fields
.field private static final IMPL:Landroid/support/v4/widget/g;


# instance fields
.field private mEdgeEffect:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    .line 38
    new-instance v0, Landroid/support/v4/widget/f;

    invoke-direct {v0}, Landroid/support/v4/widget/f;-><init>()V

    sput-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/g;

    .line 42
    :goto_d
    return-void

    .line 40
    :cond_e
    new-instance v0, Landroid/support/v4/widget/e;

    invoke-direct {v0}, Landroid/support/v4/widget/e;-><init>()V

    sput-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/g;

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/g;

    invoke-interface {v0, p1}, Landroid/support/v4/widget/g;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .registers 4
    .parameter

    .prologue
    .line 218
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/g;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/g;->a(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .registers 3

    .prologue
    .line 162
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/g;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/g;->b(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public isFinished()Z
    .registers 3

    .prologue
    .line 154
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/g;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/g;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAbsorb(I)Z
    .registers 4
    .parameter

    .prologue
    .line 204
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/g;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/g;->a(Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public onPull(F)Z
    .registers 4
    .parameter

    .prologue
    .line 177
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/g;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/widget/g;->a(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public onRelease()Z
    .registers 3

    .prologue
    .line 189
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/g;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/g;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSize(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 143
    sget-object v0, Landroid/support/v4/widget/EdgeEffectCompat;->IMPL:Landroid/support/v4/widget/g;

    iget-object v1, p0, Landroid/support/v4/widget/EdgeEffectCompat;->mEdgeEffect:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/widget/g;->a(Ljava/lang/Object;II)V

    .line 144
    return-void
.end method
