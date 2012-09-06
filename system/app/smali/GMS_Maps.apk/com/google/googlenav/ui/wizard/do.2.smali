.class public Lcom/google/googlenav/ui/wizard/dO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Z

.field d:Ljava/lang/Boolean;

.field e:Lat/B;

.field f:I

.field g:Ljava/lang/String;

.field h:Lcom/google/googlenav/ui/wizard/dG;

.field i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:B

.field m:Z

.field n:Z

.field o:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field q:Ljava/util/List;

.field r:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1624
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dO;->b:I

    .line 1625
    iput-boolean v1, p0, Lcom/google/googlenav/ui/wizard/dO;->c:Z

    .line 1628
    const v0, 0x1869f

    iput v0, p0, Lcom/google/googlenav/ui/wizard/dO;->f:I

    .line 1631
    iput v1, p0, Lcom/google/googlenav/ui/wizard/dO;->i:I

    return-void
.end method


# virtual methods
.method public a(B)Lcom/google/googlenav/ui/wizard/dO;
    .registers 2
    .parameter

    .prologue
    .line 1751
    iput-byte p1, p0, Lcom/google/googlenav/ui/wizard/dO;->l:B

    .line 1752
    return-object p0
.end method

.method public a(I)Lcom/google/googlenav/ui/wizard/dO;
    .registers 2
    .parameter

    .prologue
    .line 1685
    iput p1, p0, Lcom/google/googlenav/ui/wizard/dO;->b:I

    .line 1686
    return-object p0
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ui/wizard/dO;
    .registers 2
    .parameter

    .prologue
    .line 1774
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dO;->o:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1775
    return-object p0
.end method

.method public a(Lcom/google/googlenav/ui/wizard/dG;)Lcom/google/googlenav/ui/wizard/dO;
    .registers 2
    .parameter

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dO;->h:Lcom/google/googlenav/ui/wizard/dG;

    .line 1728
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;
    .registers 2
    .parameter

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dO;->a:Ljava/lang/String;

    .line 1667
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/google/googlenav/ui/wizard/dO;
    .registers 2
    .parameter

    .prologue
    .line 1794
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dO;->q:Ljava/util/List;

    .line 1795
    return-object p0
.end method

.method public a(Z)Lcom/google/googlenav/ui/wizard/dO;
    .registers 3
    .parameter

    .prologue
    .line 1676
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->d:Ljava/lang/Boolean;

    .line 1677
    return-object p0
.end method

.method a()V
    .registers 3

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->h:Lcom/google/googlenav/ui/wizard/dG;

    if-nez v0, :cond_c

    .line 1645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No callback provided to LocationSelectionWizard."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1647
    :cond_c
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dO;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 1648
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sourceOption provided to LocationSelectionWizard."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1650
    :cond_19
    return-void
.end method

.method public b(I)Lcom/google/googlenav/ui/wizard/dO;
    .registers 2
    .parameter

    .prologue
    .line 1733
    iput p1, p0, Lcom/google/googlenav/ui/wizard/dO;->i:I

    .line 1734
    return-object p0
.end method

.method public b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ui/wizard/dO;
    .registers 2
    .parameter

    .prologue
    .line 1784
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dO;->p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1785
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;
    .registers 2
    .parameter

    .prologue
    .line 1721
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dO;->g:Ljava/lang/String;

    .line 1722
    return-object p0
.end method

.method public b(Z)Lcom/google/googlenav/ui/wizard/dO;
    .registers 2
    .parameter

    .prologue
    .line 1696
    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/dO;->c:Z

    .line 1697
    return-object p0
.end method

.method b()Z
    .registers 2

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 1654
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->d:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1656
    :goto_a
    return v0

    :cond_b
    iget v0, p0, Lcom/google/googlenav/ui/wizard/dO;->b:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;
    .registers 2
    .parameter

    .prologue
    .line 1739
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dO;->j:Ljava/lang/String;

    .line 1740
    return-object p0
.end method

.method public c(Z)Lcom/google/googlenav/ui/wizard/dO;
    .registers 2
    .parameter

    .prologue
    .line 1757
    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/dO;->m:Z

    .line 1758
    return-object p0
.end method

.method c()Z
    .registers 2

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->p:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dO;->q:Ljava/util/List;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d(Ljava/lang/String;)Lcom/google/googlenav/ui/wizard/dO;
    .registers 2
    .parameter

    .prologue
    .line 1745
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dO;->k:Ljava/lang/String;

    .line 1746
    return-object p0
.end method

.method public d(Z)Lcom/google/googlenav/ui/wizard/dO;
    .registers 2
    .parameter

    .prologue
    .line 1763
    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/dO;->n:Z

    .line 1764
    return-object p0
.end method

.method public e(Z)Lcom/google/googlenav/ui/wizard/dO;
    .registers 2
    .parameter

    .prologue
    .line 1800
    iput-boolean p1, p0, Lcom/google/googlenav/ui/wizard/dO;->r:Z

    .line 1801
    return-object p0
.end method
