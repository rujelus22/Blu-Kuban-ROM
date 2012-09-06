.class public Lcom/google/googlenav/friend/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Las/h;


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/google/googlenav/friend/bk;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/google/googlenav/friend/bf;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/google/googlenav/friend/bf;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/google/googlenav/friend/bk;)V
    .registers 3
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-boolean v0, Lcom/google/googlenav/friend/bf;->a:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_f
    iput-object p1, p0, Lcom/google/googlenav/friend/bf;->b:Lcom/google/googlenav/friend/bk;

    .line 18
    return-void
.end method


# virtual methods
.method public D_()V
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/googlenav/friend/bf;->b:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/bk;->b(Las/h;)V

    .line 59
    return-void
.end method

.method public E_()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/googlenav/friend/bf;->b:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/bk;->b(Las/h;)V

    .line 69
    return-void
.end method

.method public F_()V
    .registers 1

    .prologue
    .line 77
    return-void
.end method

.method public L_()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/googlenav/friend/bf;->b:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/bk;->b(Las/h;)V

    .line 49
    return-void
.end method

.method public M_()V
    .registers 1

    .prologue
    .line 85
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 3
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/googlenav/friend/bf;->b:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/friend/bk;->a(Las/h;)V

    .line 25
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->k()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 27
    const/16 v0, 0x1bf

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/wizard/ju;->b(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/google/googlenav/friend/bf;->b:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bk;->D_()V

    .line 41
    :cond_1d
    :goto_1d
    return-void

    .line 34
    :cond_1e
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0}, Las/f;->o()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 40
    iget-object v0, p0, Lcom/google/googlenav/friend/bf;->b:Lcom/google/googlenav/friend/bk;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bk;->B_()V

    goto :goto_1d
.end method
