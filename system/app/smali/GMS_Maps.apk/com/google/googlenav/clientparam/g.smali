.class Lcom/google/googlenav/clientparam/g;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 538
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 539
    iput-object p1, p0, Lcom/google/googlenav/clientparam/g;->a:Ljava/lang/String;

    .line 540
    iput-boolean p2, p0, Lcom/google/googlenav/clientparam/g;->b:Z

    .line 541
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/clientparam/g;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 532
    iget-object v0, p0, Lcom/google/googlenav/clientparam/g;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 545
    const/16 v0, 0x4b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, -0x1

    .line 629
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 633
    const-class v2, Lcom/google/googlenav/clientparam/f;

    monitor-enter v2

    .line 635
    :try_start_b
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->h()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 637
    const/4 v0, 0x0

    :goto_15
    if-ge v0, v3, :cond_4a

    .line 638
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->h()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 641
    new-instance v5, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v6, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 642
    const/4 v6, 0x1

    const/4 v7, -0x1

    invoke-static {v4, v6, v7}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v6

    .line 644
    if-eq v6, v8, :cond_33

    .line 645
    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 647
    :cond_33
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 648
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v6

    .line 649
    const/4 v4, 0x2

    invoke-virtual {v5, v4, v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 651
    :cond_43
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 654
    :cond_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_b .. :try_end_4b} :catchall_54

    .line 656
    invoke-static {v1}, Lcom/google/googlenav/clientparam/f;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 658
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 659
    return-void

    .line 654
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 564
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 567
    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    .line 573
    const-class v5, Lcom/google/googlenav/clientparam/f;

    monitor-enter v5

    move v2, v0

    .line 574
    :goto_10
    if-ge v2, v4, :cond_2b

    .line 575
    const/4 v6, 0x1

    :try_start_13
    invoke-virtual {v3, v6, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 578
    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 579
    invoke-static {v6}, Lcom/google/googlenav/clientparam/f;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v7

    if-eqz v7, :cond_28

    .line 580
    invoke-static {v6}, Lcom/google/googlenav/clientparam/f;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    move v0, v1

    .line 574
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 585
    :cond_2b
    if-eqz v0, :cond_36

    .line 586
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->h()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    iget-object v3, p0, Lcom/google/googlenav/clientparam/g;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/googlenav/clientparam/f;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Z

    .line 588
    :cond_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_6d

    .line 590
    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/g;->b:Z

    if-nez v0, :cond_4c

    .line 591
    :cond_3d
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->i()Lcom/google/googlenav/clientparam/i;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_4c

    invoke-static {}, Lcom/google/googlenav/clientparam/f;->j()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 593
    invoke-interface {v0}, Lcom/google/googlenav/clientparam/i;->a()V

    .line 598
    :cond_4c
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->j()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 599
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->k()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 600
    const/4 v0, 0x0

    :try_start_58
    invoke-static {v0}, Lcom/google/googlenav/clientparam/f;->a(Z)Z

    .line 601
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->l()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 604
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 606
    iget-object v3, p0, Lcom/google/googlenav/clientparam/g;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/google/googlenav/clientparam/f;->a(Lac/h;Ljava/lang/String;Z)V

    .line 619
    :goto_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_58 .. :try_end_6c} :catchall_8e

    .line 621
    :cond_6c
    return v1

    .line 588
    :catchall_6d
    move-exception v0

    :try_start_6e
    monitor-exit v5
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v0

    .line 609
    :cond_70
    :try_start_70
    new-instance v0, Lcom/google/googlenav/clientparam/h;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/google/googlenav/clientparam/h;-><init>(Lcom/google/googlenav/clientparam/g;LY/c;)V

    invoke-static {v0}, Lcom/google/googlenav/clientparam/f;->a(LY/d;)LY/d;

    .line 616
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->m()LY/d;

    move-result-object v0

    const-wide/32 v3, 0xa4cb80

    invoke-virtual {v0, v3, v4}, LY/d;->a(J)V

    .line 617
    invoke-static {}, Lcom/google/googlenav/clientparam/f;->m()LY/d;

    move-result-object v0

    invoke-virtual {v0}, LY/d;->g()V

    goto :goto_6b

    .line 619
    :catchall_8e
    move-exception v0

    monitor-exit v2
    :try_end_90
    .catchall {:try_start_70 .. :try_end_90} :catchall_8e

    throw v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 555
    const/4 v0, 0x0

    return v0
.end method
