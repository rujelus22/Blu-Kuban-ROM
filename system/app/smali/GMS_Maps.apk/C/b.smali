.class public LC/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC/T;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:LC/T;

.field private volatile c:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;LC/T;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, LC/b;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, LC/b;->b:LC/T;

    .line 32
    return-void
.end method


# virtual methods
.method public a(LC/R;)V
    .registers 4
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, LC/b;->c:Z

    if-eqz v0, :cond_13

    .line 41
    new-instance v0, LC/R;

    invoke-direct {v0, p1}, LC/R;-><init>(Landroid/location/Location;)V

    .line 42
    iget-object v1, p0, LC/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LC/R;->setProvider(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, LC/b;->b:LC/T;

    invoke-interface {v1, v0}, LC/T;->a(LC/R;)V

    .line 45
    :cond_13
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, LC/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, LC/b;->c:Z

    .line 70
    :cond_b
    iget-object v0, p0, LC/b;->b:LC/T;

    iget-object v1, p0, LC/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, LC/T;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    iget-boolean v0, p0, LC/b;->c:Z

    if-eqz v0, :cond_b

    .line 79
    iget-object v0, p0, LC/b;->b:LC/T;

    iget-object v1, p0, LC/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, LC/T;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    :cond_b
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 87
    iget-boolean v0, p0, LC/b;->c:Z

    if-nez v0, :cond_b

    .line 88
    iget-object v0, p0, LC/b;->a:Ljava/lang/String;

    iget-object v1, p0, LC/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, LC/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_b
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, LC/b;->a:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, LC/b;->c:Z

    .line 57
    :cond_b
    iget-object v0, p0, LC/b;->b:LC/T;

    iget-object v1, p0, LC/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, LC/T;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public c()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method public d()V
    .registers 3

    .prologue
    .line 96
    iget-boolean v0, p0, LC/b;->c:Z

    if-eqz v0, :cond_b

    .line 97
    iget-object v0, p0, LC/b;->a:Ljava/lang/String;

    iget-object v1, p0, LC/b;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, LC/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_b
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 105
    iget-boolean v0, p0, LC/b;->c:Z

    return v0
.end method

.method public f()V
    .registers 1

    .prologue
    .line 119
    invoke-virtual {p0}, LC/b;->d()V

    .line 120
    return-void
.end method
