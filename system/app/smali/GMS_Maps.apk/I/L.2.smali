.class Li/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/b;


# instance fields
.field final synthetic a:Li/J;

.field private final b:Li/b;

.field private c:I


# direct methods
.method public constructor <init>(Li/J;Li/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Li/L;->a:Li/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Li/L;->b:Li/b;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Li/a;)V
    .registers 4
    .parameter

    .prologue
    .line 24
    invoke-virtual {p0}, Li/L;->a()Z

    move-result v0

    if-nez v0, :cond_d

    .line 25
    iget-object v0, p0, Li/L;->b:Li/b;

    iget-object v1, p0, Li/L;->a:Li/J;

    invoke-interface {v0, v1}, Li/b;->a(Li/a;)V

    .line 27
    :cond_d
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 30
    iget v0, p0, Li/L;->c:I

    iget-object v1, p0, Li/L;->a:Li/J;

    invoke-static {v1}, Li/J;->a(Li/J;)[Li/a;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_d

    .line 31
    const/4 v0, 0x0

    .line 36
    :goto_c
    return v0

    .line 33
    :cond_d
    iget-object v0, p0, Li/L;->a:Li/J;

    invoke-static {v0}, Li/J;->a(Li/J;)[Li/a;

    move-result-object v0

    iget v1, p0, Li/L;->c:I

    aget-object v0, v0, v1

    .line 34
    iget v1, p0, Li/L;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Li/L;->c:I

    .line 35
    invoke-virtual {v0, p0}, Li/a;->a(Li/b;)V

    .line 36
    const/4 v0, 0x1

    goto :goto_c
.end method
