.class final Ldbxyzptlk/g/e;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/g/f;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ldbxyzptlk/g/a;

.field private b:Ljava/net/Socket;

.field private c:Z

.field private d:Z

.field private final e:[Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ldbxyzptlk/g/a;Ljava/net/Socket;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 542
    iput-object p1, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    new-array v0, v1, [Ljava/lang/Object;

    iput-object v0, p0, Ldbxyzptlk/g/e;->e:[Ljava/lang/Object;

    .line 543
    iput-object p2, p0, Ldbxyzptlk/g/e;->b:Ljava/net/Socket;

    .line 544
    iput-boolean v1, p0, Ldbxyzptlk/g/e;->c:Z

    .line 545
    iput-boolean v1, p0, Ldbxyzptlk/g/e;->d:Z

    .line 546
    return-void
.end method

.method private a(I)Landroid/view/View;
    .registers 5
    .parameter

    .prologue
    .line 663
    const/4 v0, -0x1

    if-ne p1, v0, :cond_33

    .line 665
    iget-object v0, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v0}, Ldbxyzptlk/g/a;->a(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 667
    :try_start_10
    iget-object v0, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v0}, Ldbxyzptlk/g/a;->b(Ldbxyzptlk/g/a;)Landroid/view/View;
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_24

    move-result-object v0

    .line 669
    iget-object v1, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v1}, Ldbxyzptlk/g/a;->a(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 686
    :goto_23
    return-object v0

    .line 669
    :catchall_24
    move-exception v0

    iget-object v1, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v1}, Ldbxyzptlk/g/a;->a(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0

    .line 675
    :cond_33
    iget-object v0, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v0}, Ldbxyzptlk/g/a;->a(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 677
    :try_start_40
    iget-object v0, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v0}, Ldbxyzptlk/g/a;->c(Ldbxyzptlk/g/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 678
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    if-ne v2, p1, :cond_4e

    .line 679
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_6a
    .catchall {:try_start_40 .. :try_end_6a} :catchall_87

    .line 683
    iget-object v1, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v1}, Ldbxyzptlk/g/a;->a(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_23

    :cond_78
    iget-object v0, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v0}, Ldbxyzptlk/g/a;->a(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 686
    const/4 v0, 0x0

    goto :goto_23

    .line 683
    :catchall_87
    move-exception v0

    iget-object v1, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v1}, Ldbxyzptlk/g/a;->a(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method private a(Ljava/net/Socket;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 690
    const/4 v1, 0x1

    .line 691
    const/4 v0, 0x0

    .line 694
    :try_start_3
    iget-object v3, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v3}, Ldbxyzptlk/g/a;->a(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 696
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 697
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v3, v5, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_95
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_20} :catch_af

    .line 699
    :try_start_20
    iget-object v0, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v0}, Ldbxyzptlk/g/a;->c(Ldbxyzptlk/g/a;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 700
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 701
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Ljava/io/BufferedWriter;->write(I)V

    .line 702
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 703
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V
    :try_end_5c
    .catchall {:try_start_20 .. :try_end_5c} :catchall_ad
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5c} :catch_5d

    goto :goto_2e

    .line 708
    :catch_5d
    move-exception v0

    move-object v0, v3

    .line 711
    :goto_5f
    iget-object v1, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v1}, Ldbxyzptlk/g/a;->a(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 713
    if-eqz v0, :cond_b1

    .line 715
    :try_start_6e
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_92

    move v0, v2

    .line 722
    :goto_72
    return v0

    .line 706
    :cond_73
    :try_start_73
    const-string v0, "DONE.\n"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 707
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_ad
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7b} :catch_5d

    .line 711
    iget-object v0, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v0}, Ldbxyzptlk/g/a;->a(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 713
    if-eqz v3, :cond_b3

    .line 715
    :try_start_8a
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8f

    move v0, v1

    .line 718
    goto :goto_72

    .line 716
    :catch_8f
    move-exception v0

    move v0, v2

    .line 718
    goto :goto_72

    .line 716
    :catch_92
    move-exception v0

    move v0, v2

    .line 718
    goto :goto_72

    .line 711
    :catchall_95
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_98
    iget-object v1, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v1}, Ldbxyzptlk/g/a;->a(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 713
    if-eqz v3, :cond_aa

    .line 715
    :try_start_a7
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_aa} :catch_ab

    .line 718
    :cond_aa
    :goto_aa
    throw v0

    .line 716
    :catch_ab
    move-exception v1

    goto :goto_aa

    .line 711
    :catchall_ad
    move-exception v0

    goto :goto_98

    .line 708
    :catch_af
    move-exception v1

    goto :goto_5f

    :cond_b1
    move v0, v2

    goto :goto_72

    :cond_b3
    move v0, v1

    goto :goto_72
