.class public final Landroid/support/v4/d/a;
.super Ljava/lang/Object;


# static fields
.field private static final b:Landroid/support/v4/d/d;


# instance fields
.field private a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/d/c;

    invoke-direct {v0}, Landroid/support/v4/d/c;-><init>()V

    sput-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/d;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroid/support/v4/d/b;

    invoke-direct {v0}, Landroid/support/v4/d/b;-><init>()V

    sput-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/d;

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/d;

    invoke-interface {v0, p1}, Landroid/support/v4/d/d;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/d/a;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 5

    sget-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/d;

    iget-object v1, p0, Landroid/support/v4/d/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/d/d;->a(Ljava/lang/Object;II)V

    return-void
.end method

.method public final a()Z
    .registers 3

    sget-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/d;

    iget-object v1, p0, Landroid/support/v4/d/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/d/d;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final a(F)Z
    .registers 4

    sget-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/d;

    iget-object v1, p0, Landroid/support/v4/d/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/d/d;->a(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/graphics/Canvas;)Z
    .registers 4

    sget-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/d;

    iget-object v1, p0, Landroid/support/v4/d/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Landroid/support/v4/d/d;->a(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .registers 3

    sget-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/d;

    iget-object v1, p0, Landroid/support/v4/d/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/d/d;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()Z
    .registers 3

    sget-object v0, Landroid/support/v4/d/a;->b:Landroid/support/v4/d/d;

    iget-object v1, p0, Landroid/support/v4/d/a;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/d/d;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
