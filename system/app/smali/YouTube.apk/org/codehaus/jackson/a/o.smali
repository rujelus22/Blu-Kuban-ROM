.class public final Lorg/codehaus/jackson/a/o;
.super Lorg/codehaus/jackson/a/d;
.source "SourceFile"


# static fields
.field protected static final g:[C

.field protected static final h:[I


# instance fields
.field protected final i:Lorg/codehaus/jackson/b/c;

.field protected final j:Ljava/io/Writer;

.field protected k:[I

.field protected l:I

.field protected m:Lorg/codehaus/jackson/b/b;

.field protected n:Lorg/codehaus/jackson/e;

.field protected o:[C

.field protected p:I

.field protected q:I

.field protected r:I

.field protected s:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    invoke-static {}, Lorg/codehaus/jackson/util/b;->g()[C

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/a/o;->g:[C

    .line 26
    invoke-static {}, Lorg/codehaus/jackson/util/b;->f()[I

    move-result-object v0

    sput-object v0, Lorg/codehaus/jackson/a/o;->h:[I

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/b/c;ILorg/codehaus/jackson/c;Ljava/io/Writer;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p2, p3}, Lorg/codehaus/jackson/a/d;-><init>(ILorg/codehaus/jackson/c;)V

    .line 50
    sget-object v0, Lorg/codehaus/jackson/a/o;->h:[I

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->k:[I

    .line 95
    iput v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    .line 101
    iput v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    .line 125
    iput-object p1, p0, Lorg/codehaus/jackson/a/o;->i:Lorg/codehaus/jackson/b/c;

    .line 126
    iput-object p4, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    .line 127
    invoke-virtual {p1}, Lorg/codehaus/jackson/b/c;->h()[C

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    .line 128
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    array-length v0, v0

    iput v0, p0, Lorg/codehaus/jackson/a/o;->r:I

    .line 130
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->ESCAPE_NON_ASCII:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 131
    const/16 v0, 0x7f

    iput v0, p0, Lorg/codehaus/jackson/a/o;->l:I

    .line 133
    :cond_27
    return-void
.end method

.method private final a([CIICI)I
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x30

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x6

    .line 1659
    if-ltz p5, :cond_29

    .line 1660
    if-le p2, v3, :cond_18

    if-ge p2, p3, :cond_18

    .line 1661
    add-int/lit8 p2, p2, -0x2

    .line 1662
    const/16 v0, 0x5c

    aput-char v0, p1, p2

    .line 1663
    add-int/lit8 v0, p2, 0x1

    int-to-char v1, p5

    aput-char v1, p1, v0

    .line 1729
    :goto_17
    return p2

    .line 1665
    :cond_18
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->s:[C

    .line 1666
    if-nez v0, :cond_20

    .line 1667
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->k()[C

    move-result-object v0

    .line 1669
    :cond_20
    int-to-char v1, p5

    aput-char v1, v0, v3

    .line 1670
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_17

    .line 1674
    :cond_29
    const/4 v0, -0x2

    if-eq p5, v0, :cond_db

    .line 1675
    const/4 v0, 0x5

    if-le p2, v0, :cond_7c

    if-ge p2, p3, :cond_7c

    .line 1676
    add-int/lit8 v0, p2, -0x6

    .line 1677
    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0x5c

    aput-char v2, p1, v0

    .line 1678
    add-int/lit8 v0, v1, 0x1

    const/16 v2, 0x75

    aput-char v2, p1, v1

    .line 1680
    const/16 v1, 0xff

    if-le p4, v1, :cond_73

    .line 1681
    shr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 1682
    add-int/lit8 v2, v0, 0x1

    sget-object v3, Lorg/codehaus/jackson/a/o;->g:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    aput-char v3, p1, v0

    .line 1683
    add-int/lit8 v0, v2, 0x1

    sget-object v3, Lorg/codehaus/jackson/a/o;->g:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v3, v1

    aput-char v1, p1, v2

    .line 1684
    and-int/lit16 v1, p4, 0xff

    int-to-char p4, v1

    .line 1689
    :goto_5e
    add-int/lit8 v1, v0, 0x1

    sget-object v2, Lorg/codehaus/jackson/a/o;->g:[C

    shr-int/lit8 v3, p4, 0x4

    aget-char v2, v2, v3

    aput-char v2, p1, v0

    .line 1690
    sget-object v0, Lorg/codehaus/jackson/a/o;->g:[C

    and-int/lit8 v2, p4, 0xf

    aget-char v0, v0, v2

    aput-char v0, p1, v1

    .line 1691
    add-int/lit8 p2, v1, -0x5

    goto :goto_17

    .line 1686
    :cond_73
    add-int/lit8 v1, v0, 0x1

    aput-char v5, p1, v0

    .line 1687
    add-int/lit8 v0, v1, 0x1

    aput-char v5, p1, v1

    goto :goto_5e

    .line 1694
    :cond_7c
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->s:[C

    .line 1695
    if-nez v0, :cond_84

    .line 1696
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->k()[C

    move-result-object v0

    .line 1698
    :cond_84
    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    iput v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    .line 1699
    const/16 v1, 0xff

    if-le p4, v1, :cond_c3

    .line 1700
    shr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 1701
    and-int/lit16 v2, p4, 0xff

    .line 1702
    const/16 v3, 0xa

    sget-object v4, Lorg/codehaus/jackson/a/o;->g:[C

    shr-int/lit8 v5, v1, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 1703
    const/16 v3, 0xb

    sget-object v4, Lorg/codehaus/jackson/a/o;->g:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v4, v1

    aput-char v1, v0, v3

    .line 1704
    const/16 v1, 0xc

    sget-object v3, Lorg/codehaus/jackson/a/o;->g:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    .line 1705
    const/16 v1, 0xd

    sget-object v3, Lorg/codehaus/jackson/a/o;->g:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    .line 1706
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_17

    .line 1708
    :cond_c3
    sget-object v1, Lorg/codehaus/jackson/a/o;->g:[C

    shr-int/lit8 v2, p4, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 1709
    const/4 v1, 0x7

    sget-object v2, Lorg/codehaus/jackson/a/o;->g:[C

    and-int/lit8 v3, p4, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 1710
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    invoke-virtual {v1, v0, v4, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_17

    .line 1716
    :cond_db
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:Lorg/codehaus/jackson/e;

    if-nez v0, :cond_f7

    .line 1717
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->m:Lorg/codehaus/jackson/b/b;

    invoke-virtual {v0}, Lorg/codehaus/jackson/b/b;->b()Lorg/codehaus/jackson/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/codehaus/jackson/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 1722
    :goto_e9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1723
    if-lt p2, v1, :cond_101

    if-ge p2, p3, :cond_101

    .line 1724
    sub-int/2addr p2, v1

    .line 1725
    invoke-virtual {v0, v2, v1, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    goto/16 :goto_17

    .line 1719
    :cond_f7
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:Lorg/codehaus/jackson/e;

    invoke-interface {v0}, Lorg/codehaus/jackson/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 1720
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/a/o;->n:Lorg/codehaus/jackson/e;

    goto :goto_e9

    .line 1727
    :cond_101
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_17
.end method

.method private final a(CI)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x5c

    const/16 v3, 0x30

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x6

    .line 1568
    if-ltz p2, :cond_35

    .line 1569
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    if-lt v0, v4, :cond_1f

    .line 1570
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v0, v0, -0x2

    .line 1571
    iput v0, p0, Lorg/codehaus/jackson/a/o;->p:I

    .line 1572
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->o:[C

    add-int/lit8 v2, v0, 0x1

    aput-char v7, v1, v0

    .line 1573
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    int-to-char v1, p2

    aput-char v1, v0, v2

    .line 1646
    :goto_1e
    return-void

    .line 1577
    :cond_1f
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->s:[C

    .line 1578
    if-nez v0, :cond_27

    .line 1579
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->k()[C

    move-result-object v0

    .line 1581
    :cond_27
    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    iput v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    .line 1582
    const/4 v1, 0x1

    int-to-char v2, p2

    aput-char v2, v0, v1

    .line 1583
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/Writer;->write([CII)V

    goto :goto_1e

    .line 1586
    :cond_35
    const/4 v0, -0x2

    if-eq p2, v0, :cond_e8

    .line 1587
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    if-lt v0, v6, :cond_89

    .line 1588
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->o:[C

    .line 1589
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v0, v0, -0x6

    .line 1590
    iput v0, p0, Lorg/codehaus/jackson/a/o;->p:I

    .line 1591
    aput-char v7, v1, v0

    .line 1592
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    .line 1594
    const/16 v2, 0xff

    if-le p1, v2, :cond_80

    .line 1595
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 1596
    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lorg/codehaus/jackson/a/o;->g:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    aput-char v3, v1, v0

    .line 1597
    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lorg/codehaus/jackson/a/o;->g:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    aput-char v2, v1, v0

    .line 1598
    and-int/lit16 v2, p1, 0xff

    int-to-char p1, v2

    .line 1603
    :goto_6b
    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lorg/codehaus/jackson/a/o;->g:[C

    shr-int/lit8 v3, p1, 0x4

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 1604
    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lorg/codehaus/jackson/a/o;->g:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    goto :goto_1e

    .line 1600
    :cond_80
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 1601
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    goto :goto_6b

    .line 1608
    :cond_89
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->s:[C

    .line 1609
    if-nez v0, :cond_91

    .line 1610
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->k()[C

    move-result-object v0

    .line 1612
    :cond_91
    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    iput v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    .line 1613
    const/16 v1, 0xff

    if-le p1, v1, :cond_d0

    .line 1614
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    .line 1615
    and-int/lit16 v2, p1, 0xff

    .line 1616
    const/16 v3, 0xa

    sget-object v4, Lorg/codehaus/jackson/a/o;->g:[C

    shr-int/lit8 v5, v1, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    .line 1617
    const/16 v3, 0xb

    sget-object v4, Lorg/codehaus/jackson/a/o;->g:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v4, v1

    aput-char v1, v0, v3

    .line 1618
    const/16 v1, 0xc

    sget-object v3, Lorg/codehaus/jackson/a/o;->g:[C

    shr-int/lit8 v4, v2, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v1

    .line 1619
    const/16 v1, 0xd

    sget-object v3, Lorg/codehaus/jackson/a/o;->g:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v3, v2

    aput-char v2, v0, v1

    .line 1620
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    const/16 v2, 0x8

    invoke-virtual {v1, v0, v2, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_1e

    .line 1622
    :cond_d0
    sget-object v1, Lorg/codehaus/jackson/a/o;->g:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 1623
    const/4 v1, 0x7

    sget-object v2, Lorg/codehaus/jackson/a/o;->g:[C

    and-int/lit8 v3, p1, 0xf

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    .line 1624
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    invoke-virtual {v1, v0, v4, v6}, Ljava/io/Writer;->write([CII)V

    goto/16 :goto_1e

    .line 1630
    :cond_e8
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:Lorg/codehaus/jackson/e;

    if-nez v0, :cond_10a

    .line 1631
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->m:Lorg/codehaus/jackson/b/b;

    invoke-virtual {v0}, Lorg/codehaus/jackson/b/b;->b()Lorg/codehaus/jackson/e;

    move-result-object v0

    invoke-interface {v0}, Lorg/codehaus/jackson/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 1636
    :goto_f6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1637
    iget v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    if-lt v2, v1, :cond_114

    .line 1638
    iget v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    sub-int/2addr v2, v1

    .line 1639
    iput v2, p0, Lorg/codehaus/jackson/a/o;->p:I

    .line 1640
    iget-object v3, p0, Lorg/codehaus/jackson/a/o;->o:[C

    invoke-virtual {v0, v5, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto/16 :goto_1e

    .line 1633
    :cond_10a
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->n:Lorg/codehaus/jackson/e;

    invoke-interface {v0}, Lorg/codehaus/jackson/e;->a()Ljava/lang/String;

    move-result-object v0

    .line 1634
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/a/o;->n:Lorg/codehaus/jackson/e;

    goto :goto_f6

    .line 1644
    :cond_114
    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    iput v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    .line 1645
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1e
.end method

.method private final a(Ljava/lang/Object;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 780
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_b

    .line 781
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 783
    :cond_b
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    aput-char v3, v0, v1

    .line 784
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    .line 785
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_25

    .line 786
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 788
    :cond_25
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    aput-char v3, v0, v1

    .line 789
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 16
    .parameter

    .prologue
    .line 978
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 979
    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-le v0, v1, :cond_fc

    .line 980
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v0, 0x0

    move v6, v0

    :goto_11
    iget v3, p0, Lorg/codehaus/jackson/a/o;->r:I

    add-int v0, v6, v3

    if-le v0, v8, :cond_19

    sub-int v3, v8, v6

    :cond_19
    add-int v0, v6, v3

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->o:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v6, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->m:Lorg/codehaus/jackson/b/b;

    if-eqz v0, :cond_7e

    iget-object v9, p0, Lorg/codehaus/jackson/a/o;->k:[I

    iget v0, p0, Lorg/codehaus/jackson/a/o;->l:I

    if-gtz v0, :cond_65

    const v0, 0xffff

    move v7, v0

    :goto_2f
    array-length v0, v9

    iget v1, p0, Lorg/codehaus/jackson/a/o;->l:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget-object v11, p0, Lorg/codehaus/jackson/a/o;->m:Lorg/codehaus/jackson/b/b;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    move v2, v0

    move v0, v5

    :goto_3f
    if-ge v1, v3, :cond_f7

    :cond_41
    iget-object v4, p0, Lorg/codehaus/jackson/a/o;->o:[C

    aget-char v4, v4, v1

    if-ge v4, v10, :cond_69

    aget v5, v9, v4

    if-eqz v5, :cond_77

    :goto_4b
    sub-int v0, v1, v2

    if-lez v0, :cond_58

    iget-object v12, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    iget-object v13, p0, Lorg/codehaus/jackson/a/o;->o:[C

    invoke-virtual {v12, v13, v2, v0}, Ljava/io/Writer;->write([CII)V

    if-ge v1, v3, :cond_f7

    :cond_58
    add-int/lit8 v2, v1, 0x1

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->o:[C

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/o;->a([CIICI)I

    move-result v0

    move v1, v2

    move v2, v0

    move v0, v5

    goto :goto_3f

    :cond_65
    iget v0, p0, Lorg/codehaus/jackson/a/o;->l:I

    move v7, v0

    goto :goto_2f

    :cond_69
    if-le v4, v7, :cond_6d

    const/4 v5, -0x1

    goto :goto_4b

    :cond_6d
    invoke-virtual {v11}, Lorg/codehaus/jackson/b/b;->b()Lorg/codehaus/jackson/e;

    move-result-object v5

    iput-object v5, p0, Lorg/codehaus/jackson/a/o;->n:Lorg/codehaus/jackson/e;

    if-eqz v5, :cond_78

    const/4 v5, -0x2

    goto :goto_4b

    :cond_77
    move v0, v5

    :cond_78
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v3, :cond_41

    move v5, v0

    goto :goto_4b

    :cond_7e
    iget v0, p0, Lorg/codehaus/jackson/a/o;->l:I

    if-eqz v0, :cond_c5

    iget v7, p0, Lorg/codehaus/jackson/a/o;->l:I

    iget-object v9, p0, Lorg/codehaus/jackson/a/o;->k:[I

    array-length v0, v9

    iget v1, p0, Lorg/codehaus/jackson/a/o;->l:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    move v2, v0

    move v0, v5

    :goto_94
    if-ge v1, v3, :cond_f7

    :cond_96
    iget-object v4, p0, Lorg/codehaus/jackson/a/o;->o:[C

    aget-char v4, v4, v1

    if-ge v4, v10, :cond_ba

    aget v5, v9, v4

    if-eqz v5, :cond_be

    :goto_a0
    sub-int v0, v1, v2

    if-lez v0, :cond_ad

    iget-object v11, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    iget-object v12, p0, Lorg/codehaus/jackson/a/o;->o:[C

    invoke-virtual {v11, v12, v2, v0}, Ljava/io/Writer;->write([CII)V

    if-ge v1, v3, :cond_f7

    :cond_ad
    add-int/lit8 v2, v1, 0x1

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->o:[C

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/o;->a([CIICI)I

    move-result v0

    move v1, v2

    move v2, v0

    move v0, v5

    goto :goto_94

    :cond_ba
    if-le v4, v7, :cond_bf

    const/4 v5, -0x1

    goto :goto_a0

    :cond_be
    move v0, v5

    :cond_bf
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v3, :cond_96

    move v5, v0

    goto :goto_a0

    :cond_c5
    iget-object v7, p0, Lorg/codehaus/jackson/a/o;->k:[I

    array-length v9, v7

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    move v0, v2

    :goto_cc
    if-ge v0, v3, :cond_f7

    :cond_ce
    iget-object v2, p0, Lorg/codehaus/jackson/a/o;->o:[C

    aget-char v4, v2, v0

    if-ge v4, v9, :cond_d8

    aget v2, v7, v4

    if-nez v2, :cond_dc

    :cond_d8
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v3, :cond_ce

    :cond_dc
    sub-int v2, v0, v1

    if-lez v2, :cond_e9

    iget-object v5, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    iget-object v10, p0, Lorg/codehaus/jackson/a/o;->o:[C

    invoke-virtual {v5, v10, v1, v2}, Ljava/io/Writer;->write([CII)V

    if-ge v0, v3, :cond_f7

    :cond_e9
    add-int/lit8 v2, v0, 0x1

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->o:[C

    aget v5, v7, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/a/o;->a([CIICI)I

    move-result v0

    move v1, v0

    move v0, v2

    goto :goto_cc

    :cond_f7
    add-int v0, v6, v3

    if-lt v0, v8, :cond_1f7

    .line 998
    :cond_fb
    :goto_fb
    return-void

    .line 986
    :cond_fc
    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-le v1, v2, :cond_106

    .line 987
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 989
    :cond_106
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v3, p0, Lorg/codehaus/jackson/a/o;->q:I

    invoke-virtual {p1, v1, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 991
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->m:Lorg/codehaus/jackson/b/b;

    if-eqz v1, :cond_16c

    .line 992
    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int v2, v1, v0

    iget-object v3, p0, Lorg/codehaus/jackson/a/o;->k:[I

    iget v0, p0, Lorg/codehaus/jackson/a/o;->l:I

    if-gtz v0, :cond_152

    const v0, 0xffff

    :goto_11f
    array-length v1, v3

    add-int/lit8 v4, v0, 0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lorg/codehaus/jackson/a/o;->m:Lorg/codehaus/jackson/b/b;

    :goto_128
    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    if-ge v1, v2, :cond_fb

    :cond_12c
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v6, p0, Lorg/codehaus/jackson/a/o;->q:I

    aget-char v6, v1, v6

    if-ge v6, v4, :cond_155

    aget v1, v3, v6

    if-eqz v1, :cond_163

    :goto_138
    iget v7, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v8, p0, Lorg/codehaus/jackson/a/o;->p:I

    sub-int/2addr v7, v8

    if-lez v7, :cond_148

    iget-object v8, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    iget-object v9, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v10, p0, Lorg/codehaus/jackson/a/o;->p:I

    invoke-virtual {v8, v9, v10, v7}, Ljava/io/Writer;->write([CII)V

    :cond_148
    iget v7, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/codehaus/jackson/a/o;->q:I

    invoke-direct {p0, v6, v1}, Lorg/codehaus/jackson/a/o;->a(CI)V

    goto :goto_128

    :cond_152
    iget v0, p0, Lorg/codehaus/jackson/a/o;->l:I

    goto :goto_11f

    :cond_155
    if-le v6, v0, :cond_159

    const/4 v1, -0x1

    goto :goto_138

    :cond_159
    invoke-virtual {v5}, Lorg/codehaus/jackson/b/b;->b()Lorg/codehaus/jackson/e;

    move-result-object v1

    iput-object v1, p0, Lorg/codehaus/jackson/a/o;->n:Lorg/codehaus/jackson/e;

    if-eqz v1, :cond_163

    const/4 v1, -0x2

    goto :goto_138

    :cond_163
    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    if-lt v1, v2, :cond_12c

    goto :goto_fb

    .line 993
    :cond_16c
    iget v1, p0, Lorg/codehaus/jackson/a/o;->l:I

    if-eqz v1, :cond_1b8

    .line 994
    iget v1, p0, Lorg/codehaus/jackson/a/o;->l:I

    iget v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lorg/codehaus/jackson/a/o;->k:[I

    array-length v0, v3

    iget v4, p0, Lorg/codehaus/jackson/a/o;->l:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_180
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    if-ge v0, v2, :cond_fb

    :cond_184
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v5, p0, Lorg/codehaus/jackson/a/o;->q:I

    aget-char v5, v0, v5

    if-ge v5, v4, :cond_1aa

    aget v0, v3, v5

    if-eqz v0, :cond_1ae

    :goto_190
    iget v6, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v7, p0, Lorg/codehaus/jackson/a/o;->p:I

    sub-int/2addr v6, v7

    if-lez v6, :cond_1a0

    iget-object v7, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    iget-object v8, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v9, p0, Lorg/codehaus/jackson/a/o;->p:I

    invoke-virtual {v7, v8, v9, v6}, Ljava/io/Writer;->write([CII)V

    :cond_1a0
    iget v6, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/codehaus/jackson/a/o;->q:I

    invoke-direct {p0, v5, v0}, Lorg/codehaus/jackson/a/o;->a(CI)V

    goto :goto_180

    :cond_1aa
    if-le v5, v1, :cond_1ae

    const/4 v0, -0x1

    goto :goto_190

    :cond_1ae
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    if-lt v0, v2, :cond_184

    goto/16 :goto_fb

    .line 996
    :cond_1b8
    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->k:[I

    array-length v2, v1

    :goto_1be
    iget v3, p0, Lorg/codehaus/jackson/a/o;->q:I

    if-ge v3, v0, :cond_fb

    :goto_1c2
    iget-object v3, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v4, p0, Lorg/codehaus/jackson/a/o;->q:I

    aget-char v3, v3, v4

    if-ge v3, v2, :cond_1ce

    aget v3, v1, v3

    if-nez v3, :cond_1d7

    :cond_1ce
    iget v3, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/codehaus/jackson/a/o;->q:I

    if-ge v3, v0, :cond_fb

    goto :goto_1c2

    :cond_1d7
    iget v3, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v4, p0, Lorg/codehaus/jackson/a/o;->p:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_1e7

    iget-object v4, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    iget-object v5, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v6, p0, Lorg/codehaus/jackson/a/o;->p:I

    invoke-virtual {v4, v5, v6, v3}, Ljava/io/Writer;->write([CII)V

    :cond_1e7
    iget-object v3, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v4, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/codehaus/jackson/a/o;->q:I

    aget-char v3, v3, v4

    aget v4, v1, v3

    invoke-direct {p0, v3, v4}, Lorg/codehaus/jackson/a/o;->a(CI)V

    goto :goto_1be

    :cond_1f7
    move v6, v0

    goto/16 :goto_11
.end method

.method private final j()V
    .registers 5

    .prologue
    const/16 v3, 0x6c

    .line 1542
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_d

    .line 1543
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 1545
    :cond_d
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    .line 1546
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->o:[C

    .line 1547
    const/16 v2, 0x6e

    aput-char v2, v1, v0

    .line 1548
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    .line 1549
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 1550
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 1551
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    .line 1552
    return-void
.end method

.method private k()[C
    .registers 6

    .prologue
    const/16 v4, 0x75

    const/16 v3, 0x30

    const/16 v2, 0x5c

    .line 1791
    const/16 v0, 0xe

    new-array v0, v0, [C

    .line 1793
    const/4 v1, 0x0

    aput-char v2, v0, v1

    .line 1795
    const/4 v1, 0x2

    aput-char v2, v0, v1

    .line 1796
    const/4 v1, 0x3

    aput-char v4, v0, v1

    .line 1797
    const/4 v1, 0x4

    aput-char v3, v0, v1

    .line 1798
    const/4 v1, 0x5

    aput-char v3, v0, v1

    .line 1800
    const/16 v1, 0x8

    aput-char v2, v0, v1

    .line 1801
    const/16 v1, 0x9

    aput-char v4, v0, v1

    .line 1802
    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->s:[C

    .line 1803
    return-object v0
.end method

.method private l()V
    .registers 5

    .prologue
    .line 1808
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    sub-int/2addr v0, v1

    .line 1809
    if-lez v0, :cond_15

    .line 1810
    iget v1, p0, Lorg/codehaus/jackson/a/o;->p:I

    .line 1811
    const/4 v2, 0x0

    iput v2, p0, Lorg/codehaus/jackson/a/o;->p:I

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    .line 1812
    iget-object v2, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    iget-object v3, p0, Lorg/codehaus/jackson/a/o;->o:[C

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/Writer;->write([CII)V

    .line 1814
    :cond_15
    return-void
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/b/b;)Lorg/codehaus/jackson/JsonGenerator;
    .registers 3
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lorg/codehaus/jackson/a/o;->m:Lorg/codehaus/jackson/b/b;

    .line 156
    if-nez p1, :cond_9

    .line 157
    sget-object v0, Lorg/codehaus/jackson/a/o;->h:[I

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->k:[I

    .line 161
    :goto_8
    return-object p0

    .line 159
    :cond_9
    invoke-virtual {p1}, Lorg/codehaus/jackson/b/b;->a()[I

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->k:[I

    goto :goto_8
.end method

.method public final a(C)V
    .registers 5
    .parameter

    .prologue
    .line 590
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_9

    .line 591
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 593
    :cond_9
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    aput-char p1, v0, v1

    .line 594
    return-void
.end method

.method public final a(D)V
    .registers 4
    .parameter

    .prologue
    .line 723
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/o;->d:Z

    if-nez v0, :cond_18

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 727
    :cond_18
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->b(Ljava/lang/String;)V

    .line 733
    :goto_1f
    return-void

    .line 731
    :cond_20
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 732
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public final a(F)V
    .registers 3
    .parameter

    .prologue
    .line 739
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/o;->d:Z

    if-nez v0, :cond_18

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_10
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_NON_NUMERIC_NUMBERS:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 743
    :cond_18
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->b(Ljava/lang/String;)V

    .line 749
    :goto_1f
    return-void

    .line 747
    :cond_20
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 748
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public final a(I)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 656
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 658
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v0, v0, 0xb

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_12

    .line 659
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 661
    :cond_12
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/o;->d:Z

    if-eqz v0, :cond_40

    .line 662
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v0, v0, 0xd

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_21

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    :cond_21
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    aput-char v3, v0, v1

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/b/g;->a(I[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    aput-char v3, v0, v1

    .line 666
    :goto_3f
    return-void

    .line 665
    :cond_40
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    invoke-static {p1, v0, v1}, Lorg/codehaus/jackson/b/g;->a(I[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    goto :goto_3f
.end method

.method public final a(J)V
    .registers 7
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 681
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 682
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/o;->d:Z

    if-eqz v0, :cond_35

    .line 683
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v0, v0, 0x17

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_16

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    :cond_16
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    aput-char v3, v0, v1

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/b/g;->a(J[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    aput-char v3, v0, v1

    .line 691
    :goto_34
    return-void

    .line 686
    :cond_35
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v0, v0, 0x15

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_40

    .line 688
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 690
    :cond_40
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    invoke-static {p1, p2, v0, v1}, Lorg/codehaus/jackson/b/g;->a(J[CI)I

    move-result v0

    iput v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    goto :goto_34
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/16 v3, 0x22

    .line 193
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/a/i;->a(Ljava/lang/String;)I

    move-result v1

    .line 194
    const/4 v2, 0x4

    if-ne v1, v2, :cond_11

    .line 195
    const-string v2, "Can not write a field name, expecting a value"

    invoke-static {v2}, Lorg/codehaus/jackson/a/o;->e(Ljava/lang/String;)V

    .line 197
    :cond_11
    if-ne v1, v0, :cond_50

    :goto_13
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    if-eqz v1, :cond_5c

    if-eqz v0, :cond_52

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->c(Lorg/codehaus/jackson/JsonGenerator;)V

    :goto_1e
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_2f

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    :cond_2f
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/o;->f(Ljava/lang/String;)V

    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_45

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    :cond_45
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    aput-char v3, v0, v1

    .line 198
    :goto_4f
    return-void

    .line 197
    :cond_50
    const/4 v0, 0x0

    goto :goto_13

    :cond_52
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->h(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_1e

    :cond_58
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/o;->f(Ljava/lang/String;)V

    goto :goto_4f

    :cond_5c
    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v1, v2, :cond_67

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    :cond_67
    if-eqz v0, :cond_75

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    const/16 v2, 0x2c

    aput-char v2, v0, v1

    :cond_75
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->QUOTE_FIELD_NAMES:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-nez v0, :cond_81

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/o;->f(Ljava/lang/String;)V

    goto :goto_4f

    :cond_81
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    aput-char v3, v0, v1

    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/o;->f(Ljava/lang/String;)V

    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_97

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    :cond_97
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    aput-char v3, v0, v1

    goto :goto_4f
.end method

.method public final a(Ljava/math/BigDecimal;)V
    .registers 3
    .parameter

    .prologue
    .line 756
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 757
    if-nez p1, :cond_b

    .line 758
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 764
    :goto_a
    return-void

    .line 759
    :cond_b
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/o;->d:Z

    if-eqz v0, :cond_13

    .line 760
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/o;->a(Ljava/lang/Object;)V

    goto :goto_a

    .line 762
    :cond_13
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public final a(Ljava/math/BigInteger;)V
    .registers 3
    .parameter

    .prologue
    .line 708
    const-string v0, "write number"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 709
    if-nez p1, :cond_b

    .line 710
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 716
    :goto_a
    return-void

    .line 711
    :cond_b
    iget-boolean v0, p0, Lorg/codehaus/jackson/a/o;->d:Z

    if-eqz v0, :cond_13

    .line 712
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/o;->a(Ljava/lang/Object;)V

    goto :goto_a

    .line 714
    :cond_13
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->c(Ljava/lang/String;)V

    goto :goto_a
.end method

.method public final a(Z)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x65

    .line 795
    const-string v0, "write boolean value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 796
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v0, v0, 0x5

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_12

    .line 797
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 799
    :cond_12
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    .line 800
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->o:[C

    .line 801
    if-eqz p1, :cond_31

    .line 802
    const/16 v2, 0x74

    aput-char v2, v1, v0

    .line 803
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x72

    aput-char v2, v1, v0

    .line 804
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x75

    aput-char v2, v1, v0

    .line 805
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    .line 813
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    .line 814
    return-void

    .line 807
    :cond_31
    const/16 v2, 0x66

    aput-char v2, v1, v0

    .line 808
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x61

    aput-char v2, v1, v0

    .line 809
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x6c

    aput-char v2, v1, v0

    .line 810
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x73

    aput-char v2, v1, v0

    .line 811
    add-int/lit8 v0, v0, 0x1

    aput-char v3, v1, v0

    goto :goto_2c
.end method

.method public final a([CII)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 572
    const/16 v0, 0x20

    if-ge p3, v0, :cond_1c

    .line 573
    iget v0, p0, Lorg/codehaus/jackson/a/o;->r:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    sub-int/2addr v0, v1

    .line 574
    if-le p3, v0, :cond_f

    .line 575
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 577
    :cond_f
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    invoke-static {p1, v2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    .line 584
    :goto_1b
    return-void

    .line 582
    :cond_1c
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 583
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    invoke-virtual {v0, p1, v2, p3}, Ljava/io/Writer;->write([CII)V

    goto :goto_1b
.end method

.method public final b()V
    .registers 4

    .prologue
    .line 241
    const-string v0, "start an array"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->h()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    .line 243
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_17

    .line 244
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->e(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 251
    :goto_16
    return-void

    .line 246
    :cond_17
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_20

    .line 247
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 249
    :cond_20
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    const/16 v2, 0x5b

    aput-char v2, v0, v1

    goto :goto_16
.end method

.method public final b(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x22

    .line 439
    const-string v0, "write text value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 440
    if-nez p1, :cond_d

    .line 441
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 454
    :goto_c
    return-void

    .line 444
    :cond_d
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_16

    .line 445
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 447
    :cond_16
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    aput-char v3, v0, v1

    .line 448
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/a/o;->f(Ljava/lang/String;)V

    .line 450
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_2c

    .line 451
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 453
    :cond_2c
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    aput-char v3, v0, v1

    goto :goto_c
.end method

.method public final c()V
    .registers 4

    .prologue
    .line 256
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->a()Z

    move-result v0

    if-nez v0, :cond_20

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an ARRAY but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/a/o;->e(Ljava/lang/String;)V

    .line 259
    :cond_20
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_38

    .line 260
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/i;->e()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/d;->b(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 267
    :goto_2f
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->j()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    .line 268
    return-void

    .line 262
    :cond_38
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_41

    .line 263
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 265
    :cond_41
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    const/16 v2, 0x5d

    aput-char v2, v0, v1

    goto :goto_2f
.end method

.method public final c(Ljava/lang/String;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 531
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 532
    iget v0, p0, Lorg/codehaus/jackson/a/o;->r:I

    iget v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    sub-int/2addr v0, v2

    .line 534
    if-nez v0, :cond_14

    .line 535
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 536
    iget v0, p0, Lorg/codehaus/jackson/a/o;->r:I

    iget v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    sub-int/2addr v0, v2

    .line 539
    :cond_14
    if-lt v0, v1, :cond_23

    .line 540
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    invoke-virtual {p1, v5, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 541
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    .line 545
    :goto_22
    return-void

    .line 543
    :cond_23
    iget v0, p0, Lorg/codehaus/jackson/a/o;->r:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    invoke-virtual {p1, v5, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_3c
    iget v2, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-le v1, v2, :cond_53

    iget v2, p0, Lorg/codehaus/jackson/a/o;->r:I

    add-int v3, v0, v2

    iget-object v4, p0, Lorg/codehaus/jackson/a/o;->o:[C

    invoke-virtual {p1, v0, v3, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    iput v5, p0, Lorg/codehaus/jackson/a/o;->p:I

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    add-int/2addr v0, v2

    sub-int/2addr v1, v2

    goto :goto_3c

    :cond_53
    add-int v2, v0, v1

    iget-object v3, p0, Lorg/codehaus/jackson/a/o;->o:[C

    invoke-virtual {p1, v0, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    iput v5, p0, Lorg/codehaus/jackson/a/o;->p:I

    iput v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    goto :goto_22
.end method

.method public final close()V
    .registers 3

    .prologue
    .line 915
    invoke-super {p0}, Lorg/codehaus/jackson/a/d;->close()V

    .line 921
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    if-eqz v0, :cond_27

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_JSON_CONTENT:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 924
    :goto_f
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/o;->h()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    .line 925
    invoke-virtual {v0}, Lorg/codehaus/jackson/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 926
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/o;->c()V

    goto :goto_f

    .line 927
    :cond_1d
    invoke-virtual {v0}, Lorg/codehaus/jackson/b;->c()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 928
    invoke-virtual {p0}, Lorg/codehaus/jackson/a/o;->e()V

    goto :goto_f

    .line 934
    :cond_27
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 942
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    if-eqz v0, :cond_43

    .line 943
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->i:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v0}, Lorg/codehaus/jackson/b/c;->c()Z

    move-result v0

    if-nez v0, :cond_3e

    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 944
    :cond_3e
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 951
    :cond_43
    :goto_43
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    if-eqz v0, :cond_4f

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->i:Lorg/codehaus/jackson/b/c;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/b/c;->b([C)V

    .line 952
    :cond_4f
    return-void

    .line 945
    :cond_50
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 947
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_43
.end method

.method public final d()V
    .registers 4

    .prologue
    .line 273
    const-string v0, "start an object"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->i()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    .line 275
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_17

    .line 276
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->b(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 283
    :goto_16
    return-void

    .line 278
    :cond_17
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_20

    .line 279
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 281
    :cond_20
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    const/16 v2, 0x7b

    aput-char v2, v0, v1

    goto :goto_16
.end method

.method protected final d(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 834
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->k()I

    move-result v0

    .line 835
    const/4 v1, 0x5

    if-ne v0, v1, :cond_21

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", expecting field name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/codehaus/jackson/a/o;->e(Ljava/lang/String;)V

    .line 838
    :cond_21
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    if-nez v1, :cond_47

    .line 840
    packed-switch v0, :pswitch_data_7c

    .line 863
    :cond_28
    :goto_28
    return-void

    .line 842
    :pswitch_29
    const/16 v0, 0x2c

    .line 854
    :goto_2b
    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v2, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v1, v2, :cond_34

    .line 855
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 857
    :cond_34
    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    aput-char v0, v1, v2

    .line 858
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    goto :goto_28

    .line 845
    :pswitch_41
    const/16 v0, 0x3a

    .line 846
    goto :goto_2b

    .line 848
    :pswitch_44
    const/16 v0, 0x20

    .line 849
    goto :goto_2b

    .line 862
    :cond_47
    packed-switch v0, :pswitch_data_86

    invoke-static {}, Lorg/codehaus/jackson/a/o;->i()V

    goto :goto_28

    :pswitch_4e
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->f(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_28

    :pswitch_54
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->d(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_28

    :pswitch_5a
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_28

    :pswitch_60
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->a()Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->g(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_28

    :cond_6e
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->c()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    invoke-interface {v0, p0}, Lorg/codehaus/jackson/d;->h(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_28

    .line 840
    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_41
        :pswitch_44
    .end packed-switch

    .line 862
    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_60
        :pswitch_4e
        :pswitch_54
        :pswitch_5a
    .end packed-switch
.end method

.method public final e()V
    .registers 4

    .prologue
    .line 288
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->c()Z

    move-result v0

    if-nez v0, :cond_20

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current context not an object but "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/i;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codehaus/jackson/a/o;->e(Ljava/lang/String;)V

    .line 291
    :cond_20
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v0}, Lorg/codehaus/jackson/a/i;->j()Lorg/codehaus/jackson/a/i;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    .line 292
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    if-eqz v0, :cond_38

    .line 293
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->a:Lorg/codehaus/jackson/d;

    iget-object v1, p0, Lorg/codehaus/jackson/a/o;->e:Lorg/codehaus/jackson/a/i;

    invoke-virtual {v1}, Lorg/codehaus/jackson/a/i;->e()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lorg/codehaus/jackson/d;->a(Lorg/codehaus/jackson/JsonGenerator;I)V

    .line 300
    :goto_37
    return-void

    .line 295
    :cond_38
    iget v0, p0, Lorg/codehaus/jackson/a/o;->q:I

    iget v1, p0, Lorg/codehaus/jackson/a/o;->r:I

    if-lt v0, v1, :cond_41

    .line 296
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 298
    :cond_41
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->o:[C

    iget v1, p0, Lorg/codehaus/jackson/a/o;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/a/o;->q:I

    const/16 v2, 0x7d

    aput-char v2, v0, v1

    goto :goto_37
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 820
    const-string v0, "write null value"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->d(Ljava/lang/String;)V

    .line 821
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->j()V

    .line 822
    return-void
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 903
    invoke-direct {p0}, Lorg/codehaus/jackson/a/o;->l()V

    .line 904
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    if-eqz v0, :cond_14

    .line 905
    sget-object v0, Lorg/codehaus/jackson/JsonGenerator$Feature;->FLUSH_PASSED_TO_STREAM:Lorg/codehaus/jackson/JsonGenerator$Feature;

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/a/o;->a(Lorg/codehaus/jackson/JsonGenerator$Feature;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 906
    iget-object v0, p0, Lorg/codehaus/jackson/a/o;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 909
    :cond_14
    return-void
.end method
