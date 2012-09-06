.class public Lcom/google/googlenav/ui/wizard/dR;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/ui/wizard/eb;

.field private final b:Lcom/google/googlenav/ui/wizard/H;

.field private final c:Lcom/google/googlenav/ui/wizard/dX;

.field private final d:Lcom/google/googlenav/ui/wizard/aO;

.field private final e:Lcom/google/googlenav/ui/wizard/ju;

.field private final f:Lcom/google/googlenav/ui/wizard/dV;

.field private g:Lcom/google/googlenav/h;

.field private h:Lcom/google/googlenav/ui/wizard/dW;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/ui/wizard/H;Lcom/google/googlenav/ui/wizard/dX;Lcom/google/googlenav/ui/wizard/aO;Lcom/google/googlenav/ui/wizard/dW;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dR;->e:Lcom/google/googlenav/ui/wizard/ju;

    .line 73
    iput-object p4, p0, Lcom/google/googlenav/ui/wizard/dR;->d:Lcom/google/googlenav/ui/wizard/aO;

    .line 74
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/dR;->b:Lcom/google/googlenav/ui/wizard/H;

    .line 75
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/dR;->c:Lcom/google/googlenav/ui/wizard/dX;

    .line 76
    iput-object p5, p0, Lcom/google/googlenav/ui/wizard/dR;->h:Lcom/google/googlenav/ui/wizard/dW;

    .line 80
    new-instance v0, Lcom/google/googlenav/ui/wizard/dT;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/wizard/dT;-><init>(Lcom/google/googlenav/ui/wizard/dR;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->a:Lcom/google/googlenav/ui/wizard/eb;

    .line 84
    new-instance v0, Lcom/google/googlenav/ui/wizard/dV;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/dV;-><init>(Lcom/google/googlenav/ui/wizard/dR;Lcom/google/googlenav/ui/wizard/dS;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->f:Lcom/google/googlenav/ui/wizard/dV;

    .line 87
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->b:Lcom/google/googlenav/ui/wizard/H;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dR;->f:Lcom/google/googlenav/ui/wizard/dV;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/H;->a(Lcom/google/googlenav/ui/wizard/L;)V

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/dX;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->c:Lcom/google/googlenav/ui/wizard/dX;

    return-object v0
.end method

.method static synthetic b(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/h;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->g:Lcom/google/googlenav/h;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/H;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->b:Lcom/google/googlenav/ui/wizard/H;

    return-object v0
.end method

.method static synthetic d(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/ju;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->e:Lcom/google/googlenav/ui/wizard/ju;

    return-object v0
.end method

.method static synthetic e(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/dW;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->h:Lcom/google/googlenav/ui/wizard/dW;

    return-object v0
.end method

.method static synthetic f(Lcom/google/googlenav/ui/wizard/dR;)Lcom/google/googlenav/ui/wizard/aO;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->d:Lcom/google/googlenav/ui/wizard/aO;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/ui/wizard/eb;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->a:Lcom/google/googlenav/ui/wizard/eb;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/h;)V
    .registers 4
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dR;->g:Lcom/google/googlenav/h;

    .line 99
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->c:Lcom/google/googlenav/ui/wizard/dX;

    const/16 v1, 0x607

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dX;->a(I)V

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->b:Lcom/google/googlenav/ui/wizard/H;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/H;->a()V

    .line 101
    return-void
.end method

.method public b(Lcom/google/googlenav/h;)V
    .registers 3
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dR;->g:Lcom/google/googlenav/h;

    .line 105
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->c:Lcom/google/googlenav/ui/wizard/dX;

    if-eqz v0, :cond_b

    .line 106
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dR;->c:Lcom/google/googlenav/ui/wizard/dX;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/wizard/dX;->a(Lcom/google/googlenav/h;)V

    .line 108
    :cond_b
    return-void
.end method