.end method

.method private a(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 608
    .line 609
    const/4 v2, 0x0

    .line 613
    const/16 v3, 0x20

    :try_start_5
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 614
    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    .line 615
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    .line 617
    :cond_10
    const/4 v4, 0x0

    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 618
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    long-to-int v4, v4

    .line 621
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_34

    .line 622
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 627
    :goto_28
    invoke-direct {p0, v4}, Ldbxyzptlk/g/e;->a(I)Landroid/view/View;
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_c9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2b} :catch_9c

    move-result-object v3

    .line 628
    if-nez v3, :cond_37

    .line 650
    if-eqz v2, :cond_33

    .line 652
    :try_start_30
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_d0

    .line 659
    :cond_33
    :goto_33
    return v1

    .line 624
    :cond_34
    :try_start_34
    const-string p3, ""

    goto :goto_28

    .line 633
    :cond_37
    const-class v4, Landroid/view/ViewDebug;

    const-string v5, "dispatchCommand"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/view/View;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, Ljava/io/OutputStream;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 635
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 636
    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object p2, v6, v3

    const/4 v3, 0x2

    aput-object p3, v6, v3

    const/4 v3, 0x3

    new-instance v7, Ldbxyzptlk/g/d;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ldbxyzptlk/g/d;-><init>(Ljava/io/OutputStream;)V

    aput-object v7, v6, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    invoke-virtual {p1}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v3

    if-nez v3, :cond_dd

    .line 640
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_8a
    .catchall {:try_start_34 .. :try_end_8a} :catchall_c9
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_8a} :catch_9c

    .line 641
    :try_start_8a
    const-string v2, "DONE\n"

    invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_d5
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_92} :catch_d8

    .line 650
    :goto_92
    if-eqz v3, :cond_97

    .line 652
    :try_start_94
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_99

    :cond_97
    :goto_97
    move v1, v0

    .line 659
    goto :goto_33

    .line 653
    :catch_99
    move-exception v0

    move v0, v1

    .line 655
    goto :goto_97

    .line 645
    :catch_9c
    move-exception v0

    .line 646
    :goto_9d
    :try_start_9d
    const-string v3, "LocalViewServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not send command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with parameters "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bf
    .catchall {:try_start_9d .. :try_end_bf} :catchall_c9

    .line 650
    if-eqz v2, :cond_db

    .line 652
    :try_start_c1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c6

    move v0, v1

    .line 655
    goto :goto_97

    .line 653
    :catch_c6
    move-exception v0

    move v0, v1

    .line 655
    goto :goto_97

    .line 650
    :catchall_c9
    move-exception v0

    :goto_ca
    if-eqz v2, :cond_cf

    .line 652
    :try_start_cc
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d3

    .line 655
    :cond_cf
    :goto_cf
    throw v0

    .line 653
    :catch_d0
    move-exception v0

    goto/16 :goto_33

    :catch_d3
    move-exception v1

    goto :goto_cf

    .line 650
    :catchall_d5
    move-exception v0

    move-object v2, v3

    goto :goto_ca

    .line 645
    :catch_d8
    move-exception v0

    move-object v2, v3

    goto :goto_9d

    :cond_db
    move v0, v1

    goto :goto_97

    :cond_dd
    move-object v3, v2

    goto :goto_92
.end method

