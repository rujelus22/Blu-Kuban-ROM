.class public Lcom/google/android/maps/driveabout/vector/cS;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Lcom/google/android/maps/driveabout/vector/cU;

.field public static final b:[Lcom/google/android/maps/driveabout/vector/cU;

.field public static volatile c:I

.field public static final d:[Lcom/google/android/maps/driveabout/vector/cU;

.field public static final e:[Lcom/google/android/maps/driveabout/vector/cU;

.field private static f:Z

.field private static g:Z

.field private static h:Ljava/lang/String;

.field private static volatile i:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->b:Lcom/google/android/maps/driveabout/vector/cU;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->d:Lcom/google/android/maps/driveabout/vector/cU;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->e:Lcom/google/android/maps/driveabout/vector/cU;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->f:Lcom/google/android/maps/driveabout/vector/cU;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cS;->a:[Lcom/google/android/maps/driveabout/vector/cU;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->b:Lcom/google/android/maps/driveabout/vector/cU;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->d:Lcom/google/android/maps/driveabout/vector/cU;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->c:Lcom/google/android/maps/driveabout/vector/cU;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cU;->g:Lcom/google/android/maps/driveabout/vector/cU;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cU;->i:Lcom/google/android/maps/driveabout/vector/cU;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cU;->h:Lcom/google/android/maps/driveabout/vector/cU;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cU;->j:Lcom/google/android/maps/driveabout/vector/cU;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cU;->k:Lcom/google/android/maps/driveabout/vector/cU;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cU;->l:Lcom/google/android/maps/driveabout/vector/cU;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cS;->b:[Lcom/google/android/maps/driveabout/vector/cU;

    sput-boolean v3, Lcom/google/android/maps/driveabout/vector/cS;->f:Z

    const/16 v0, 0xa

    sput v0, Lcom/google/android/maps/driveabout/vector/cS;->c:I

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cS;->h:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/google/android/maps/driveabout/vector/cS;->i:I

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cS;->a:[Lcom/google/android/maps/driveabout/vector/cU;

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cS;->d:[Lcom/google/android/maps/driveabout/vector/cU;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cS;->b:[Lcom/google/android/maps/driveabout/vector/cU;

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cS;->e:[Lcom/google/android/maps/driveabout/vector/cU;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .registers 2

    const/16 v0, 0xa0

    if-le p0, v0, :cond_6

    const/4 v0, 0x3

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static declared-synchronized a(Lcom/google/android/maps/driveabout/vector/cU;Landroid/content/Context;)Lx/ay;
    .registers 7

    const-class v1, Lcom/google/android/maps/driveabout/vector/cS;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/cS;->f:Z

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "VectorGlobalState.initialize() must be called first"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_12
    :try_start_12
    invoke-static {p0}, Lx/aA;->b(Lcom/google/android/maps/driveabout/vector/cU;)Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/maps/driveabout/vector/cU;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {p1}, Ln/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v2, v3, v4, p1}, Lcom/google/android/maps/driveabout/vector/cS;->a([Lcom/google/android/maps/driveabout/vector/cU;Lat/h;Ljava/util/Locale;Ljava/io/File;Landroid/content/Context;)V

    :cond_2d
    invoke-static {p0}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_f

    move-result-object v0

    monitor-exit v1

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;[Lcom/google/android/maps/driveabout/vector/cU;Ljava/lang/String;ILaf/n;)V
    .registers 11

    const-class v2, Lcom/google/android/maps/driveabout/vector/cS;

    monitor-enter v2

    :try_start_3
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/cS;->f:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_98

    if-eqz v0, :cond_9

    :goto_7
    monitor-exit v2

    return-void

    :cond_9
    :try_start_9
    sput-object p2, Lcom/google/android/maps/driveabout/vector/cS;->h:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    if-nez v0, :cond_1f

    new-instance v0, Laf/b;

    invoke-direct {v0, p0}, Laf/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Laf/b;->a(Landroid/content/Context;)V

    invoke-static {v0}, Laf/b;->a(Laf/b;)V

    :cond_1f
    invoke-static {}, Ln/b;->a()V

    invoke-static {p4}, Laf/m;->a(Laf/n;)V

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    sput v0, Lcom/google/android/maps/driveabout/vector/cS;->i:I

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/cS;->c(Landroid/content/Context;)V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    if-nez v0, :cond_48

    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/cS;->b(Landroid/content/Context;)Lat/h;

    move-result-object v0

    new-instance v1, Lz/k;

    invoke-direct {v1, v0}, Lz/k;-><init>(Lat/h;)V

    invoke-virtual {v0, v1}, Lat/h;->a(Lat/p;)V

    :cond_48
    move-object v1, v0

    invoke-virtual {v1}, Lat/h;->t()V

    invoke-static {p0}, Ln/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v3}, Lx/ag;->a(Lat/h;Ljava/io/File;)Lx/ag;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    :try_end_56
    .catchall {:try_start_9 .. :try_end_56} :catchall_98

    move-result-object v4

    const/4 v0, -0x1

    if-eq p3, v0, :cond_65

    :try_start_5a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lx/ax;->a(Ljava/io/InputStream;)V
    :try_end_65
    .catchall {:try_start_5a .. :try_end_65} :catchall_98
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_65} :catch_9b

    :cond_65
    :goto_65
    if-eqz p1, :cond_6a

    :try_start_67
    invoke-static {p1, v1, v4, v3, p0}, Lcom/google/android/maps/driveabout/vector/cS;->a([Lcom/google/android/maps/driveabout/vector/cU;Lat/h;Ljava/util/Locale;Ljava/io/File;Landroid/content/Context;)V

    :cond_6a
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->b()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-static {v1, v3, v4}, Lx/T;->a(Lat/h;Ljava/io/File;Ljava/util/Locale;)Lx/T;

    move-result-object v0

    if-eqz v0, :cond_7c

    invoke-virtual {v0}, Lx/T;->d()V

    invoke-static {v0}, Lr/l;->a(Lx/T;)Lr/l;

    :cond_7c
    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_8a

    new-instance v0, LC/a;

    invoke-direct {v0, p0}, LC/a;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, LC/f;->a(LC/f;)V

    :cond_8a
    invoke-static {p0}, Lcom/google/android/maps/driveabout/vector/cS;->a(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/cS;->g:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/cS;->f:Z
    :try_end_96
    .catchall {:try_start_67 .. :try_end_96} :catchall_98

    goto/16 :goto_7

    :catchall_98
    move-exception v0

    monitor-exit v2

    throw v0

    :catch_9b
    move-exception v0

    :try_start_9c
    const-string v5, "Could not load encryption key"

    invoke-static {v5, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a1
    .catchall {:try_start_9c .. :try_end_a1} :catchall_98

    goto :goto_65
.end method

.method public static declared-synchronized a(Ljava/util/Locale;)V
    .registers 7

    const-class v1, Lcom/google/android/maps/driveabout/vector/cS;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cU;->values()[Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_1d

    aget-object v4, v2, v0

    invoke-static {v4}, Lx/aA;->b(Lcom/google/android/maps/driveabout/vector/cU;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-static {v4}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v4

    invoke-interface {v4, p0}, Lx/ay;->a(Ljava/util/Locale;)V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1f

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1d
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Z)V
    .registers 2

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-static {v0}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v0

    check-cast v0, Lx/aF;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p0}, Lx/aF;->a(Z)V

    :cond_d
    return-void
.end method

.method private static declared-synchronized a([Lcom/google/android/maps/driveabout/vector/cU;Lat/h;Ljava/util/Locale;Ljava/io/File;Landroid/content/Context;)V
    .registers 29

    const-class v22, Lcom/google/android/maps/driveabout/vector/cS;

    monitor-enter v22

    :try_start_3
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/cS;->a(I)I

    move-result v12

    const-string v3, "GMM"

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cS;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    const/4 v3, 0x1

    sput v3, Lcom/google/android/maps/driveabout/vector/cS;->c:I

    :cond_1e
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v23, v0

    const/4 v3, 0x0

    move/from16 v21, v3

    :goto_26
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_161

    aget-object v5, p0, v21

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cT;->a:[I

    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/vector/cU;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_164

    :cond_39
    iget-boolean v3, v5, Lcom/google/android/maps/driveabout/vector/cU;->p:Z

    if-eqz v3, :cond_147

    new-instance v13, Lx/aB;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/res/Resources;I)I

    move-result v16

    const/16 v18, 0x0

    sget-object v20, Lx/aB;->g:Lx/aE;

    move-object/from16 v14, p1

    move-object v15, v5

    move-object/from16 v17, p2

    move-object/from16 v19, p3

    invoke-direct/range {v13 .. v20}, Lx/aB;-><init>(Lat/h;Lcom/google/android/maps/driveabout/vector/cU;ILjava/util/Locale;ZLjava/io/File;Lx/aE;)V

    :goto_57
    invoke-virtual {v13}, Lx/aF;->i()V

    invoke-static {v5, v13}, Lx/aA;->a(Lcom/google/android/maps/driveabout/vector/cU;Lx/ay;)V

    :goto_5d
    add-int/lit8 v3, v21, 0x1

    move/from16 v21, v3

    goto :goto_26

    :pswitch_62
    new-instance v3, Lx/aF;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v6, 0x100

    invoke-static {v4, v6}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/res/Resources;I)I

    move-result v6

    move-object/from16 v4, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    invoke-direct/range {v3 .. v9}, Lx/aF;-><init>(Lat/h;Lcom/google/android/maps/driveabout/vector/cU;ILjava/util/Locale;ZLjava/io/File;)V

    if-eqz v8, :cond_81

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/google/googlenav/bv;->a(B)Lcom/google/googlenav/bv;

    move-result-object v4

    invoke-interface {v3, v4}, Lx/ay;->a(Lcom/google/googlenav/bv;)V

    :cond_81
    invoke-interface {v3}, Lx/ay;->i()V

    invoke-static {v5, v3}, Lx/aA;->a(Lcom/google/android/maps/driveabout/vector/cU;Lx/ay;)V
    :try_end_87
    .catchall {:try_start_3 .. :try_end_87} :catchall_88

    goto :goto_5d

    :catchall_88
    move-exception v3

    monitor-exit v22

    throw v3

    :pswitch_8b
    :try_start_8b
    new-instance v9, Lx/L;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/cI;->b(Landroid/content/res/Resources;I)I

    move-result v13

    move-object/from16 v10, p1

    move-object v11, v5

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v9 .. v15}, Lx/L;-><init>(Lat/h;Lcom/google/android/maps/driveabout/vector/cU;IILjava/util/Locale;Ljava/io/File;)V

    invoke-interface {v9}, Lx/ay;->i()V

    invoke-static {v5, v9}, Lx/aA;->a(Lcom/google/android/maps/driveabout/vector/cU;Lx/ay;)V

    goto :goto_5d

    :pswitch_a8
    new-instance v9, Lx/L;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/res/Resources;I)I

    move-result v13

    move-object/from16 v10, p1

    move-object v11, v5

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v9 .. v15}, Lx/L;-><init>(Lat/h;Lcom/google/android/maps/driveabout/vector/cU;IILjava/util/Locale;Ljava/io/File;)V

    invoke-interface {v9}, Lx/ay;->i()V

    invoke-static {v5, v9}, Lx/aA;->a(Lcom/google/android/maps/driveabout/vector/cU;Lx/ay;)V

    goto :goto_5d

    :pswitch_c5
    new-instance v13, Lx/aF;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/res/Resources;I)I

    move-result v16

    const/16 v18, 0x0

    move-object/from16 v14, p1

    move-object v15, v5

    move-object/from16 v17, p2

    move-object/from16 v19, p3

    invoke-direct/range {v13 .. v19}, Lx/aF;-><init>(Lat/h;Lcom/google/android/maps/driveabout/vector/cU;ILjava/util/Locale;ZLjava/io/File;)V

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cU;->d:Lcom/google/android/maps/driveabout/vector/cU;

    if-ne v5, v3, :cond_e7

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v13, v3, v4}, Lx/aF;->a(J)V

    :cond_e7
    invoke-virtual {v13}, Lx/aF;->i()V

    invoke-static {v5, v13}, Lx/aA;->a(Lcom/google/android/maps/driveabout/vector/cU;Lx/ay;)V

    goto/16 :goto_5d

    :pswitch_ef
    new-instance v3, Lx/W;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v6, 0x100

    invoke-static {v4, v6}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/res/Resources;I)I

    move-result v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v3, v0, v4, v1, v2}, Lx/W;-><init>(Lat/h;ILjava/util/Locale;Ljava/io/File;)V

    invoke-interface {v3}, Lx/ay;->i()V

    invoke-static {v5, v3}, Lx/aA;->a(Lcom/google/android/maps/driveabout/vector/cU;Lx/ay;)V

    goto/16 :goto_5d

    :pswitch_10c
    new-instance v3, Lx/am;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v3, v0, v5, v1, v2}, Lx/am;-><init>(Lat/h;Lcom/google/android/maps/driveabout/vector/cU;Ljava/util/Locale;Ljava/io/File;)V

    invoke-interface {v3}, Lx/ay;->i()V

    invoke-static {v5, v3}, Lx/aA;->a(Lcom/google/android/maps/driveabout/vector/cU;Lx/ay;)V

    goto/16 :goto_5d

    :pswitch_11f
    new-instance v13, Lx/aF;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/res/Resources;I)I

    move-result v16

    const/16 v18, 0x1

    move-object/from16 v14, p1

    move-object v15, v5

    move-object/from16 v17, p2

    move-object/from16 v19, p3

    invoke-direct/range {v13 .. v19}, Lx/aF;-><init>(Lat/h;Lcom/google/android/maps/driveabout/vector/cU;ILjava/util/Locale;ZLjava/io/File;)V

    invoke-virtual {v13}, Lx/aF;->i()V

    invoke-static {v5, v13}, Lx/aA;->a(Lcom/google/android/maps/driveabout/vector/cU;Lx/ay;)V

    goto/16 :goto_5d

    :pswitch_13f
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->b()Z

    move-result v3

    if-nez v3, :cond_39

    goto/16 :goto_5d

    :cond_147
    new-instance v13, Lx/aF;

    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v3, v4}, Lcom/google/android/maps/driveabout/vector/cI;->a(Landroid/content/res/Resources;I)I

    move-result v16

    const/16 v18, 0x0

    move-object/from16 v14, p1

    move-object v15, v5

    move-object/from16 v17, p2

    move-object/from16 v19, p3

    invoke-direct/range {v13 .. v19}, Lx/aF;-><init>(Lat/h;Lcom/google/android/maps/driveabout/vector/cU;ILjava/util/Locale;ZLjava/io/File;)V
    :try_end_15f
    .catchall {:try_start_8b .. :try_end_15f} :catchall_88

    goto/16 :goto_57

    :cond_161
    monitor-exit v22

    return-void

    nop

    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_62
        :pswitch_8b
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
        :pswitch_a8
        :pswitch_c5
        :pswitch_c5
        :pswitch_ef
        :pswitch_10c
        :pswitch_11f
        :pswitch_13f
    .end packed-switch
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/cS;->g:Z

    return v0
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 8

    const-wide/high16 v5, 0x3fd0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->xdpi:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v3, v1

    cmpl-double v1, v3, v5

    if-gtz v1, :cond_2f

    iget v1, v2, Landroid/util/DisplayMetrics;->ydpi:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v1, v0

    float-to-double v3, v1

    cmpl-double v1, v3, v5

    if-lez v1, :cond_45

    :cond_2f
    move v1, v0

    :goto_30
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    div-float v1, v3, v1

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    div-float v0, v2, v0

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    const/high16 v1, 0x41c8

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4a

    const/4 v0, 0x1

    :goto_44
    return v0

    :cond_45
    iget v1, v2, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v2, Landroid/util/DisplayMetrics;->ydpi:F

    goto :goto_30

    :cond_4a
    const/4 v0, 0x0

    goto :goto_44
