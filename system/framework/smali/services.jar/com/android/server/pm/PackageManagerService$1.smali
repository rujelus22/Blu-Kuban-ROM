.class final Lcom/android/server/pm/PackageManagerService$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->prefetch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 463
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 466
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 467
    .local v12, mStartTime:J
    sget v2, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    .line 468
    new-instance v2, Lcom/android/server/pm/PackageManagerService$PackageObjectMap;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerService$PackageObjectMap;-><init>()V

    sput-object v2, Lcom/android/server/pm/PackageManagerService;->pom:Lcom/android/server/pm/PackageManagerService$PackageObjectMap;

    .line 469
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "app"

    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 470
    .local v5, dir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, files:[Ljava/lang/String;
    const-string v2, "debug.separate_processes"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 475
    .local v20, separateProcesses:Ljava/lang/String;
    if-eqz v20, :cond_b6

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b6

    .line 476
    const-string v2, "*"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    .line 477
    const/16 v14, 0x8

    .line 478
    .local v14, nDefParseFlags:I
    const/16 v16, 0x0

    .line 479
    .local v16, nSeparateProcesses:[Ljava/lang/String;
    const-string v2, "PackageManager"

    const-string v3, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :goto_43
    move-object/from16 v6, v16

    .line 491
    .local v6, nSeparateProcessesInner:[Ljava/lang/String;
    or-int/lit8 v7, v14, 0x41

    .line 492
    .local v7, parseFlags:I
    new-instance v21, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/pm/PackageManagerService$1$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService$1$1;-><init>(Lcom/android/server/pm/PackageManagerService$1;[Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;I)V

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 525
    .local v21, t1:Ljava/lang/Thread;
    const/16 v2, 0xa

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 526
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    .line 528
    new-instance v15, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "framework"

    invoke-direct {v15, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 529
    .local v15, nFrameDir:Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 530
    .local v10, framedirfiles:[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_6f
    array-length v2, v10

    if-ge v11, v2, :cond_fc

    .line 531
    new-instance v9, Ljava/io/File;

    aget-object v2, v10, v11

    invoke-direct {v9, v15, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 533
    .local v9, file:Ljava/io/File;
    aget-object v2, v10, v11

    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$200(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_ba

    .line 530
    :cond_81
    :goto_81
    add-int/lit8 v11, v11, 0x1

    goto :goto_6f

    .line 481
    .end local v6           #nSeparateProcessesInner:[Ljava/lang/String;
    .end local v7           #parseFlags:I
    .end local v9           #file:Ljava/io/File;
    .end local v10           #framedirfiles:[Ljava/lang/String;
    .end local v11           #i:I
    .end local v14           #nDefParseFlags:I
    .end local v15           #nFrameDir:Ljava/io/File;
    .end local v16           #nSeparateProcesses:[Ljava/lang/String;
    .end local v21           #t1:Ljava/lang/Thread;
    :cond_84
    const/4 v14, 0x0

    .line 482
    .restart local v14       #nDefParseFlags:I
    const-string v2, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 483
    .restart local v16       #nSeparateProcesses:[Ljava/lang/String;
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Running with debug.separate_processes: "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a9} :catch_aa

    goto :goto_43

    .line 588
    .end local v4           #files:[Ljava/lang/String;
    .end local v5           #dir:Ljava/io/File;
    .end local v12           #mStartTime:J
    .end local v14           #nDefParseFlags:I
    .end local v16           #nSeparateProcesses:[Ljava/lang/String;
    .end local v20           #separateProcesses:Ljava/lang/String;
    :catch_aa
    move-exception v8

    .line 589
    .local v8, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->isError:Z

    .line 590
    const-string v2, "BootTime"

    const-string v3, "Exiting Thread"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 592
    .end local v8           #e:Ljava/lang/Exception;
    :goto_b5
    return-void

    .line 487
    .restart local v4       #files:[Ljava/lang/String;
    .restart local v5       #dir:Ljava/io/File;
    .restart local v12       #mStartTime:J
    .restart local v20       #separateProcesses:Ljava/lang/String;
    :cond_b6
    const/4 v14, 0x0

    .line 488
    .restart local v14       #nDefParseFlags:I
    const/16 v16, 0x0

    .restart local v16       #nSeparateProcesses:[Ljava/lang/String;
    goto :goto_43

    .line 537
    .restart local v6       #nSeparateProcessesInner:[Ljava/lang/String;
    .restart local v7       #parseFlags:I
    .restart local v9       #file:Ljava/io/File;
    .restart local v10       #framedirfiles:[Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v15       #nFrameDir:Ljava/io/File;
    .restart local v21       #t1:Ljava/lang/Thread;
    :cond_ba
    :try_start_ba
    aget-object v2, v10, v11

    const-string v3, "PhoneSetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 539
    aget-object v2, v10, v11

    const-string v3, "SetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f1

    .line 545
    :cond_ce
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 546
    .local v19, scanPath:Ljava/lang/String;
    new-instance v18, Landroid/content/pm/PackageParser;

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 547
    .local v18, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 548
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v1, v2, v7}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 551
    .local v17, pkg:Landroid/content/pm/PackageParser$Package;
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->pom:Lcom/android/server/pm/PackageManagerService$PackageObjectMap;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageObjectMap;->map:Ljava/util/HashMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_81

    .line 541
    .end local v17           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v18           #pp:Landroid/content/pm/PackageParser;
    .end local v19           #scanPath:Ljava/lang/String;
    :cond_f1
    aget-object v2, v10, v11

    const-string v3, "MinimalHome.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ce

    goto :goto_81

    .line 554
    .end local v9           #file:Ljava/io/File;
    :cond_fc
    array-length v2, v4

    div-int/lit8 v11, v2, 0x2

    :goto_ff
    array-length v2, v4

    if-ge v11, v2, :cond_156

    .line 555
    new-instance v9, Ljava/io/File;

    aget-object v2, v4, v11

    invoke-direct {v9, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 557
    .restart local v9       #file:Ljava/io/File;
    aget-object v2, v4, v11

    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$200(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_114

    .line 554
    :cond_111
    :goto_111
    add-int/lit8 v11, v11, 0x1

    goto :goto_ff

    .line 561
    :cond_114
    aget-object v2, v4, v11

    const-string v3, "PhoneSetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_111

    .line 563
    aget-object v2, v4, v11

    const-string v3, "SetupWizard.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14b

    .line 569
    :cond_128
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 570
    .restart local v19       #scanPath:Ljava/lang/String;
    new-instance v18, Landroid/content/pm/PackageParser;

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 571
    .restart local v18       #pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 572
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v1, v2, v7}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 575
    .restart local v17       #pkg:Landroid/content/pm/PackageParser$Package;
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->pom:Lcom/android/server/pm/PackageManagerService$PackageObjectMap;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PackageObjectMap;->map:Ljava/util/HashMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_111

    .line 565
    .end local v17           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v18           #pp:Landroid/content/pm/PackageParser;
    .end local v19           #scanPath:Ljava/lang/String;
    :cond_14b
    aget-object v2, v4, v11

    const-string v3, "MinimalHome.apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_128

    goto :goto_111

    .line 578
    .end local v9           #file:Ljava/io/File;
    :cond_156
    :goto_156
    sget v2, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_158} :catch_aa

    const/4 v3, 0x1

    if-le v2, v3, :cond_16d

    .line 580
    :try_start_15b
    const-string v2, "BootTime"

    const-string v3, "!@Sleeping for 10ms in prefetch Thread"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const-wide/16 v2, 0xa

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_167
    .catch Ljava/lang/InterruptedException; {:try_start_15b .. :try_end_167} :catch_168
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_167} :catch_aa

    goto :goto_156

    .line 582
    :catch_168
    move-exception v8

    .line 583
    .local v8, e:Ljava/lang/InterruptedException;
    :try_start_169
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_156

    .line 586
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_16d
    sget v2, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/android/server/pm/PackageManagerService;->mPrefetchThreadRunning:I

    .line 587
    const-string v2, "BootTime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Prefetch Time Taken:"

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v12

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_195
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_195} :catch_aa

    goto/16 :goto_b5
.end method