.method private b(Ljava/net/Socket;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 726
    const/4 v1, 0x1

    .line 729
    const/4 v0, 0x0

    .line 731
    :try_start_3
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 732
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v3, v5, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_b9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_bd

    .line 736
    :try_start_13
    iget-object v0, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v0}, Ldbxyzptlk/g/a;->d(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_aa
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_92

    .line 738
    :try_start_20
    iget-object v0, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v0}, Ldbxyzptlk/g/a;->b(Ldbxyzptlk/g/a;)Landroid/view/View;
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_83

    move-result-object v4

    .line 740
    :try_start_26
    iget-object v0, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v0}, Ldbxyzptlk/g/a;->d(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 743
    if-eqz v4, :cond_74

    .line 744
    iget-object v0, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v0}, Ldbxyzptlk/g/a;->a(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_42
    .catchall {:try_start_26 .. :try_end_42} :catchall_aa
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_42} :catch_92

    .line 746
    :try_start_42
    iget-object v0, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v0}, Ldbxyzptlk/g/a;->c(Ldbxyzptlk/g/a;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v5, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v5}, Ldbxyzptlk/g/a;->b(Ldbxyzptlk/g/a;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_42 .. :try_end_54} :catchall_9b

    .line 748
    :try_start_54
    iget-object v5, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v5}, Ldbxyzptlk/g/a;->a(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 751
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 752
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(I)V

    .line 753
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 755
    :cond_74
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(I)V

    .line 756
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_7c
    .catchall {:try_start_54 .. :try_end_7c} :catchall_aa
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_7c} :catch_92

    .line 760
    if-eqz v3, :cond_c1

    .line 762
    :try_start_7e
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_b1

    move v0, v1

    .line 769
    :goto_82
    return v0

    .line 740
    :catchall_83
    move-exception v0

    :try_start_84
    iget-object v1, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v1}, Ldbxyzptlk/g/a;->d(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
    :try_end_92
    .catchall {:try_start_84 .. :try_end_92} :catchall_aa
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_92} :catch_92

    .line 757
    :catch_92
    move-exception v0

    move-object v0, v3

    .line 760
    :goto_94
    if-eqz v0, :cond_bf

    .line 762
    :try_start_96
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_b4

    move v0, v2

    .line 765
    goto :goto_82

    .line 748
    :catchall_9b
    move-exception v0

    :try_start_9c
    iget-object v1, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v1}, Ldbxyzptlk/g/a;->a(Ldbxyzptlk/g/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
    :try_end_aa
    .catchall {:try_start_9c .. :try_end_aa} :catchall_aa
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_aa} :catch_92

    .line 760
    :catchall_aa
    move-exception v0

    :goto_ab
    if-eqz v3, :cond_b0

    .line 762
    :try_start_ad
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b7

    .line 765
    :cond_b0
    :goto_b0
    throw v0

    .line 763
    :catch_b1
    move-exception v0

    move v0, v2

    .line 765
    goto :goto_82

    .line 763
    :catch_b4
    move-exception v0

    move v0, v2

    .line 765
    goto :goto_82

    .line 763
    :catch_b7
    move-exception v1

    goto :goto_b0

    .line 760
    :catchall_b9
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_ab

    .line 757
    :catch_bd
    move-exception v1

    goto :goto_94

    :cond_bf
    move v0, v2

    goto :goto_82

    :cond_c1
    move v0, v1

    goto :goto_82
.end method

