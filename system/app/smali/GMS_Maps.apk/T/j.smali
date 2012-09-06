.class public Lt/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/q;


# instance fields
.field private volatile a:I

.field private final b:Lac/h;


# direct methods
.method public constructor <init>(Lac/h;)V
    .registers 3
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lt/j;->a:I

    .line 35
    iput-object p1, p0, Lt/j;->b:Lac/h;

    .line 36
    return-void
.end method

.method private b()V
    .registers 8

    .prologue
    .line 80
    new-instance v0, LA/i;

    iget v1, p0, Lt/j;->a:I

    iget-object v2, p0, Lt/j;->b:Lac/h;

    invoke-virtual {v2}, Lac/h;->r()I

    move-result v2

    iget-object v3, p0, Lt/j;->b:Lac/h;

    invoke-virtual {v3}, Lac/h;->s()I

    move-result v3

    iget-object v4, p0, Lt/j;->b:Lac/h;

    invoke-virtual {v4}, Lac/h;->o()J

    move-result-wide v4

    iget-object v6, p0, Lt/j;->b:Lac/h;

    invoke-virtual {v6}, Lac/h;->t()I

    move-result v6

    invoke-direct/range {v0 .. v6}, LA/i;-><init>(IIIJI)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 86
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 72
    return-void
.end method

.method public a(IZLjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    new-instance v0, LA/h;

    invoke-direct {v0, p1, p2}, LA/h;-><init>(IZ)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 66
    invoke-direct {p0}, Lt/j;->b()V

    .line 67
    return-void
.end method

.method public a(Lac/g;)V
    .registers 4
    .parameter

    .prologue
    .line 40
    new-instance v0, LA/g;

    const-string v1, "onComplete"

    invoke-direct {v0, v1, p1}, LA/g;-><init>(Ljava/lang/String;Lac/g;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 42
    iget v0, p0, Lt/j;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt/j;->a:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_17

    .line 43
    invoke-direct {p0}, Lt/j;->b()V

    .line 59
    :cond_17
    return-void
.end method

.method public b(Lac/g;)V
    .registers 2
    .parameter

    .prologue
    .line 77
    return-void
.end method
