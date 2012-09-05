.class public Lo/d;
.super Ljava/lang/Object;

# interfaces
.implements Lo/P;


# static fields
.field private static final a:[B


# instance fields
.field private b:Z

.field private final c:Landroid/content/Context;

.field private final d:Landroid/os/Handler;

.field private e:Lo/X;

.field private volatile f:Z

.field private volatile g:Z

.field private final h:Ljava/util/ArrayList;

.field private i:Ljava/util/LinkedList;

.field private j:Lo/k;

.field private final k:Lz/g;

.field private l:Lo/W;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lo/d;->a:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 8

    const/16 v4, 0x1e

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/d;->h:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lo/d;->i:Ljava/util/LinkedList;

    new-instance v0, Lo/e;

    invoke-direct {v0, p0, v4}, Lo/e;-><init>(Lo/d;I)V

    iput-object v0, p0, Lo/d;->k:Lz/g;

    iput-object p1, p0, Lo/d;->c:Landroid/content/Context;

    iput-object p2, p0, Lo/d;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    :goto_21
    if-gt v0, v4, :cond_44

    iget-object v1, p0, Lo/d;->h:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "._speech_nav_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".wav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_44
    invoke-static {}, Ln/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/d;->b:Z

    :cond_4d
    return-void
.end method

.method private a(Ljava/lang/String;Z)Ljava/io/File;
    .registers 6

    if-eqz p2, :cond_e

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/d;->c:Landroid/content/Context;

    invoke-static {v1}, Ln/b;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, Lo/d;->c:Landroid/content/Context;

    const-string v1, "da_speech"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_d
.end method

.method static synthetic a(Lo/d;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lo/d;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method private declared-synchronized a(ILo/j;)V
    .registers 11

    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    monitor-enter p0

    if-nez p1, :cond_74

    :try_start_7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iget-object v0, p0, Lo/d;->e:Lo/X;

    invoke-interface {v0}, Lo/X;->b()Ljava/util/Locale;

    move-result-object v5

    iget-object v0, p0, Lo/d;->e:Lo/X;

    invoke-interface {v0, v5}, Lo/X;->b(Ljava/util/Locale;)I

    move-result v0

    invoke-static {v4, v5}, Lo/Y;->b(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v6

    invoke-static {v4, v5}, Lo/Y;->a(Ljava/util/Locale;Ljava/util/Locale;)Z

    move-result v5

    if-eq v0, v1, :cond_25

    if-eqz v6, :cond_25

    if-nez v5, :cond_2b

    :cond_25
    iget-object v0, p0, Lo/d;->e:Lo/X;

    invoke-interface {v0, v4}, Lo/X;->a(Ljava/util/Locale;)I

    move-result v0

    :cond_2b
    if-eq v0, v1, :cond_2f

    if-ne v0, v7, :cond_72

    :cond_2f
    move v1, v2

    :goto_30
    iget-object v3, p0, Lo/d;->e:Lo/X;

    new-instance v4, Lo/i;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lo/i;-><init>(Lo/d;Lo/e;)V

    invoke-interface {v3, v4}, Lo/X;->a(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    move-result v3

    if-eqz v3, :cond_3f

    move v1, v2

    :cond_3f
    :goto_3f
    iput-boolean v1, p0, Lo/d;->g:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lo/d;->f:Z

    iget-boolean v1, p0, Lo/d;->g:Z

    if-eqz v1, :cond_54

    iget-object v1, p0, Lo/d;->e:Lo/X;

    invoke-interface {v1}, Lo/X;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/W;->a(Ljava/lang/String;)Lo/W;

    move-result-object v1

    iput-object v1, p0, Lo/d;->l:Lo/W;

    :cond_54
    if-eqz p2, :cond_5e

    iget-boolean v1, p0, Lo/d;->g:Z

    if-eqz v1, :cond_63

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lo/j;->a(I)V

    :cond_5e
    :goto_5e
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_61
    .catchall {:try_start_7 .. :try_end_61} :catchall_6a

    monitor-exit p0

    return-void

    :cond_63
    if-ne v0, v7, :cond_6d

    const/4 v0, 0x1

    :try_start_66
    invoke-interface {p2, v0}, Lo/j;->a(I)V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_5e

    :catchall_6a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6d
    const/4 v0, 0x2

    :try_start_6e
    invoke-interface {p2, v0}, Lo/j;->a(I)V
    :try_end_71
    .catchall {:try_start_6e .. :try_end_71} :catchall_6a

    goto :goto_5e

    :cond_72
    move v1, v3

    goto :goto_30

    :cond_74
    move v0, v1

    move v1, v2

    goto :goto_3f
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/d;->j:Lo/k;

    const/4 v1, 0x0

    iput-object v1, p0, Lo/d;->j:Lo/k;

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_29

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lo/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Lo/k;->d()Lo/g;

    move-result-object v1

    if-eqz v1, :cond_25

    iget-object v2, p0, Lo/d;->k:Lz/g;

    invoke-virtual {v0}, Lo/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lz/g;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/k;->a(Lo/a;)V

    :cond_25
    :goto_25
    invoke-direct {p0}, Lo/d;->f()V

    return-void

    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    invoke-virtual {v0}, Lo/k;->a()V

    goto :goto_25
.end method

.method static synthetic a(Lo/d;ILo/j;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lo/d;->a(ILo/j;)V

    return-void
.end method

.method static synthetic a(Lo/d;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lo/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Lo/j;Lo/X;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lo/d;->e:Lo/X;

    iget-object v0, p0, Lo/d;->e:Lo/X;

    new-instance v1, Lo/f;

    invoke-direct {v1, p0, p1}, Lo/f;-><init>(Lo/d;Lo/j;)V

    invoke-interface {v0, v1}, Lo/X;->a(Landroid/speech/tts/TextToSpeech$OnInitListener;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lo/k;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/d;->i:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    invoke-direct {p0}, Lo/d;->f()V

    return-void

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public static a(Ljava/io/File;)Z
    .registers 9

    const/16 v6, 0x46

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2c

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    array-length v5, v3

    if-eq v4, v5, :cond_15

    :cond_14
    :goto_14
    return v0

    :cond_15
    const/4 v4, 0x0

    aget-byte v4, v3, v4

    const/16 v5, 0x52

    if-ne v4, v5, :cond_4d

    const/4 v4, 0x1

    aget-byte v4, v3, v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_4d

    const/4 v4, 0x2

    aget-byte v4, v3, v4

    if-ne v4, v6, :cond_4d

    const/4 v4, 0x3

    aget-byte v4, v3, v4

    if-ne v4, v6, :cond_4d

    const/16 v4, 0x8

    aget-byte v4, v3, v4

    const/16 v5, 0x57

    if-ne v4, v5, :cond_4d

    const/16 v4, 0x9

    aget-byte v4, v3, v4

    const/16 v5, 0x41

    if-ne v4, v5, :cond_4d

    const/16 v4, 0xa

    aget-byte v4, v3, v4

    const/16 v5, 0x56

    if-ne v4, v5, :cond_4d

    const/16 v4, 0xb

    aget-byte v4, v3, v4

    const/16 v5, 0x45

    if-eq v4, v5, :cond_4f

    :cond_4d
    move v0, v1

    goto :goto_14

    :cond_4f
    const/16 v4, 0x28

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x29

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0x2a

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0x2b

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v3, v4

    if-lez v3, :cond_14

    add-int/lit8 v4, v3, 0x2c

    int-to-long v4, v4

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_14

    sget-object v4, Lo/d;->a:[B

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    sget-object v4, Lo/d;->a:[B

    array-length v4, v4

    new-array v4, v4, [B

    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-ne v2, v3, :cond_14

    sget-object v2, Lo/d;->a:[B

    invoke-static {v4, v2}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_94
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_94} :catch_9d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_94} :catch_9a

    move-result v2

    if-nez v2, :cond_14

    move v0, v1

    goto/16 :goto_14

    :catch_9a
    move-exception v1

    goto/16 :goto_14

    :catch_9d
    move-exception v1

    goto/16 :goto_14
.end method

.method private a(Z)Z
    .registers 8

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    :try_start_3
    invoke-virtual {p0}, Lo/d;->d()Landroid/os/StatFs;

    move-result-object v0

    :goto_7
    if-nez v0, :cond_f

    :goto_9
    return v1

    :cond_a
    invoke-virtual {p0}, Lo/d;->e()Landroid/os/StatFs;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_d} :catch_26

    move-result-object v0

    goto :goto_7

    :cond_f
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x80000

    cmp-long v0, v2, v4

    if-lez v0, :cond_24

    const/4 v0, 0x1

    :goto_22
    move v1, v0

    goto :goto_9

    :cond_24
    move v0, v1

    goto :goto_22

    :catch_26
    move-exception v0

    goto :goto_9
.end method

.method static synthetic b(Lo/d;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lo/d;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lo/d;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lo/d;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .registers 7

    const/4 v1, 0x0

    const/4 v5, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0

    :try_start_8
    iget-object v0, p0, Lo/d;->j:Lo/k;

    if-eqz v0, :cond_e

    monitor-exit p0

    :cond_d
    :goto_d
    return-void

    :cond_e
    :goto_e
    iget-object v0, p0, Lo/d;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_e1

    iget-object v0, p0, Lo/d;->i:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/k;

    iget-object v2, p0, Lo/d;->k:Lz/g;

    invoke-virtual {v0}, Lo/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    :try_start_31
    iput-object v0, p0, Lo/d;->j:Lo/k;

    move-object v2, v0

    :goto_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_2e

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/k;

    iget-object v1, p0, Lo/d;->k:Lz/g;

    invoke-virtual {v0}, Lo/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/a;

    invoke-virtual {v0, v1}, Lo/k;->a(Lo/a;)V

    goto :goto_39

    :cond_55
    if-eqz v2, :cond_d

    iget-boolean v0, p0, Lo/d;->b:Z

    if-eqz v0, :cond_6b

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/d;->a(Z)Z

    move-result v0

    if-nez v0, :cond_6b

    const-string v0, "AndroidTtsAlertGenerator"

    const-string v1, "Synthesis failed: SDCard is full or unavailable"

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, p0, Lo/d;->b:Z

    :cond_6b
    iget-boolean v0, p0, Lo/d;->b:Z

    if-nez v0, :cond_82

    invoke-direct {p0, v5}, Lo/d;->a(Z)Z

    move-result v0

    if-nez v0, :cond_82

    const-string v0, "AndroidTtsAlertGenerator"

    const-string v1, "Synthesis failed: App storage is full or unavailable"

    invoke-static {v0, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/d;->a()V

    iput-boolean v5, p0, Lo/d;->g:Z

    goto :goto_d

    :cond_82
    iget-object v0, p0, Lo/d;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/d;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lo/d;->b:Z

    invoke-direct {p0, v0, v1}, Lo/d;->a(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lo/k;->a(Ljava/lang/String;Ljava/io/File;)V

    iget-object v3, p0, Lo/d;->l:Lo/W;

    invoke-virtual {v2}, Lo/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lo/W;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lo/d;->e:Lo/X;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v3, v0, v1}, Lo/X;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_d

    const-string v1, "AndroidTtsAlertGenerator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Synthesis failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lo/k;->a()V

    monitor-enter p0

    :try_start_d1
    iget-object v0, p0, Lo/d;->j:Lo/k;

    if-ne v0, v2, :cond_d8

    const/4 v0, 0x0

    iput-object v0, p0, Lo/d;->j:Lo/k;

    :cond_d8
    monitor-exit p0
    :try_end_d9
    .catchall {:try_start_d1 .. :try_end_d9} :catchall_de

    invoke-direct {p0}, Lo/d;->f()V

    goto/16 :goto_d

    :catchall_de
    move-exception v0

    :try_start_df
    monitor-exit p0
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw v0

    :cond_e1
    move-object v2, v1

    goto/16 :goto_34
.end method


# virtual methods
.method public declared-synchronized a(Lo/R;)Lo/a;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lo/d;->k:Lz/g;

    invoke-virtual {p1}, Lo/R;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/a;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .registers 3

    iget-boolean v0, p0, Lo/d;->f:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lo/d;->g:Z

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    monitor-enter p0

    :try_start_a
    iget-object v0, p0, Lo/d;->i:Ljava/util/LinkedList;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lo/d;->i:Ljava/util/LinkedList;

    iget-object v1, p0, Lo/d;->j:Lo/k;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lo/d;->j:Lo/k;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lo/d;->e:Lo/X;

    invoke-interface {v1}, Lo/X;->c()I

    const/4 v1, 0x0

    iput-object v1, p0, Lo/d;->j:Lo/k;

    :cond_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_a .. :try_end_25} :catchall_3b

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/k;

    invoke-virtual {v0}, Lo/k;->a()V

    goto :goto_2b

    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public a(Lo/R;Lo/Q;)V
    .registers 5

    iget-boolean v0, p0, Lo/d;->f:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lo/d;->g:Z

    if-nez v0, :cond_d

    :cond_8
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lo/Q;->a(Lo/R;Lo/a;)V

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lo/d;->k:Lz/g;

    invoke-virtual {p1}, Lo/R;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/g;

    if-eqz v0, :cond_21

    if-eqz p2, :cond_c

    invoke-interface {p2, p1, v0}, Lo/Q;->a(Lo/R;Lo/a;)V

    goto :goto_c

    :cond_21
    new-instance v0, Lo/k;

    invoke-direct {v0, p0, p1, p2}, Lo/k;-><init>(Lo/d;Lo/R;Lo/Q;)V

    invoke-direct {p0, v0}, Lo/d;->a(Lo/k;)V

    goto :goto_c
.end method

.method public a(Lo/j;)V
    .registers 4

    new-instance v0, Lo/Y;

    iget-object v1, p0, Lo/d;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lo/Y;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lo/d;->a(Lo/j;Lo/X;)V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lo/d;->e:Lo/X;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lo/d;->e:Lo/X;

    invoke-interface {v0}, Lo/X;->c()I

    iget-object v0, p0, Lo/d;->e:Lo/X;

    invoke-interface {v0}, Lo/X;->a()V

    :cond_e
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lo/d;->f:Z

    if-nez v1, :cond_10

    monitor-enter p0

    :try_start_6
    iget-boolean v1, p0, Lo/d;->f:Z

    if-nez v1, :cond_f

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1f
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_f} :catch_15

    :cond_f
    :try_start_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_1f

    :cond_10
    iget-boolean v1, p0, Lo/d;->f:Z

    if-nez v1, :cond_22

    :goto_14
    return-object v0

    :catch_15
    move-exception v1

    :try_start_16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    monitor-exit p0

    goto :goto_14

    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_1f

    throw v0

    :cond_22
    iget-object v0, p0, Lo/d;->e:Lo/X;

    invoke-interface {v0}, Lo/X;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method protected d()Landroid/os/StatFs;
    .registers 3

    iget-object v0, p0, Lo/d;->c:Landroid/content/Context;

    invoke-static {v0}, Ln/b;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    goto :goto_9
.end method

.method protected e()Landroid/os/StatFs;
    .registers 3

    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lo/d;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
