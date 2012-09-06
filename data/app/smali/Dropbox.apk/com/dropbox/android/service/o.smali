.class Lcom/dropbox/android/service/o;
.super Lcom/dropbox/android/service/g;
.source "panda.py"


# instance fields
.field final synthetic b:Lcom/dropbox/android/service/CameraUploadService;

.field private final c:Ljava/util/HashSet;

.field private d:J


# direct methods
.method public constructor <init>(Lcom/dropbox/android/service/CameraUploadService;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/dropbox/android/service/g;-><init>(Lcom/dropbox/android/service/CameraUploadService;I)V

    .line 517
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/service/o;->c:Ljava/util/HashSet;

    .line 518
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/android/service/o;->d:J

    .line 525
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;
    .registers 10
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 867
    const-string v1, "camera_upload"

    sget-object v2, Lcom/dropbox/android/service/j;->a:[Ljava/lang/String;

    const-string v3, "local_hash IS NOT NULL"

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 870
    :try_start_f
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 871
    :goto_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 872
    new-instance v2, Lcom/dropbox/android/service/j;

    invoke-direct {v2, v1}, Lcom/dropbox/android/service/j;-><init>(Landroid/database/Cursor;)V

    .line 873
    invoke-static {v2}, Lcom/dropbox/android/service/j;->e(Lcom/dropbox/android/service/j;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_2b

    goto :goto_18

    .line 876
    :catchall_2b
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 878
    return-object v0
.end method


# virtual methods
.method protected final a()V
    .registers 42

    .prologue
    .line 534
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 535
    invoke-static {}, Lcom/dropbox/android/service/CameraUploadService;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Starting camera upload scan..."

    invoke-static {v2, v3}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-class v17, Lcom/dropbox/android/service/o;

    monitor-enter v17

    .line 538
    :try_start_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v2}, Lcom/dropbox/android/service/CameraUploadService;->c(Lcom/dropbox/android/service/CameraUploadService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_63

    .line 539
    const-wide/16 v4, 0x0

    .line 540
    :try_start_1f
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/dropbox/android/service/o;->d:J

    const-wide/16 v7, 0xbb8

    add-long/2addr v2, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_86

    move-result-wide v7

    sub-long/2addr v2, v7

    .line 541
    :goto_2b
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_5a

    const-wide/32 v7, 0xea60

    cmp-long v7, v4, v7

    if-gez v7, :cond_5a

    .line 547
    :try_start_38
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v7}, Lcom/dropbox/android/service/CameraUploadService;->c(Lcom/dropbox/android/service/CameraUploadService;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_43
    .catchall {:try_start_38 .. :try_end_43} :catchall_86
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_43} :catch_386

    .line 553
    :goto_43
    :try_start_43
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/service/o;->b()Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 554
    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_43 .. :try_end_4a} :catchall_86

    :try_start_4a
    monitor-exit v17
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_63

    .line 863
    :goto_4b
    return-void

    .line 557
    :cond_4c
    add-long/2addr v4, v2

    .line 558
    :try_start_4d
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/dropbox/android/service/o;->d:J

    const-wide/16 v7, 0xbb8

    add-long/2addr v2, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v2, v7

    goto :goto_2b

    .line 563
    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/service/o;->b()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 564
    monitor-exit v6
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_86

    :try_start_61
    monitor-exit v17

    goto :goto_4b

    .line 862
    :catchall_63
    move-exception v2

    monitor-exit v17
    :try_end_65
    .catchall {:try_start_61 .. :try_end_65} :catchall_63

    throw v2

    .line 567
    :cond_66
    :try_start_66
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/dropbox/android/service/CameraUploadService;->a(Lcom/dropbox/android/service/CameraUploadService;Lcom/dropbox/android/service/o;)Lcom/dropbox/android/service/o;

    .line 568
    monitor-exit v6
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_86

    .line 570
    :try_start_6f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 572
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v20

    .line 575
    invoke-virtual/range {v20 .. v20}, Ldbxyzptlk/j/m;->f()Z

    move-result v2

    if-nez v2, :cond_89

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-virtual {v2}, Lcom/dropbox/android/service/CameraUploadService;->stopSelf()V

    .line 577
    monitor-exit v17
    :try_end_85
    .catchall {:try_start_6f .. :try_end_85} :catchall_63

    goto :goto_4b

    .line 568
    :catchall_86
    move-exception v2

    :try_start_87
    monitor-exit v6
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    :try_start_88
    throw v2

    .line 581
    :cond_89
    invoke-virtual/range {v20 .. v20}, Ldbxyzptlk/j/m;->r()Z

    move-result v21

    .line 582
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v2}, Lcom/dropbox/android/service/CameraUploadService;->a(Lcom/dropbox/android/service/CameraUploadService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v2

    .line 587
    invoke-virtual/range {v20 .. v20}, Ldbxyzptlk/j/m;->i()Ldbxyzptlk/j/p;

    move-result-object v3

    sget-object v4, Ldbxyzptlk/j/p;->c:Ldbxyzptlk/j/p;

    if-eq v3, v4, :cond_bd

    invoke-virtual/range {v20 .. v20}, Ldbxyzptlk/j/m;->o()Z

    move-result v3

    if-nez v3, :cond_bd

    invoke-virtual/range {v20 .. v20}, Ldbxyzptlk/j/m;->h()Z

    move-result v3

    if-eqz v3, :cond_392

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v3}, Lcom/dropbox/android/service/CameraUploadService;->d(Lcom/dropbox/android/service/CameraUploadService;)Z

    move-result v3

    if-nez v3, :cond_392

    .line 592
    :cond_bd
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/filemanager/v;->n()V

    .line 593
    const/4 v2, 0x1

    move/from16 v16, v2

    .line 597
    :goto_c7
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v2

    .line 598
    invoke-virtual {v2}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 607
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/filemanager/v;->k()Lcom/dropbox/android/taskqueue/G;

    move-result-object v3

    .line 608
    invoke-virtual/range {v20 .. v20}, Ldbxyzptlk/j/m;->i()Ldbxyzptlk/j/p;

    move-result-object v4

    sget-object v5, Ldbxyzptlk/j/p;->a:Ldbxyzptlk/j/p;

    if-eq v4, v5, :cond_113

    .line 609
    invoke-virtual {v3}, Lcom/dropbox/android/taskqueue/G;->c()V

    .line 611
    invoke-static {v2}, Lcom/dropbox/android/service/CameraUploadService;->a(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4

    if-eqz v4, :cond_1f6

    .line 612
    sget-object v4, Ldbxyzptlk/j/p;->a:Ldbxyzptlk/j/p;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ldbxyzptlk/j/m;->a(Ldbxyzptlk/j/p;)V

    .line 613
    invoke-virtual {v3}, Lcom/dropbox/android/taskqueue/G;->c()V

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v3}, Lcom/dropbox/android/service/CameraUploadService;->e(Lcom/dropbox/android/service/CameraUploadService;)Lcom/dropbox/android/service/v;

    move-result-object v3

    if-eqz v3, :cond_113

    .line 616
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v4}, Lcom/dropbox/android/service/CameraUploadService;->e(Lcom/dropbox/android/service/CameraUploadService;)Lcom/dropbox/android/service/v;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/dropbox/android/service/t;->b(Lcom/dropbox/android/service/v;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/dropbox/android/service/CameraUploadService;->a(Lcom/dropbox/android/service/CameraUploadService;Lcom/dropbox/android/service/v;)Lcom/dropbox/android/service/v;

    .line 639
    :cond_113
    :goto_113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-virtual {v3}, Lcom/dropbox/android/service/CameraUploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    .line 644
    const/4 v3, 0x0

    .line 645
    if-eqz v16, :cond_38f

    .line 646
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/dropbox/android/service/o;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/HashMap;

    move-result-object v3

    move-object v15, v3

    .line 649
    :goto_125
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 650
    invoke-static {}, Lcom/dropbox/android/service/q;->a()Lcom/dropbox/android/service/q;

    move-result-object v25

    .line 651
    invoke-static {}, Lcom/dropbox/android/service/q;->b()Lcom/dropbox/android/service/q;

    move-result-object v26

    .line 654
    new-instance v27, Ljava/util/LinkedList;

    invoke-direct/range {v27 .. v27}, Ljava/util/LinkedList;-><init>()V

    .line 655
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/android/service/o;->c:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_13f
    :goto_13f
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31b

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    .line 656
    move-object/from16 v0, v23

    invoke-static {v0, v12}, Lcom/dropbox/android/util/as;->a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/dropbox/android/util/as;

    move-result-object v29

    .line 657
    if-eqz v29, :cond_13f

    .line 661
    const-string v3, "_id"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/dropbox/android/util/as;->a(Ljava/lang/String;)I

    move-result v30

    .line 662
    const-string v3, "_data"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/dropbox/android/util/as;->a(Ljava/lang/String;)I

    move-result v31

    .line 663
    const-string v3, "_size"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/dropbox/android/util/as;->a(Ljava/lang/String;)I

    move-result v32

    .line 664
    const-string v3, "mime_type"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/dropbox/android/util/as;->a(Ljava/lang/String;)I

    move-result v33

    .line 665
    const-string v3, "date_modified"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/dropbox/android/util/as;->a(Ljava/lang/String;)I

    move-result v34

    .line 667
    :cond_17b
    :goto_17b
    invoke-virtual/range {v29 .. v29}, Lcom/dropbox/android/util/as;->a()Z

    move-result v3

    if-eqz v3, :cond_1f1

    .line 668
    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/as;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 671
    invoke-static {v3}, Lcom/dropbox/android/util/ar;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_195

    invoke-static {v3}, Lcom/dropbox/android/util/ar;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17b

    .line 675
    :cond_195
    new-instance v35, Ljava/io/File;

    move-object/from16 v0, v35

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 681
    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/as;->a(I)J

    move-result-wide v3

    .line 682
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_38c

    .line 686
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->length()J

    move-result-wide v3

    move-wide v13, v3

    .line 689
    :goto_1b5
    const-wide/16 v3, 0x0

    cmp-long v3, v13, v3

    if-lez v3, :cond_17b

    .line 693
    move-object/from16 v0, v35

    invoke-static {v0, v13, v14}, Lcom/dropbox/android/service/CameraUploadService;->a(Ljava/io/File;J)Ljava/lang/String;

    move-result-object v36

    .line 694
    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/as;->b(I)Ljava/lang/String;

    move-result-object v37

    .line 696
    invoke-virtual/range {v29 .. v30}, Lcom/dropbox/android/util/as;->a(I)J

    move-result-wide v3

    invoke-static {v12, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v38

    .line 697
    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/dropbox/android/util/as;->a(I)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v39, v3, v5

    .line 700
    const/4 v10, 0x0

    .line 701
    if-eqz v15, :cond_237

    .line 702
    move-object/from16 v0, v36

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dropbox/android/service/j;

    move-object v4, v3

    .line 718
    :goto_1ed
    if-eqz v4, :cond_2c1

    .line 722
    if-nez v16, :cond_25f

    .line 787
    :cond_1f1
    invoke-virtual/range {v29 .. v29}, Lcom/dropbox/android/util/as;->b()V

    goto/16 :goto_13f

    .line 620
    :cond_1f6
    invoke-virtual/range {v20 .. v20}, Ldbxyzptlk/j/m;->i()Ldbxyzptlk/j/p;

    move-result-object v4

    sget-object v5, Ldbxyzptlk/j/p;->c:Ldbxyzptlk/j/p;

    if-ne v4, v5, :cond_22b

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v2}, Lcom/dropbox/android/service/CameraUploadService;->e(Lcom/dropbox/android/service/CameraUploadService;)Lcom/dropbox/android/service/v;

    move-result-object v2

    if-nez v2, :cond_228

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    new-instance v3, Lcom/dropbox/android/service/k;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/dropbox/android/service/k;-><init>(Lcom/dropbox/android/service/CameraUploadService;Lcom/dropbox/android/service/b;)V

    invoke-static {v2, v3}, Lcom/dropbox/android/service/CameraUploadService;->a(Lcom/dropbox/android/service/CameraUploadService;Lcom/dropbox/android/service/v;)Lcom/dropbox/android/service/v;

    .line 627
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/android/service/o;->b:Lcom/dropbox/android/service/CameraUploadService;

    invoke-static {v3}, Lcom/dropbox/android/service/CameraUploadService;->e(Lcom/dropbox/android/service/CameraUploadService;)Lcom/dropbox/android/service/v;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dropbox/android/service/t;->a(Lcom/dropbox/android/service/v;)V

    .line 629
    :cond_228
    monitor-exit v17

    goto/16 :goto_4b

    .line 633
    :cond_22b
    sget-object v4, Ldbxyzptlk/j/p;->a:Ldbxyzptlk/j/p;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ldbxyzptlk/j/m;->a(Ldbxyzptlk/j/p;)V

    .line 634
    invoke-virtual {v3}, Lcom/dropbox/android/taskqueue/G;->c()V

    goto/16 :goto_113

    .line 704
    :cond_237
    const-string v3, "camera_upload"

    sget-object v4, Lcom/dropbox/android/service/j;->a:[Ljava/lang/String;

    const-string v5, "local_hash = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v36, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_249
    .catchall {:try_start_88 .. :try_end_249} :catchall_63

    move-result-object v4

    .line 710
    :try_start_24a
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_389

    .line 711
    new-instance v3, Lcom/dropbox/android/service/j;

    invoke-direct {v3, v4}, Lcom/dropbox/android/service/j;-><init>(Landroid/database/Cursor;)V
    :try_end_255
    .catchall {:try_start_24a .. :try_end_255} :catchall_25a

    .line 714
    :goto_255
    :try_start_255
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v4, v3

    .line 715
    goto :goto_1ed

    .line 714
    :catchall_25a
    move-exception v2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v2

    .line 726
    :cond_25f
    invoke-static {v4}, Lcom/dropbox/android/service/j;->a(Lcom/dropbox/android/service/j;)Z

    move-result v3

    if-nez v3, :cond_17b

    .line 733
    if-eqz v21, :cond_293

    .line 734
    invoke-static {v4}, Lcom/dropbox/android/service/j;->b(Lcom/dropbox/android/service/j;)Z

    move-result v3

    if-nez v3, :cond_17b

    .line 736
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 737
    const-string v5, "ignored"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 738
    const-string v5, "camera_upload"

    const-string v6, "_id = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v4}, Lcom/dropbox/android/service/j;->c(Lcom/dropbox/android/service/j;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {v2, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_17b

    .line 756
    :cond_293
    invoke-static {v4}, Lcom/dropbox/android/service/j;->b(Lcom/dropbox/android/service/j;)Z

    move-result v3

    if-eqz v3, :cond_29f

    invoke-virtual/range {v20 .. v20}, Ldbxyzptlk/j/m;->o()Z

    move-result v3

    if-eqz v3, :cond_17b

    .line 757
    :cond_29f
    new-instance v3, Lcom/dropbox/android/service/h;

    invoke-static {v4}, Lcom/dropbox/android/service/j;->c(Lcom/dropbox/android/service/j;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v4}, Lcom/dropbox/android/service/j;->d(Lcom/dropbox/android/service/j;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v4, v35

    move-object/from16 v5, v38

    move-object/from16 v6, v36

    move-object/from16 v7, v37

    move-wide/from16 v8, v39

    invoke-direct/range {v3 .. v12}, Lcom/dropbox/android/service/h;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17b

    .line 765
    :cond_2c1
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 766
    if-nez v3, :cond_2d2

    .line 767
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 769
    :cond_2d2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    invoke-static/range {v37 .. v37}, Lcom/dropbox/android/util/aa;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f9

    .line 772
    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v14}, Lcom/dropbox/android/service/q;->a(J)V

    .line 778
    :cond_2ee
    :goto_2ee
    if-eqz v21, :cond_305

    .line 779
    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17b

    .line 773
    :cond_2f9
    invoke-static/range {v37 .. v37}, Lcom/dropbox/android/util/aa;->h(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2ee

    .line 774
    move-object/from16 v0, v26

    invoke-virtual {v0, v13, v14}, Lcom/dropbox/android/service/q;->a(J)V

    goto :goto_2ee

    .line 781
    :cond_305
    new-instance v5, Lcom/dropbox/android/service/h;

    move-object/from16 v6, v35

    move-object/from16 v7, v38

    move-object/from16 v8, v36

    move-object/from16 v9, v37

    move-wide/from16 v10, v39

    invoke-direct/range {v5 .. v12}, Lcom/dropbox/android/service/h;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17b

    .line 790
    :cond_31b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v18

    .line 792
    invoke-static {}, Lcom/dropbox/android/service/CameraUploadService;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Finished querying providers."

    invoke-static {v5, v6}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-static {}, Lcom/dropbox/android/util/h;->h()Lcom/dropbox/android/util/r;

    move-result-object v5

    const-string v6, "mimes"

    move-object/from16 v0, v24

    invoke-virtual {v5, v6, v0}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/dropbox/android/util/r;

    move-result-object v5

    const-string v6, "vidsizes"

    invoke-virtual/range {v25 .. v25}, Lcom/dropbox/android/service/q;->c()Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/dropbox/android/util/r;

    move-result-object v5

    const-string v6, "imgsizes"

    invoke-virtual/range {v26 .. v26}, Lcom/dropbox/android/service/q;->c()Ljava/util/LinkedHashMap;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/dropbox/android/util/r;

    move-result-object v5

    const-string v6, "duration"

    invoke-virtual {v5, v6, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v3

    const-string v4, "ignore.existing"

    move/from16 v0, v21

    invoke-virtual {v3, v4, v0}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    move-result-object v3

    const-string v4, "initial"

    invoke-virtual/range {v20 .. v20}, Ldbxyzptlk/j/m;->o()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;Z)Lcom/dropbox/android/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/util/r;->c()V

    .line 799
    new-instance v3, Lcom/dropbox/android/service/p;

    move-object/from16 v4, p0

    move-object/from16 v5, v27

    move-object/from16 v6, v20

    move/from16 v7, v21

    move-object v8, v2

    move-object/from16 v9, v22

    invoke-direct/range {v3 .. v9}, Lcom/dropbox/android/service/p;-><init>(Lcom/dropbox/android/service/o;Ljava/util/LinkedList;Ldbxyzptlk/j/m;ZLandroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/dropbox/android/service/o;->a(Ljava/lang/Runnable;)V

    .line 861
    invoke-static {}, Lcom/dropbox/android/service/CameraUploadService;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Finished camera upload scan."

    invoke-static {v2, v3}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    monitor-exit v17
    :try_end_384
    .catchall {:try_start_255 .. :try_end_384} :catchall_63

    goto/16 :goto_4b

    .line 548
    :catch_386
    move-exception v7

    goto/16 :goto_43

    :cond_389
    move-object v3, v10

    goto/16 :goto_255

    :cond_38c
    move-wide v13, v3

    goto/16 :goto_1b5

    :cond_38f
    move-object v15, v3

    goto/16 :goto_125

    :cond_392
    move/from16 v16, v2

    goto/16 :goto_c7
.end method

.method public final a(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 528
    iget-object v0, p0, Lcom/dropbox/android/service/o;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/android/service/o;->d:J

    .line 530
    return-void
.end method
