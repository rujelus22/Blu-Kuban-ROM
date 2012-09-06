.class public final Ldbxyzptlk/l/i;
.super Ljava/io/FilterInputStream;
.source "panda.py"


# instance fields
.field private final a:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final b:Ldbxyzptlk/l/h;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/HttpResponse;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 513
    invoke-direct {p0, v1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 515
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 516
    if-nez v0, :cond_12

    .line 517
    new-instance v0, Ldbxyzptlk/m/a;

    const-string v1, "Didn\'t get entity from HttpResponse"

    invoke-direct {v0, v1}, Ldbxyzptlk/m/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_12
    :try_start_12
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/l/i;->in:Ljava/io/InputStream;
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_22

    .line 528
    iput-object p1, p0, Ldbxyzptlk/l/i;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 529
    new-instance v0, Ldbxyzptlk/l/h;

    invoke-direct {v0, p2, v1}, Ldbxyzptlk/l/h;-><init>(Lorg/apache/http/HttpResponse;Ldbxyzptlk/l/b;)V

    iput-object v0, p0, Ldbxyzptlk/l/i;->b:Ldbxyzptlk/l/h;

    .line 530
    return-void

    .line 524
    :catch_22
    move-exception v0

    .line 525
    new-instance v1, Ldbxyzptlk/m/b;

    invoke-direct {v1, v0}, Ldbxyzptlk/m/b;-><init>(Ljava/io/IOException;)V

    throw v1
.end method


# virtual methods
.method public final a()Ldbxyzptlk/l/h;
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Ldbxyzptlk/l/i;->b:Ldbxyzptlk/l/h;

    return-object v0
.end method

.method public final a(Ljava/io/OutputStream;Ldbxyzptlk/l/q;)V
    .registers 17
    .parameter
    .parameter

    .prologue
    .line 579
    const/4 v3, 0x0

    .line 580
    const/4 v2, 0x0

    .line 581
    const-wide/16 v4, 0x0

    .line 582
    iget-object v1, p0, Ldbxyzptlk/l/i;->b:Ldbxyzptlk/l/h;

    invoke-virtual {v1}, Ldbxyzptlk/l/h;->b()J

    move-result-wide v7

    .line 585
    :try_start_a
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_a5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_aa

    .line 587
    const/16 v1, 0x1000

    :try_start_11
    new-array v9, v1, [B

    move-wide v3, v4

    .line 590
    :goto_14
    invoke-virtual {p0, v9}, Ldbxyzptlk/l/i;->read([B)I

    move-result v1

    .line 591
    if-gez v1, :cond_51

    .line 592
    const-wide/16 v3, 0x0

    cmp-long v1, v7, v3

    if-ltz v1, :cond_70

    int-to-long v3, v2

    cmp-long v1, v3, v7

    if-gez v1, :cond_70

    .line 594
    new-instance v1, Ldbxyzptlk/m/e;

    invoke-direct {v1, v2}, Ldbxyzptlk/m/e;-><init>(I)V

    throw v1
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_a8
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2b} :catch_2b

    .line 623
    :catch_2b
    move-exception v1

    move-object v3, v6

    .line 624
    :goto_2d
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 625
    if-eqz v1, :cond_93

    const-string v4, "No space"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 628
    new-instance v1, Ldbxyzptlk/m/c;

    invoke-direct {v1}, Ldbxyzptlk/m/c;-><init>()V

    throw v1
    :try_end_41
    .catchall {:try_start_2d .. :try_end_41} :catchall_41

    .line 639
    :catchall_41
    move-exception v1

    move-object v6, v3

    :goto_43
    if-eqz v6, :cond_48

    .line 641
    :try_start_45
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_9f

    .line 644
    :cond_48
    :goto_48
    if-eqz p1, :cond_4d

    .line 646
    :try_start_4a
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_a1

    .line 652
    :cond_4d
    :goto_4d
    :try_start_4d
    invoke-virtual {p0}, Ldbxyzptlk/l/i;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_a3

    .line 653
    :goto_50
    throw v1

    .line 600
    :cond_51
    const/4 v5, 0x0

    :try_start_52
    invoke-virtual {v6, v9, v5, v1}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_a8
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_2b

    .line 602
    add-int v5, v2, v1

    .line 604
    if-eqz p2, :cond_b5

    .line 605
    :try_start_59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 606
    sub-long v10, v1, v3

    invoke-virtual/range {p2 .. p2}, Ldbxyzptlk/l/q;->a()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_b3

    .line 608
    int-to-long v3, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v7, v8}, Ldbxyzptlk/l/q;->a(JJ)V
    :try_end_6d
    .catchall {:try_start_59 .. :try_end_6d} :catchall_a8
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_6d} :catch_ac

    :goto_6d
    move-wide v3, v1

    move v2, v5

    .line 610
    goto :goto_14

    .line 613
    :cond_70
    :try_start_70
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 614
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_76
    .catchall {:try_start_70 .. :try_end_76} :catchall_a8
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_76} :catch_2b

    .line 617
    :try_start_76
    instance-of v1, p1, Ljava/io/FileOutputStream;

    if-eqz v1, :cond_85

    .line 618
    move-object v0, p1

    check-cast v0, Ljava/io/FileOutputStream;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_85
    .catchall {:try_start_76 .. :try_end_85} :catchall_a8
    .catch Ljava/io/SyncFailedException; {:try_start_76 .. :try_end_85} :catch_b1
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_85} :catch_2b

    .line 639
    :cond_85
    :goto_85
    if-eqz v6, :cond_8a

    .line 641
    :try_start_87
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_99

    .line 644
    :cond_8a
    :goto_8a
    if-eqz p1, :cond_8f

    .line 646
    :try_start_8c
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_9b

    .line 652
    :cond_8f
    :goto_8f
    :try_start_8f
    invoke-virtual {p0}, Ldbxyzptlk/l/i;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_9d

    .line 655
    :goto_92
    return-void

    .line 636
    :cond_93
    :try_start_93
    new-instance v1, Ldbxyzptlk/m/e;

    invoke-direct {v1, v2}, Ldbxyzptlk/m/e;-><init>(I)V

    throw v1
    :try_end_99
    .catchall {:try_start_93 .. :try_end_99} :catchall_41

    .line 642
    :catch_99
    move-exception v1

    goto :goto_8a

    .line 647
    :catch_9b
    move-exception v1

    goto :goto_8f

    .line 653
    :catch_9d
    move-exception v1

    goto :goto_92

    .line 642
    :catch_9f
    move-exception v2

    goto :goto_48

    .line 647
    :catch_a1
    move-exception v2

    goto :goto_4d

    .line 653
    :catch_a3
    move-exception v2

    goto :goto_50

    .line 639
    :catchall_a5
    move-exception v1

    move-object v6, v3

    goto :goto_43

    :catchall_a8
    move-exception v1

    goto :goto_43

    .line 623
    :catch_aa
    move-exception v1

    goto :goto_2d

    :catch_ac
    move-exception v1

    move v2, v5

    move-object v3, v6

    goto/16 :goto_2d

    .line 620
    :catch_b1
    move-exception v1

    goto :goto_85

    :cond_b3
    move-wide v1, v3

    goto :goto_6d

    :cond_b5
    move v2, v5

    goto/16 :goto_14
.end method

.method public final close()V
    .registers 2

    .prologue
    .line 543
    iget-object v0, p0, Ldbxyzptlk/l/i;->a:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 544
    return-void
.end method
