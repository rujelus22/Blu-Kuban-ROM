.class public Lz/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private a:Lz/j;


# direct methods
.method public constructor <init>(Lz/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz/h;->a:Lz/j;

    return-void
.end method


# virtual methods
.method public a()Lz/i;
    .registers 4

    new-instance v0, Lz/i;

    iget-object v1, p0, Lz/h;->a:Lz/j;

    iget-object v1, v1, Lz/j;->c:Ljava/lang/Object;

    iget-object v2, p0, Lz/h;->a:Lz/j;

    iget-object v2, v2, Lz/j;->d:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lz/i;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lz/h;->a:Lz/j;

    iget-object v1, v1, Lz/j;->b:Lz/j;

    iput-object v1, p0, Lz/h;->a:Lz/j;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lz/h;->a:Lz/j;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lz/h;->a()Lz/i;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
