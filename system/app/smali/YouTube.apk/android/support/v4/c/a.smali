.class public final Landroid/support/v4/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Landroid/support/v4/c/d;


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
    new-instance v0, Landroid/support/v4/c/c;

    invoke-direct {v0}, Landroid/support/v4/c/c;-><init>()V

    sput-object v0, Landroid/support/v4/c/a;->b:Landroid/support/v4/c/d;

    .line 42
    :goto_d
    return-void

    .line 40
    :cond_e
    new-instance v0, Landroid/support/v4/c/b;

    invoke-direct {v0}, Landroid/support/v4/c/b;-><init>()V

    sput-object v0, Landroid/support/v4/c/a;->b:Landroid/support/v4/c/d;

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Landroid/support/v4/c/a;->b:Landroid/support/v4/c/d;

    invoke-interface {v0, p1}, Landroid/support/v4/c/d;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/c/a;->a:Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 143
    sget-object v0, Landroid/support/v4/c/a;->b:Landroid/support/v4/c/d;

    iget-object v1, p0, Landroid/support/v4/c/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/c/d;->a(Ljava/lang/Object;II)V

    .line 144
    return-void
.end method

.method public final a()Z
    .registers 3

    .prologue
    .line 154
    sget-object v0, Landroid/support/v4/c/a;->b:Landroid/support/v4/c/d;

    iget-object v1, p0, Landroid/support/v4/c/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/c/d;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(F)Z
    .registers 4
    .parameter

    .prologue
    .line 177
    sget-object v0, Landroid/support/v4/c/a;->b:Landroid/support/v4/c/d;

    iget-object v1, p0, Landroid/support/v4/c/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/c/d;->a(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/graphics/Canvas;)Z
    .registers 4
    .parameter

    .prologue
    .line 218
    sget-object v0, Landroid/support/v4/c/a;->b:Landroid/support/v4/c/d;

    iget-object v1, p0, Landroid/support/v4/c/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/c/d;->a(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 162
    sget-object v0, Landroid/support/v4/c/a;->b:Landroid/support/v4/c/d;

    iget-object v1, p0, Landroid/support/v4/c/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/c/d;->b(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public final c()Z
    .registers 3

    .prologue
    .line 189
    sget-object v0, Landroid/support/v4/c/a;->b:Landroid/support/v4/c/d;

    iget-object v1, p0, Landroid/support/v4/c/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/c/d;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
