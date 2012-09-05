.class public LaQ/o;
.super Ljava/lang/Object;


# instance fields
.field private a:LaQ/m;

.field private b:Lcom/google/googlenav/bn;

.field private c:Ljava/lang/Boolean;

.field private d:Lcom/google/googlenav/a;

.field private e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LaQ/m;
    .registers 16

    const-wide/16 v12, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v0, -0x1

    iget-object v2, p0, LaQ/o;->a:LaQ/m;

    if-eqz v2, :cond_89

    iget-object v0, p0, LaQ/o;->a:LaQ/m;

    iget-object v9, v0, LaQ/m;->a:Ljava/lang/String;

    iget-object v0, p0, LaQ/o;->a:LaQ/m;

    iget-object v8, v0, LaQ/m;->d:Ljava/lang/String;

    iget-object v0, p0, LaQ/o;->a:LaQ/m;

    iget-boolean v6, v0, LaQ/m;->e:Z

    iget-object v0, p0, LaQ/o;->a:LaQ/m;

    iget-wide v4, v0, LaQ/m;->f:J

    iget-object v0, p0, LaQ/o;->a:LaQ/m;

    iget-object v3, v0, LaQ/m;->g:Ljava/lang/String;

    iget-object v0, p0, LaQ/o;->a:LaQ/m;

    iget-boolean v1, v0, LaQ/m;->h:Z

    iget-object v0, p0, LaQ/o;->a:LaQ/m;

    iget v7, v0, LaQ/m;->i:I

    iget-object v0, p0, LaQ/o;->a:LaQ/m;

    iget v2, v0, LaQ/m;->j:I

    iget-object v0, p0, LaQ/o;->a:LaQ/m;

    iget v0, v0, LaQ/m;->k:I

    :goto_2d
    iget-object v10, p0, LaQ/o;->b:Lcom/google/googlenav/bn;

    if-eqz v10, :cond_82

    iget-object v1, p0, LaQ/o;->b:Lcom/google/googlenav/bn;

    iget-boolean v1, v1, Lcom/google/googlenav/bn;->a:Z

    if-eqz v1, :cond_6d

    iget-object v1, p0, LaQ/o;->b:Lcom/google/googlenav/bn;

    iget-object v1, v1, Lcom/google/googlenav/bn;->b:Ljava/lang/String;

    :goto_3b
    iget-object v2, p0, LaQ/o;->b:Lcom/google/googlenav/bn;

    iget-object v2, v2, Lcom/google/googlenav/bn;->c:Ljava/lang/String;

    iget-object v7, p0, LaQ/o;->b:Lcom/google/googlenav/bn;

    iget-boolean v7, v7, Lcom/google/googlenav/bn;->d:Z

    iget-object v8, p0, LaQ/o;->b:Lcom/google/googlenav/bn;

    iget v8, v8, Lcom/google/googlenav/bn;->g:I

    iget-object v9, p0, LaQ/o;->b:Lcom/google/googlenav/bn;

    iget v9, v9, Lcom/google/googlenav/bn;->h:I

    :goto_4b
    iget-object v10, p0, LaQ/o;->c:Ljava/lang/Boolean;

    if-eqz v10, :cond_7e

    iget-object v3, p0, LaQ/o;->c:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v4, p0, LaQ/o;->d:Lcom/google/googlenav/a;

    if-nez v4, :cond_6f

    move-object v6, v11

    move-wide v4, v12

    :goto_5b
    iget-object v10, p0, LaQ/o;->e:Ljava/lang/Integer;

    if-eqz v10, :cond_7c

    iget-object v0, p0, LaQ/o;->e:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_65
    new-instance v0, LaQ/m;

    move-object v12, v11

    move-object v13, v11

    invoke-direct/range {v0 .. v13}, LaQ/m;-><init>(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;ZIIILjava/lang/String;Ljava/lang/String;LaQ/n;)V

    return-object v0

    :cond_6d
    move-object v1, v11

    goto :goto_3b

    :cond_6f
    iget-object v4, p0, LaQ/o;->d:Lcom/google/googlenav/a;

    invoke-virtual {v4}, Lcom/google/googlenav/a;->i()Ljava/lang/String;

    move-result-object v6

    iget-object v4, p0, LaQ/o;->d:Lcom/google/googlenav/a;

    invoke-virtual {v4}, Lcom/google/googlenav/a;->b()J

    move-result-wide v4

    goto :goto_5b

    :cond_7c
    move v10, v0

    goto :goto_65

    :cond_7e
    move-object v14, v3

    move v3, v6

    move-object v6, v14

    goto :goto_5b

    :cond_82
    move v14, v1

    move-object v1, v9

    move v9, v2

    move-object v2, v8

    move v8, v7

    move v7, v14

    goto :goto_4b

    :cond_89
    move v2, v1

    move-object v3, v11

    move-wide v4, v12

    move v6, v1

    move v7, v1

    move-object v8, v11

    move-object v9, v11

    goto :goto_2d
.end method

.method public a(LaQ/m;)LaQ/o;
    .registers 2

    iput-object p1, p0, LaQ/o;->a:LaQ/m;

    return-object p0
.end method

.method public a(Lcom/google/googlenav/bn;)LaQ/o;
    .registers 2

    iput-object p1, p0, LaQ/o;->b:Lcom/google/googlenav/bn;

    return-object p0
.end method
