.class Ls/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/app/aE;


# instance fields
.field final synthetic a:[Lo/b;

.field final synthetic b:Ls/k;


# direct methods
.method constructor <init>(Ls/k;[Lo/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Ls/l;->b:Ls/k;

    iput-object p2, p0, Ls/l;->a:[Lo/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lo/b;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 339
    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 341
    :goto_8
    iget-object v4, p0, Ls/l;->a:[Lo/b;

    array-length v4, v4

    if-ge v0, v4, :cond_4e

    .line 342
    iget-object v4, p0, Ls/l;->a:[Lo/b;

    aget-object v4, v4, v0

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Lo/b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    .line 344
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_24

    .line 345
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lo/b;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lo/b;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 341
    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 350
    :cond_4e
    if-eqz v1, :cond_91

    .line 351
    const-string v0, "R"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v0, Lk/D;

    const-string v1, "changedRouteOptions"

    invoke-static {p1}, Lo/c;->c([Lo/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lk/D;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, LA/f;->b(LA/j;)V

    .line 355
    iget-object v0, p0, Ls/l;->b:Ls/k;

    invoke-static {v0, v2}, Ls/k;->a(Ls/k;Z)Z

    .line 356
    iget-object v0, p0, Ls/l;->b:Ls/k;

    const v1, 0x7f0d00d2

    invoke-virtual {v0, v1}, Ls/k;->c(I)V

    .line 361
    iget-object v0, p0, Ls/l;->b:Ls/k;

    iget-object v0, v0, Ls/k;->a:Ls/n;

    invoke-virtual {v0}, Ls/n;->f()Lo/r;

    move-result-object v0

    iget-object v1, p0, Ls/l;->b:Ls/k;

    iget-object v1, v1, Ls/k;->a:Ls/n;

    invoke-virtual {v1}, Ls/n;->e()Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->b()Lm/b;

    move-result-object v1

    iget-object v2, p0, Ls/l;->b:Ls/k;

    invoke-static {v2}, Ls/k;->a(Ls/k;)Lo/x;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lo/r;->a(Lm/b;Lo/x;[Lo/b;)V

    .line 365
    :cond_91
    return-void
.end method
