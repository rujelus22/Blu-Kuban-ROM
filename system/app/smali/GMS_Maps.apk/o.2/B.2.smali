.class public Lo/B;
.super Ljava/lang/Object;

# interfaces
.implements Lo/z;


# static fields
.field private static a:Lo/B;


# instance fields
.field private final b:Lat/h;

.field private final c:Ljava/util/Map;

.field private final d:Landroid/content/Context;

.field private e:Lo/A;

.field private f:Lo/E;

.field private g:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lat/h;Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/B;->c:Ljava/util/Map;

    iput-object p1, p0, Lo/B;->b:Lat/h;

    iput-object p2, p0, Lo/B;->d:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/B;->d:Landroid/content/Context;

    invoke-static {v1}, Ln/b;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lo/B;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/B;->g:Ljava/lang/String;

    invoke-direct {p0}, Lo/B;->c()V

    invoke-direct {p0}, Lo/B;->e()V

    return-void
.end method

.method static synthetic a(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lo/B;->c(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lo/B;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lo/B;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lat/h;Landroid/content/Context;)Lo/B;
    .registers 3

    sget-object v0, Lo/B;->a:Lo/B;

    if-nez v0, :cond_b

    new-instance v0, Lo/B;

    invoke-direct {v0, p0, p1}, Lo/B;-><init>(Lat/h;Landroid/content/Context;)V

    sput-object v0, Lo/B;->a:Lo/B;

    :cond_b
    sget-object v0, Lo/B;->a:Lo/B;

    return-object v0
.end method

.method static synthetic a(Lo/B;Lo/E;)V
    .registers 2

    invoke-direct {p0, p1}, Lo/B;->b(Lo/E;)V

    return-void
.end method

.method static synthetic a(Lo/B;Lo/E;Lo/C;[B)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lo/B;->a(Lo/E;Lo/C;[B)V

    return-void
.end method

.method private declared-synchronized a(Lo/C;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/B;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lo/C;->i()Lo/D;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/C;

    iget-object v1, p0, Lo/B;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lo/C;->i()Lo/D;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lo/C;->b()J

    move-result-wide v1

    invoke-virtual {p1}, Lo/C;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_27

    invoke-direct {p0, v0}, Lo/B;->b(Lo/C;)V

    :cond_27
    invoke-direct {p0}, Lo/B;->d()V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    monitor-exit p0

    return-void

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lo/E;)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lo/E;->a(Lo/E;)I

    move-result v0

    invoke-direct {p0, v0}, Lo/B;->b(I)I

    move-result v1

    invoke-static {p1}, Lo/E;->a(Lo/E;)I

    move-result v0

    if-ne v1, v0, :cond_14

    invoke-direct {p0, p1}, Lo/B;->b(Lo/E;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_36

    :goto_12
    monitor-exit p0

    return-void

    :cond_14
    :try_start_14
    new-instance v0, Lo/E;

    invoke-static {p1}, Lo/E;->b(Lo/E;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {p1}, Lo/E;->a(Lo/E;)I

    move-result v3

    invoke-static {v1}, Lo/B;->c(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lo/E;->c(Lo/E;)Lo/C;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lo/E;-><init>(Lo/B;Ljava/util/Locale;ILjava/lang/String;Lo/C;)V

    iget-object v1, p0, Lo/B;->f:Lo/E;

    if-ne p1, v1, :cond_30

    iput-object v0, p0, Lo/B;->f:Lo/E;

    :cond_30
    iget-object v1, p0, Lo/B;->b:Lat/h;

    invoke-virtual {v1, v0}, Lat/h;->c(Lat/g;)V
    :try_end_35
    .catchall {:try_start_14 .. :try_end_35} :catchall_36

    goto :goto_12

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lo/E;Lo/C;[B)V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-virtual {p2}, Lo/C;->f()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_4e

    :try_start_c
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_17} :catch_33
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_51

    :try_start_17
    invoke-static {v1}, Lo/v;->c(Ljava/io/File;)Lo/v;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_4e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_6f

    move-result-object v0

    :try_start_1b
    iget-object v1, p0, Lo/B;->f:Lo/E;

    if-ne p1, v1, :cond_2e

    iget-object v1, p0, Lo/B;->e:Lo/A;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lo/B;->e:Lo/A;

    invoke-interface {v1, v0}, Lo/A;->a(Lo/v;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/B;->e:Lo/A;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/B;->f:Lo/E;

    :cond_2e
    invoke-direct {p0, p2}, Lo/B;->a(Lo/C;)V
    :try_end_31
    .catchall {:try_start_1b .. :try_end_31} :catchall_4e

    :goto_31
    monitor-exit p0

    return-void

    :catch_33
    move-exception v0

    :try_start_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot save bundle to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, p1}, Lo/B;->b(Lo/E;)V
    :try_end_4d
    .catchall {:try_start_34 .. :try_end_4d} :catchall_4e

    goto :goto_31

    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_51
    move-exception v0

    :try_start_52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot save bundle to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-direct {p0, p1}, Lo/B;->b(Lo/E;)V

    goto :goto_31

    :catch_6f
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse bundle "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lo/C;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-direct {p0, p1}, Lo/B;->b(Lo/E;)V
    :try_end_90
    .catchall {:try_start_52 .. :try_end_90} :catchall_4e

    goto :goto_31
.end method

.method private b(I)I
    .registers 3

    packed-switch p1, :pswitch_data_8

    const/4 v0, 0x1

    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x2

    goto :goto_4

    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic b(Lo/B;)V
    .registers 1

    invoke-direct {p0}, Lo/B;->d()V

    return-void
.end method

.method static synthetic b(Lo/B;Lo/E;)V
    .registers 2

    invoke-direct {p0, p1}, Lo/B;->a(Lo/E;)V

    return-void
.end method

.method private b(Lo/C;)V
    .registers 7

    invoke-virtual {p1}, Lo/C;->e()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    :goto_a
    return-void

    :cond_b
    const/4 v0, 0x0

    :goto_c
    array-length v3, v2

    if-ge v0, v3, :cond_1c

    new-instance v3, Ljava/io/File;

    aget-object v4, v2, v0

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_1c
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_a
.end method

.method private declared-synchronized b(Lo/E;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/B;->f:Lo/E;

    if-ne p1, v0, :cond_14

    iget-object v0, p0, Lo/B;->e:Lo/A;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lo/B;->e:Lo/A;

    invoke-interface {v0}, Lo/A;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/B;->e:Lo/A;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/B;->f:Lo/E;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static c(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_c

    const-string v0, "voice_instructions.zip"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "voice_instructions_imperial.zip"

    goto :goto_5

    :pswitch_9
    const-string v0, "voice_instructions_yards.zip"

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_6
        :pswitch_9
    .end packed-switch
.end method

.method private c()V
    .registers 6

    iget-object v0, p0, Lo/B;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lo/B;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lz/r;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_13
    array-length v2, v1

    if-ge v0, v2, :cond_2c

    aget-object v2, v1, v0

    iget-object v3, p0, Lo/B;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lo/C;->a(Ljava/lang/String;Ljava/lang/String;)Lo/C;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v3, p0, Lo/B;->c:Ljava/util/Map;

    invoke-virtual {v2}, Lo/C;->i()Lo/D;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2c
    return-void
.end method

.method private declared-synchronized d()V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lo/B;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/C;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_27

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    invoke-virtual {v0}, Lo/C;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2f

    goto :goto_10

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_32
    :try_start_32
    iget-object v0, p0, Lo/B;->d:Landroid/content/Context;

    invoke-virtual {p0}, Lo/B;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lz/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_32 .. :try_end_3f} :catchall_2f

    monitor-exit p0

    return-void
.end method

.method private e()V
    .registers 4

    iget-object v0, p0, Lo/B;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/C;

    invoke-virtual {v0}, Lo/C;->d()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0, v0}, Lo/B;->b(Lo/C;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_23
    invoke-direct {p0}, Lo/B;->d()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .registers 2

    const-string v0, "/voice/"

    return-object v0
.end method

.method public declared-synchronized a(Ljava/util/Locale;ILo/A;)Lo/v;
    .registers 10

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lo/B;->c:Ljava/util/Map;

    new-instance v1, Lo/D;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lo/D;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/C;
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_5a

    if-eqz v0, :cond_61

    :try_start_15
    invoke-virtual {v0}, Lo/C;->f()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lo/v;->c(Ljava/io/File;)Lo/v;
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_41

    move-result-object v2

    :try_start_1d
    invoke-virtual {v0}, Lo/C;->g()V

    invoke-direct {p0}, Lo/B;->d()V
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_5a
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_23} :catch_5f

    :goto_23
    if-eqz v0, :cond_2b

    :try_start_25
    invoke-virtual {v0}, Lo/C;->c()Z

    move-result v1

    if-nez v1, :cond_2d

    :cond_2b
    if-nez v2, :cond_3f

    :cond_2d
    new-instance v1, Lo/E;

    if-eqz v2, :cond_5d

    :goto_31
    invoke-direct {v1, p0, p1, p2, v0}, Lo/E;-><init>(Lo/B;Ljava/util/Locale;ILo/C;)V

    iput-object v1, p0, Lo/B;->f:Lo/E;

    iput-object p3, p0, Lo/B;->e:Lo/A;

    iget-object v0, p0, Lo/B;->b:Lat/h;

    iget-object v1, p0, Lo/B;->f:Lo/E;

    invoke-virtual {v0, v1}, Lat/h;->c(Lat/g;)V
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_5a

    :cond_3f
    monitor-exit p0

    return-object v2

    :catch_41
    move-exception v1

    move-object v2, v3

    :goto_43
    :try_start_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse speech bundle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_59
    .catchall {:try_start_43 .. :try_end_59} :catchall_5a

    goto :goto_23

    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5d
    move-object v0, v3

    goto :goto_31

    :catch_5f
    move-exception v1

    goto :goto_43

    :cond_61
    move-object v2, v3

    goto :goto_23
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    const-string v0, "VoiceBundles"

    return-object v0
.end method
