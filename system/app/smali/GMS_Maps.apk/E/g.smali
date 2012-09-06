.class public Le/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Le/j;


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
    new-instance v0, Le/i;

    invoke-direct {v0}, Le/i;-><init>()V

    sput-object v0, Le/g;->b:Le/j;

    .line 42
    :goto_d
    return-void

    .line 40
    :cond_e
    new-instance v0, Le/h;

    invoke-direct {v0}, Le/h;-><init>()V

    sput-object v0, Le/g;->b:Le/j;

    goto :goto_d
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    sget-object v0, Le/g;->b:Le/j;

    invoke-interface {v0, p1}, Le/j;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Le/g;->a:Ljava/lang/Object;

    .line 134
    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 143
    sget-object v0, Le/g;->b:Le/j;

    iget-object v1, p0, Le/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Le/j;->a(Ljava/lang/Object;II)V

    .line 144
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 154
    sget-object v0, Le/g;->b:Le/j;

    iget-object v1, p0, Le/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Le/j;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a(F)Z
    .registers 4
    .parameter

    .prologue
    .line 177
    sget-object v0, Le/g;->b:Le/j;

    iget-object v1, p0, Le/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Le/j;->a(Ljava/lang/Object;F)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .registers 4
    .parameter

    .prologue
    .line 218
    sget-object v0, Le/g;->b:Le/j;

    iget-object v1, p0, Le/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Le/j;->a(Ljava/lang/Object;Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .registers 3

    .prologue
    .line 162
    sget-object v0, Le/g;->b:Le/j;

    iget-object v1, p0, Le/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Le/j;->b(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 189
    sget-object v0, Le/g;->b:Le/j;

    iget-object v1, p0, Le/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Le/j;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