.method private c()Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 789
    iget-object v0, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v0, p0}, Ldbxyzptlk/g/a;->a(Ldbxyzptlk/g/a;Ldbxyzptlk/g/f;)V

    .line 790
    const/4 v2, 0x0

    .line 792
    :try_start_8
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v5, p0, Ldbxyzptlk/g/e;->b:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_88
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_8b

    .line 793
    :cond_18
    :goto_18
    :try_start_18
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_77

    .line 796
    iget-object v5, p0, Ldbxyzptlk/g/e;->e:[Ljava/lang/Object;

    monitor-enter v5
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_21} :catch_32

    .line 797
    :goto_21
    :try_start_21
    iget-boolean v0, p0, Ldbxyzptlk/g/e;->c:Z

    if-nez v0, :cond_45

    iget-boolean v0, p0, Ldbxyzptlk/g/e;->d:Z

    if-nez v0, :cond_45

    .line 798
    iget-object v0, p0, Ldbxyzptlk/g/e;->e:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_21

    .line 808
    :catchall_2f
    move-exception v0

    monitor-exit v5
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_2f

    :try_start_31
    throw v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_32} :catch_32

    .line 818
    :catch_32
    move-exception v0

    .line 819
    :goto_33
    :try_start_33
    const-string v2, "LocalViewServer"

    const-string v4, "Connection error: "

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_6b

    .line 821
    if-eqz v1, :cond_3f

    .line 823
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_84

    .line 828
    :cond_3f
    :goto_3f
    iget-object v0, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v0, p0}, Ldbxyzptlk/g/a;->b(Ldbxyzptlk/g/a;Ldbxyzptlk/g/f;)V

    .line 830
    :goto_44
    return v3

    .line 800
    :cond_45
    :try_start_45
    iget-boolean v0, p0, Ldbxyzptlk/g/e;->c:Z

    if-eqz v0, :cond_90

    .line 801
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldbxyzptlk/g/e;->c:Z

    move v2, v3

    .line 804
    :goto_4d
    iget-boolean v0, p0, Ldbxyzptlk/g/e;->d:Z

    if-eqz v0, :cond_8e

    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldbxyzptlk/g/e;->d:Z

    move v0, v3

    .line 808
    :goto_55
    monitor-exit v5
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_2f

    .line 809
    if-eqz v2, :cond_60

    .line 810
    :try_start_58
    const-string v2, "LIST UPDATE\n"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 813
    :cond_60
    if-eqz v0, :cond_18

    .line 814
    const-string v0, "FOCUS UPDATE\n"

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 815
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_6a
    .catchall {:try_start_58 .. :try_end_6a} :catchall_6b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6a} :catch_32

    goto :goto_18

    .line 821
    :catchall_6b
    move-exception v0

    :goto_6c
    if-eqz v1, :cond_71

    .line 823
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_86

    .line 828
    :cond_71
    :goto_71
    iget-object v1, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v1, p0}, Ldbxyzptlk/g/a;->b(Ldbxyzptlk/g/a;Ldbxyzptlk/g/f;)V

    throw v0

    .line 821
    :cond_77
    if-eqz v1, :cond_7c

    .line 823
    :try_start_79
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_82

    .line 828
    :cond_7c
    :goto_7c
    iget-object v0, p0, Ldbxyzptlk/g/e;->a:Ldbxyzptlk/g/a;

    invoke-static {v0, p0}, Ldbxyzptlk/g/a;->b(Ldbxyzptlk/g/a;Ldbxyzptlk/g/f;)V

    goto :goto_44

    .line 824
    :catch_82
    move-exception v0

    goto :goto_7c

    :catch_84
    move-exception v0

    goto :goto_3f

    :catch_86
    move-exception v1

    goto :goto_71

    .line 821
    :catchall_88
    move-exception v0

    move-object v1, v2

    goto :goto_6c

    .line 818
    :catch_8b
    move-exception v0

    move-object v1, v2

    goto :goto_33

    :cond_8e
    move v0, v4

    goto :goto_55

    :cond_90
    move v2, v4

    goto :goto_4d
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 774
    iget-object v1, p0, Ldbxyzptlk/g/e;->e:[Ljava/lang/Object;

    monitor-enter v1

    .line 775
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Ldbxyzptlk/g/e;->c:Z

    .line 776
    iget-object v0, p0, Ldbxyzptlk/g/e;->e:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 777
    monitor-exit v1

    .line 778
    return-void

    .line 777
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 782
    iget-object v1, p0, Ldbxyzptlk/g/e;->e:[Ljava/lang/Object;

    monitor-enter v1

    .line 783
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Ldbxyzptlk/g/e;->d:Z

    .line 784
    iget-object v0, p0, Ldbxyzptlk/g/e;->e:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 785
    monitor-exit v1

    .line 786
    return-void

    .line 785
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public final run()V
    .registers 6

    .prologue
    .line 550
    const/4 v2, 0x0

    .line 552
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v3, p0, Ldbxyzptlk/g/e;->b:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v1, v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_d7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_b5

    .line 554
    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 559
    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 560
    const/4 v3, -0x1

    if-ne v0, v3, :cond_5b

    .line 562
    const-string v0, ""

    .line 569
    :goto_22
    const-string v3, "PROTOCOL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 570
    iget-object v0, p0, Ldbxyzptlk/g/e;->b:Ljava/net/Socket;

    const-string v3, "4"

    invoke-static {v0, v3}, Ldbxyzptlk/g/a;->a(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    .line 583
    :goto_32
    if-nez v0, :cond_4c

    .line 584
    const-string v0, "LocalViewServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error occurred with the command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_13 .. :try_end_4c} :catchall_f2
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_4c} :catch_f4

    .line 589
    :cond_4c
    if-eqz v1, :cond_51

    .line 591
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_ab

    .line 597
    :cond_51
    :goto_51
    iget-object v0, p0, Ldbxyzptlk/g/e;->b:Ljava/net/Socket;

    if-eqz v0, :cond_5a

    .line 599
    :try_start_55
    iget-object v0, p0, Ldbxyzptlk/g/e;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5a} :catch_b0

    .line 605
    :cond_5a
    :goto_5a
    return-void

    .line 564
    :cond_5b
    const/4 v3, 0x0

    :try_start_5c
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 565
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v3

    goto :goto_22

    .line 571
    :cond_68
    const-string v3, "SERVER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 572
    iget-object v0, p0, Ldbxyzptlk/g/e;->b:Ljava/net/Socket;

    const-string v3, "4"

    invoke-static {v0, v3}, Ldbxyzptlk/g/a;->a(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    goto :goto_32

    .line 573
    :cond_79
    const-string v3, "LIST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 574
    iget-object v0, p0, Ldbxyzptlk/g/e;->b:Ljava/net/Socket;

    invoke-direct {p0, v0}, Ldbxyzptlk/g/e;->a(Ljava/net/Socket;)Z

    move-result v0

    goto :goto_32

    .line 575
    :cond_88
    const-string v3, "GET_FOCUS"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 576
    iget-object v0, p0, Ldbxyzptlk/g/e;->b:Ljava/net/Socket;

    invoke-direct {p0, v0}, Ldbxyzptlk/g/e;->b(Ljava/net/Socket;)Z

    move-result v0

    goto :goto_32

    .line 577
    :cond_97
    const-string v3, "AUTOLIST"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a4

    .line 578
    invoke-direct {p0}, Ldbxyzptlk/g/e;->c()Z

    move-result v0

    goto :goto_32

    .line 580
    :cond_a4
    iget-object v3, p0, Ldbxyzptlk/g/e;->b:Ljava/net/Socket;

    invoke-direct {p0, v3, v2, v0}, Ldbxyzptlk/g/e;->a(Ljava/net/Socket;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_a9
    .catchall {:try_start_5c .. :try_end_a9} :catchall_f2
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_a9} :catch_f4

    move-result v0

    goto :goto_32

    .line 593
    :catch_ab
    move-exception v0

    .line 594
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_51

    .line 600
    :catch_b0
    move-exception v0

    .line 601
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a

    .line 586
    :catch_b5
    move-exception v0

    move-object v1, v2

    .line 587
    :goto_b7
    :try_start_b7
    const-string v2, "LocalViewServer"

    const-string v3, "Connection error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_be
    .catchall {:try_start_b7 .. :try_end_be} :catchall_f2

    .line 589
    if-eqz v1, :cond_c3

    .line 591
    :try_start_c0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_d2

    .line 597
    :cond_c3
    :goto_c3
    iget-object v0, p0, Ldbxyzptlk/g/e;->b:Ljava/net/Socket;

    if-eqz v0, :cond_5a

    .line 599
    :try_start_c7
    iget-object v0, p0, Ldbxyzptlk/g/e;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_cc
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_cc} :catch_cd

    goto :goto_5a

    .line 600
    :catch_cd
    move-exception v0

    .line 601
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5a

    .line 593
    :catch_d2
    move-exception v0

    .line 594
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c3

    .line 589
    :catchall_d7
    move-exception v0

    move-object v1, v2

    :goto_d9
    if-eqz v1, :cond_de

    .line 591
    :try_start_db
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_db .. :try_end_de} :catch_e8

    .line 597
    :cond_de
    :goto_de
    iget-object v1, p0, Ldbxyzptlk/g/e;->b:Ljava/net/Socket;

    if-eqz v1, :cond_e7

    .line 599
    :try_start_e2
    iget-object v1, p0, Ldbxyzptlk/g/e;->b:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e7} :catch_ed

    .line 602
    :cond_e7
    :goto_e7
    throw v0

    .line 593
    :catch_e8
    move-exception v1

    .line 594
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_de

    .line 600
    :catch_ed
    move-exception v1

    .line 601
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e7

    .line 589
    :catchall_f2
    move-exception v0

    goto :goto_d9

    .line 586
    :catch_f4
    move-exception v0

    goto :goto_b7
.end method
