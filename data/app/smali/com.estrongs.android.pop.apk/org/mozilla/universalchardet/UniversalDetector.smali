.class public Lorg/mozilla/universalchardet/UniversalDetector;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:B

.field private f:Ljava/lang/String;

.field private g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private h:Lorg/mozilla/universalchardet/prober/CharsetProber;

.field private i:Lorg/mozilla/universalchardet/a;


# direct methods
.method public constructor <init>(Lorg/mozilla/universalchardet/a;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/a;

    iput-object v2, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/mozilla/universalchardet/prober/CharsetProber;

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    const/4 v0, 0x0

    :goto_e
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-lt v0, v1, :cond_17

    invoke-virtual {p0}, Lorg/mozilla/universalchardet/UniversalDetector;->c()V

    return-void

    :cond_17
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    return-object v0
.end method

.method public a([BII)V
    .registers 12

    const/16 v7, 0xff

    const/16 v5, 0xfe

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    if-eqz v1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    if-lez p3, :cond_f

    iput-boolean v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->d:Z

    :cond_f
    iget-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->c:Z

    if-eqz v1, :cond_7f

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->c:Z

    const/4 v1, 0x3

    if-le p3, v1, :cond_7f

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p2, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    sparse-switch v1, :sswitch_data_114

    :cond_31
    :goto_31
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    if-eqz v1, :cond_7f

    iput-boolean v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    goto :goto_a

    :sswitch_38
    const/16 v1, 0xbb

    if-ne v2, v1, :cond_31

    const/16 v1, 0xbf

    if-ne v3, v1, :cond_31

    sget-object v1, Lorg/mozilla/universalchardet/b;->u:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto :goto_31

    :sswitch_45
    if-ne v2, v7, :cond_50

    if-nez v3, :cond_50

    if-nez v4, :cond_50

    sget-object v1, Lorg/mozilla/universalchardet/b;->A:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto :goto_31

    :cond_50
    if-ne v2, v7, :cond_31

    sget-object v1, Lorg/mozilla/universalchardet/b;->v:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto :goto_31

    :sswitch_57
    if-nez v2, :cond_62

    if-ne v3, v5, :cond_62

    if-ne v4, v7, :cond_62

    sget-object v1, Lorg/mozilla/universalchardet/b;->x:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto :goto_31

    :cond_62
    if-nez v2, :cond_31

    if-ne v3, v7, :cond_31

    if-ne v4, v5, :cond_31

    sget-object v1, Lorg/mozilla/universalchardet/b;->B:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto :goto_31

    :sswitch_6d
    if-ne v2, v5, :cond_78

    if-nez v3, :cond_78

    if-nez v4, :cond_78

    sget-object v1, Lorg/mozilla/universalchardet/b;->y:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto :goto_31

    :cond_78
    if-ne v2, v5, :cond_31

    sget-object v1, Lorg/mozilla/universalchardet/b;->w:Ljava/lang/String;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto :goto_31

    :cond_7f
    add-int v2, p2, p3

    move v1, p2

    :goto_82
    if-lt v1, v2, :cond_a0

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v2, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v1, v2, :cond_ec

    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v0

    sget-object v1, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v0, v1, :cond_a

    iput-boolean v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto/16 :goto_a

    :cond_a0
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_cf

    const/16 v4, 0xa0

    if-eq v3, v4, :cond_cf

    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v4, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-eq v3, v4, :cond_cc

    sget-object v3, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v3, :cond_bd

    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    :cond_bd
    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v3, v3, v0

    if-nez v3, :cond_cc

    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    new-instance v4, Lorg/mozilla/universalchardet/prober/b;

    invoke-direct {v4}, Lorg/mozilla/universalchardet/prober/b;-><init>()V

    aput-object v4, v3, v0

    :cond_cc
    :goto_cc
    add-int/lit8 v1, v1, 0x1

    goto :goto_82

    :cond_cf
    iget-object v4, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v5, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v4, v5, :cond_e7

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_e3

    const/16 v4, 0x7b

    if-ne v3, v4, :cond_e7

    iget-byte v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->e:B

    const/16 v4, 0x7e

    if-ne v3, v4, :cond_e7

    :cond_e3
    sget-object v3, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    :cond_e7
    aget-byte v3, p1, v1

    iput-byte v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->e:B

    goto :goto_cc

    :cond_ec
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v2, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v1, v2, :cond_a

    :goto_f2
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-ge v0, v1, :cond_a

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a([BII)Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    move-result-object v1

    sget-object v2, Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;->FOUND_IT:Lorg/mozilla/universalchardet/prober/CharsetProber$ProbingState;

    if-ne v1, v2, :cond_111

    iput-boolean v6, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    goto/16 :goto_a

    :cond_111
    add-int/lit8 v0, v0, 0x1

    goto :goto_f2

    :sswitch_data_114
    .sparse-switch
        0x0 -> :sswitch_57
        0xef -> :sswitch_38
        0xfe -> :sswitch_45
        0xff -> :sswitch_6d
    .end sparse-switch
.end method

.method public b()V
    .registers 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->d:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    if-eqz v1, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/a;

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/mozilla/universalchardet/a;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_19
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    sget-object v2, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->HIGHBYTE:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    if-ne v1, v2, :cond_55

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_22
    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v3, v3

    if-lt v0, v3, :cond_44

    const v0, 0x3e4ccccd

    cmpl-float v0, v2, v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/prober/CharsetProber;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->i:Lorg/mozilla/universalchardet/a;

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/mozilla/universalchardet/a;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_44
    iget-object v3, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/mozilla/universalchardet/prober/CharsetProber;->b()F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_52

    move v1, v0

    move v2, v3

    :cond_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_55
    sget-object v0, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->ESC_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    goto :goto_5
.end method

.method public c()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->b:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->c:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->f:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->d:Z

    sget-object v1, Lorg/mozilla/universalchardet/UniversalDetector$InputState;->PURE_ASCII:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->a:Lorg/mozilla/universalchardet/UniversalDetector$InputState;

    iput-byte v0, p0, Lorg/mozilla/universalchardet/UniversalDetector;->e:B

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->h:Lorg/mozilla/universalchardet/prober/CharsetProber;

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->c()V

    :cond_1a
    :goto_1a
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    array-length v1, v1

    if-lt v0, v1, :cond_20

    return-void

    :cond_20
    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lorg/mozilla/universalchardet/UniversalDetector;->g:[Lorg/mozilla/universalchardet/prober/CharsetProber;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/mozilla/universalchardet/prober/CharsetProber;->c()V

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a
.end method
