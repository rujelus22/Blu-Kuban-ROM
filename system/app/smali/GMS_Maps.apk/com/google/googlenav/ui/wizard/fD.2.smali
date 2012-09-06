.class Lcom/google/googlenav/ui/wizard/fD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/af;


# instance fields
.field private a:Lcom/google/googlenav/ai;

.field private b:Lcom/google/googlenav/ui/wizard/fC;

.field private c:Lcom/google/googlenav/ui/wizard/fG;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ai;Lcom/google/googlenav/ui/wizard/fC;Lcom/google/googlenav/ui/wizard/fG;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fD;->a:Lcom/google/googlenav/ai;

    .line 547
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/fD;->b:Lcom/google/googlenav/ui/wizard/fC;

    .line 548
    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/fD;->c:Lcom/google/googlenav/ui/wizard/fG;

    .line 549
    return-void
.end method

.method private a(ZZ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 562
    if-eqz p1, :cond_1a

    .line 565
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fD;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->ar()V

    .line 566
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fD;->b:Lcom/google/googlenav/ui/wizard/fC;

    if-eqz v0, :cond_10

    .line 567
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fD;->b:Lcom/google/googlenav/ui/wizard/fC;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/fC;->a()V

    .line 575
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fD;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->aq()Lcom/google/googlenav/ax;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ax;->a()V

    .line 576
    return-void

    .line 570
    :cond_1a
    if-eqz p2, :cond_28

    const/16 v0, 0x388

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 573
    :goto_22
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fD;->c:Lcom/google/googlenav/ui/wizard/fG;

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/wizard/fG;->a(Ljava/lang/String;)V

    goto :goto_10

    .line 570
    :cond_28
    const/16 v0, 0x37e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/fD;->a:Lcom/google/googlenav/ai;

    invoke-virtual {v3}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22
.end method


# virtual methods
.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 553
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/wizard/fD;->a(ZZ)V

    .line 554
    return-void
.end method

.method public b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 558
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/googlenav/ui/wizard/fD;->a(ZZ)V

    .line 559
    return-void
.end method
