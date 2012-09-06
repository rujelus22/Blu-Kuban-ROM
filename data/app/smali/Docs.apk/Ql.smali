.class public LQl;
.super Ljava/lang/Object;
.source "SharingAcl.java"


# instance fields
.field private final a:Ldq;

.field private final a:Ldu;

.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(LQl;Ldu;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ldt;

    invoke-direct {v0}, Ldt;-><init>()V

    invoke-virtual {p1}, LQl;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldt;->a(Ljava/lang/String;)Ldt;

    move-result-object v0

    invoke-virtual {p1}, LQl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldt;->b(Ljava/lang/String;)Ldt;

    move-result-object v0

    invoke-virtual {p1}, LQl;->a()Ldx;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldt;->a(Ldx;)Ldt;

    move-result-object v0

    invoke-virtual {v0, p2}, Ldt;->a(Ldu;)Ldt;

    move-result-object v0

    invoke-virtual {v0, p3}, Ldt;->a(Z)Ldt;

    move-result-object v0

    invoke-virtual {v0}, Ldt;->a()Ldq;

    move-result-object v0

    iput-object v0, p0, LQl;->a:Ldq;

    .line 37
    iget-object v0, p1, LQl;->a:Ldu;

    iput-object v0, p0, LQl;->a:Ldu;

    .line 38
    iget-boolean v0, p1, LQl;->a:Z

    iput-boolean v0, p0, LQl;->a:Z

    .line 39
    iget-object v0, p0, LQl;->a:Ldu;

    if-ne v0, p2, :cond_3e

    iget-boolean v0, p0, LQl;->a:Z

    if-eq v0, p3, :cond_42

    :cond_3e
    const/4 v0, 0x1

    :goto_3f
    iput-boolean v0, p0, LQl;->b:Z

    .line 41
    return-void

    .line 39
    :cond_42
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method public constructor <init>(Ldq;)V
    .registers 3
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ldt;

    invoke-direct {v0}, Ldt;-><init>()V

    invoke-virtual {v0, p1}, Ldt;->a(Ldq;)Ldt;

    move-result-object v0

    invoke-virtual {v0}, Ldt;->a()Ldq;

    move-result-object v0

    iput-object v0, p0, LQl;->a:Ldq;

    .line 25
    invoke-virtual {p1}, Ldq;->a()Ldu;

    move-result-object v0

    iput-object v0, p0, LQl;->a:Ldu;

    .line 26
    invoke-virtual {p1}, Ldq;->a()Z

    move-result v0

    iput-boolean v0, p0, LQl;->a:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, LQl;->b:Z

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ldq;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, LQl;->a:Ldq;

    return-object v0
.end method

.method public a()Ldw;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, LQl;->a:Ldq;

    invoke-virtual {v0}, Ldq;->a()Ldw;

    move-result-object v0

    return-object v0
.end method

.method public a()Ldx;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, LQl;->a:Ldq;

    invoke-virtual {v0}, Ldq;->a()Ldx;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, LQl;->a:Ldq;

    invoke-virtual {v0}, Ldq;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, LQl;->b:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, LQl;->a:Ldq;

    invoke-virtual {v0}, Ldq;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, LQl;->a:Ldq;

    invoke-virtual {v0}, Ldq;->a()Z

    move-result v0

    return v0
.end method
