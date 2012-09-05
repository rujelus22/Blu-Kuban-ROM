.class final Lx/aD;
.super Ljava/lang/Object;

# interfaces
.implements Lx/aE;


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(IZ)V
    .registers 4

    iput p1, p0, Lx/aD;->a:I

    iput-boolean p2, p0, Lx/aD;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p0, Lx/aD;->a:I

    iput v0, p0, Lx/aD;->c:I

    iget-boolean v0, p0, Lx/aD;->b:Z

    iput-boolean v0, p0, Lx/aD;->d:Z

    return-void
.end method


# virtual methods
.method public a(Lt/af;Lt/ao;)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Lt/af;->b()I

    move-result v0

    iget v3, p0, Lx/aD;->c:I

    if-ge v0, v3, :cond_c

    move v0, v1

    :goto_b
    return v0

    :cond_c
    if-nez p2, :cond_10

    move v0, v2

    goto :goto_b

    :cond_10
    iget-boolean v0, p0, Lx/aD;->d:Z

    if-eqz v0, :cond_2f

    invoke-virtual {p2}, Lt/ao;->j()Lt/ar;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Lt/ar;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v3}, Lt/ar;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt/l;

    invoke-interface {v0}, Lt/l;->h()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v4, :cond_18

    move v0, v2

    goto :goto_b

    :cond_2d
    move v0, v1

    goto :goto_b

    :cond_2f
    move v0, v2

    goto :goto_b
.end method
