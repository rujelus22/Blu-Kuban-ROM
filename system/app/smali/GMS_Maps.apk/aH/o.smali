.class public Lah/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/util/n;


# instance fields
.field private final a:Lcom/google/googlenav/android/Y;

.field private final b:LY/c;

.field private c:Lah/a;

.field private d:Lah/s;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/Y;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lah/o;->a:Lcom/google/googlenav/android/Y;

    .line 38
    iput-object p2, p0, Lah/o;->b:LY/c;

    .line 39
    return-void
.end method


# virtual methods
.method public a()Lah/a;
    .registers 5

    .prologue
    .line 48
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->i()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->j()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_14
    iget-object v0, p0, Lah/o;->c:Lah/a;

    if-nez v0, :cond_28

    .line 52
    new-instance v0, Lah/r;

    invoke-direct {v0}, Lah/r;-><init>()V

    .line 54
    new-instance v1, Lah/a;

    iget-object v2, p0, Lah/o;->a:Lcom/google/googlenav/android/Y;

    iget-object v3, p0, Lah/o;->b:LY/c;

    invoke-direct {v1, v2, v3, v0}, Lah/a;-><init>(Lcom/google/googlenav/android/Y;LY/c;Lah/q;)V

    iput-object v1, p0, Lah/o;->c:Lah/a;

    .line 57
    :cond_28
    iget-object v0, p0, Lah/o;->c:Lah/a;

    return-object v0
.end method

.method public b()Lah/s;
    .registers 4

    .prologue
    .line 66
    iget-object v0, p0, Lah/o;->d:Lah/s;

    if-nez v0, :cond_f

    .line 67
    new-instance v0, Lah/s;

    const/16 v1, 0x64

    iget-object v2, p0, Lah/o;->a:Lcom/google/googlenav/android/Y;

    invoke-direct {v0, v1, v2}, Lah/s;-><init>(ILcom/google/googlenav/android/Y;)V

    iput-object v0, p0, Lah/o;->d:Lah/s;

    .line 69
    :cond_f
    iget-object v0, p0, Lah/o;->d:Lah/s;

    return-object v0
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 5

    .prologue
    .line 77
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lah/o;->c:Lah/a;

    if-eqz v1, :cond_18

    .line 79
    new-instance v1, Lcom/google/googlenav/common/util/l;

    const-string v2, "friend photos"

    iget-object v3, p0, Lah/o;->c:Lah/a;

    invoke-virtual {v3}, Lah/a;->a()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_18
    iget-object v1, p0, Lah/o;->d:Lah/s;

    if-eqz v1, :cond_2c

    .line 84
    new-instance v1, Lcom/google/googlenav/common/util/l;

    const-string v2, "media photos"

    iget-object v3, p0, Lah/o;->d:Lah/s;

    invoke-virtual {v3}, Lah/s;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_2c
    const/4 v1, 0x0

    .line 89
    new-instance v2, Lcom/google/googlenav/common/util/l;

    const-string v3, "PhotoManager"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v2
.end method
