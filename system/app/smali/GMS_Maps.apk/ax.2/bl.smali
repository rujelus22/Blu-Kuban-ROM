.class public Lax/bl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/login/i;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lax/bq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lax/bl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lax/bl;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lax/bq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lax/bl;->a:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_f
    iput-object p1, p0, Lax/bl;->b:Lax/bq;

    return-void
.end method


# virtual methods
.method public B_()V
    .registers 1

    return-void
.end method

.method public C_()V
    .registers 1

    return-void
.end method

.method public E_()V
    .registers 2

    iget-object v0, p0, Lax/bl;->b:Lax/bq;

    invoke-virtual {v0, p0}, Lax/bq;->b(Lcom/google/googlenav/login/i;)V

    return-void
.end method

.method public F_()V
    .registers 2

    iget-object v0, p0, Lax/bl;->b:Lax/bq;

    invoke-virtual {v0, p0}, Lax/bq;->b(Lcom/google/googlenav/login/i;)V

    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/hM;)V
    .registers 3

    iget-object v0, p0, Lax/bl;->b:Lax/bq;

    invoke-virtual {v0, p0}, Lax/bq;->a(Lcom/google/googlenav/login/i;)V

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->k()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x1a4

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/wizard/hM;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lax/bl;->b:Lax/bq;

    invoke-virtual {v0}, Lax/bq;->E_()V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/login/g;->o()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lax/bl;->b:Lax/bq;

    invoke-virtual {v0}, Lax/bq;->c()V

    goto :goto_1d
.end method

.method public i()V
    .registers 2

    iget-object v0, p0, Lax/bl;->b:Lax/bq;

    invoke-virtual {v0, p0}, Lax/bq;->b(Lcom/google/googlenav/login/i;)V

    return-void
.end method
