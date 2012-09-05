.class Ly/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/app/aC;


# instance fields
.field final synthetic a:[Lu/b;

.field final synthetic b:Ly/m;


# direct methods
.method constructor <init>(Ly/m;[Lu/b;)V
    .registers 3

    iput-object p1, p0, Ly/n;->b:Ly/m;

    iput-object p2, p0, Ly/n;->a:[Lu/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lu/b;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    :goto_8
    iget-object v4, p0, Ly/n;->a:[Lu/b;

    array-length v4, v4

    if-ge v0, v4, :cond_4e

    iget-object v4, p0, Ly/n;->a:[Lu/b;

    aget-object v4, v4, v0

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Lu/b;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4b

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_24

    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lu/b;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lu/b;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_4e
    if-eqz v1, :cond_89

    const-string v0, "R"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/ds;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lq/C;

    const-string v1, "changedRouteOptions"

    invoke-static {p1}, Lu/c;->c([Lu/b;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lq/C;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, LC/f;->b(LC/j;)V

    iget-object v0, p0, Ly/n;->b:Ly/m;

    invoke-static {v0, v2}, Ly/m;->a(Ly/m;Z)Z

    iget-object v0, p0, Ly/n;->b:Ly/m;

    const v1, 0x7f0b00c4

    invoke-virtual {v0, v1}, Ly/m;->c(I)V

    iget-object v0, p0, Ly/n;->b:Ly/m;

    iget-object v0, v0, Ly/m;->g:Lu/r;

    iget-object v1, p0, Ly/n;->b:Ly/m;

    iget-object v1, v1, Ly/m;->e:Lcom/google/android/maps/driveabout/app/aL;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aL;->a()Ls/b;

    move-result-object v1

    iget-object v2, p0, Ly/n;->b:Ly/m;

    invoke-static {v2}, Ly/m;->a(Ly/m;)Lu/x;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lu/r;->a(Ls/b;Lu/x;[Lu/b;)V

    :cond_89
    return-void
.end method