.end method

.method private static b(Landroid/content/Context;)Lat/h;
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/googlenav/capabilities/a;->a()Lcom/google/googlenav/capabilities/a;

    move-result-object v3

    new-instance v0, Lat/j;

    invoke-direct {v0}, Lat/j;-><init>()V

    invoke-static {}, Ln/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lat/j;->a(Ljava/lang/String;)Lat/j;

    move-result-object v0

    invoke-static {}, Laf/b;->D()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lat/j;->b(Ljava/lang/String;)Lat/j;

    move-result-object v0

    invoke-static {}, Ln/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lat/j;->c(Ljava/lang/String;)Lat/j;

    move-result-object v0

    invoke-static {}, Laf/b;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lat/j;->d(Ljava/lang/String;)Lat/j;

    move-result-object v4

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_7d

    move v0, v1

    :goto_32
    invoke-virtual {v4, v0}, Lat/j;->a(Z)Lat/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lat/j;->b(Z)Lat/j;

    move-result-object v0

    invoke-static {p0}, Ln/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lat/j;->e(Ljava/lang/String;)Lat/j;

    move-result-object v0

    invoke-virtual {v3, p0}, Lcom/google/googlenav/capabilities/a;->a(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lat/j;->c(Z)Lat/j;

    move-result-object v0

    invoke-virtual {v3, p0}, Lcom/google/googlenav/capabilities/a;->b(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lat/j;->e(Z)Lat/j;

    move-result-object v0

    invoke-virtual {v3}, Lcom/google/googlenav/capabilities/a;->b()Z

    move-result v3

    if-nez v3, :cond_7f

    :goto_58
    invoke-virtual {v0, v1}, Lat/j;->d(Z)Lat/j;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Lat/j;->a(I)Lat/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cS;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lat/j;->f(Ljava/lang/String;)Lat/j;

    move-result-object v0

    invoke-virtual {v0}, Lat/j;->a()Lat/h;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Lat/h;->a(J)V

    invoke-static {v0}, Lae/d;->b(Lat/h;)V

    return-object v0

    :cond_7d
    move v0, v2

    goto :goto_32

    :cond_7f
    move v1, v2

    goto :goto_58
.end method

.method public static b()Z
    .registers 1

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->w()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized c()V
    .registers 8

    const/4 v0, 0x0

    const-class v2, Lcom/google/android/maps/driveabout/vector/cS;

    monitor-enter v2

    :try_start_4
    sget-boolean v1, Lcom/google/android/maps/driveabout/vector/cS;->f:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_46

    if-nez v1, :cond_a

    :goto_8
    monitor-exit v2

    return-void

    :cond_a
    :try_start_a
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cU;->values()[Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_10
    if-ge v1, v4, :cond_49

    aget-object v5, v3, v1

    invoke-static {v5}, Lx/aA;->b(Lcom/google/android/maps/driveabout/vector/cU;)Z
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_46

    move-result v0

    if-eqz v0, :cond_24

    :try_start_1a
    invoke-static {v5}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v0

    invoke-interface {v0}, Lx/ay;->j()V

    invoke-static {v5}, Lx/aA;->a(Lcom/google/android/maps/driveabout/vector/cU;)V
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_46
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_24} :catch_28

    :cond_24
    :goto_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :catch_28
    move-exception v0

    :try_start_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not stop "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " tile store"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_45
    .catchall {:try_start_29 .. :try_end_45} :catchall_46

    goto :goto_24

    :catchall_46
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_49
    :try_start_49
    invoke-static {}, Lx/T;->b()Lx/T;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-static {}, Lx/T;->c()V

    :cond_52
    invoke-static {}, Lx/ag;->d()V

    invoke-static {}, Lat/h;->a()Lat/h;

    move-result-object v0

    if-eqz v0, :cond_61

    invoke-virtual {v0}, Lat/h;->s()V

    invoke-static {}, Lat/h;->b()V

    :cond_61
    invoke-static {}, Laf/m;->f()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/cS;->f:Z
    :try_end_67
    .catchall {:try_start_49 .. :try_end_67} :catchall_46

    goto :goto_8
.end method

.method private static c(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Ln/b;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-static {p0}, Ln/b;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    invoke-static {p0}, Ln/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    return-void
.end method

.method public static declared-synchronized d()V
    .registers 6

    const/4 v0, 0x0

    const-class v1, Lcom/google/android/maps/driveabout/vector/cS;

    monitor-enter v1

    :try_start_4
    sget-boolean v2, Lcom/google/android/maps/driveabout/vector/cS;->f:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_3f

    if-nez v2, :cond_a

    :cond_8
    :goto_8
    monitor-exit v1

    return-void

    :cond_a
    :try_start_a
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cU;->values()[Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v2

    array-length v3, v2

    :goto_f
    if-ge v0, v3, :cond_23

    aget-object v4, v2, v0

    invoke-static {v4}, Lx/aA;->b(Lcom/google/android/maps/driveabout/vector/cU;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-static {v4}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v4

    invoke-interface {v4}, Lx/ay;->k()V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_23
    invoke-static {}, Lx/ag;->c()Lx/ag;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {}, Lx/ag;->c()Lx/ag;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lx/ag;->a(Z)V

    :cond_31
    invoke-static {}, Lx/T;->b()Lx/T;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lx/T;->b()Lx/T;

    move-result-object v0

    invoke-virtual {v0}, Lx/T;->f()V
    :try_end_3e
    .catchall {:try_start_a .. :try_end_3e} :catchall_3f

    goto :goto_8

    :catchall_3f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static e()I
    .registers 1

    sget v0, Lcom/google/android/maps/driveabout/vector/cS;->c:I

    return v0
.end method

.method public static declared-synchronized f()V
    .registers 6

    const-class v1, Lcom/google/android/maps/driveabout/vector/cS;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/cS;->f:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_39

    if-nez v0, :cond_9

    :cond_7
    :goto_7
    monitor-exit v1

    return-void

    :cond_9
    :try_start_9
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cU;->values()[Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v3, :cond_23

    aget-object v4, v2, v0

    invoke-static {v4}, Lx/aA;->b(Lcom/google/android/maps/driveabout/vector/cU;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-static {v4}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v4

    invoke-interface {v4}, Lx/ay;->e()V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_23
    invoke-static {}, Lx/ag;->c()Lx/ag;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lx/ag;->a(Z)V

    invoke-static {}, Lx/T;->b()Lx/T;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {}, Lx/T;->b()Lx/T;

    move-result-object v0

    invoke-virtual {v0}, Lx/T;->g()V
    :try_end_38
    .catchall {:try_start_9 .. :try_end_38} :catchall_39

    goto :goto_7

    :catchall_39
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized g()J
    .registers 8

    const-class v3, Lcom/google/android/maps/driveabout/vector/cS;

    monitor-enter v3

    const-wide/16 v0, 0x0

    :try_start_5
    sget-boolean v2, Lcom/google/android/maps/driveabout/vector/cS;->f:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_40

    if-nez v2, :cond_b

    :goto_9
    monitor-exit v3

    return-wide v0

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cU;->values()[Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v5, :cond_27

    aget-object v6, v4, v2

    invoke-static {v6}, Lx/aA;->b(Lcom/google/android/maps/driveabout/vector/cU;)Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-static {v6}, Lx/aA;->c(Lcom/google/android/maps/driveabout/vector/cU;)Lx/ay;

    move-result-object v6

    invoke-interface {v6}, Lx/ay;->h()J

    move-result-wide v6

    add-long/2addr v0, v6

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_27
    invoke-static {}, Lx/T;->b()Lx/T;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-static {}, Lx/T;->b()Lx/T;

    move-result-object v2

    invoke-virtual {v2}, Lx/T;->h()J

    move-result-wide v4

    add-long/2addr v0, v4

    :cond_36
    invoke-static {}, Lx/ag;->c()Lx/ag;

    move-result-object v2

    invoke-virtual {v2}, Lx/ag;->b()J
    :try_end_3d
    .catchall {:try_start_b .. :try_end_3d} :catchall_40

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_9

    :catchall_40
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public static h()I
    .registers 1

    sget v0, Lcom/google/android/maps/driveabout/vector/cS;->i:I

    return v0
.end method
