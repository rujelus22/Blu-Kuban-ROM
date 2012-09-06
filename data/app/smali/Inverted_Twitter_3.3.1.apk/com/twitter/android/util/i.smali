.class public final Lcom/twitter/android/util/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/twitter/android/util/i;


# instance fields
.field private final b:Landroid/media/AudioManager;

.field private c:Landroid/media/SoundPool;

.field private d:[I

.field private e:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/twitter/android/util/i;->b:Landroid/media/AudioManager;

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/util/i;->e:I

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/twitter/android/util/i;
    .registers 9

    const-class v1, Lcom/twitter/android/util/i;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/twitter/android/util/i;->a:Lcom/twitter/android/util/i;

    if-nez v2, :cond_12

    new-instance v2, Lcom/twitter/android/util/i;

    invoke-direct {v2, v0}, Lcom/twitter/android/util/i;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/twitter/android/util/i;->a:Lcom/twitter/android/util/i;

    :cond_12
    sget-object v2, Lcom/twitter/android/util/i;->a:Lcom/twitter/android/util/i;

    iget v3, v2, Lcom/twitter/android/util/i;->e:I

    if-nez v3, :cond_53

    new-instance v3, Landroid/media/SoundPool;

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/media/SoundPool;-><init>(III)V

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x7f060002

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    const v6, 0x7f060003

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f060001

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x3

    const v6, 0x7f060004

    const/4 v7, 0x1

    invoke-virtual {v3, v0, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    aput v0, v4, v5

    iput-object v4, v2, Lcom/twitter/android/util/i;->d:[I

    iput-object v3, v2, Lcom/twitter/android/util/i;->c:Landroid/media/SoundPool;

    :cond_53
    iget v0, v2, Lcom/twitter/android/util/i;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/twitter/android/util/i;->e:I
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_5b

    monitor-exit v1

    return-object v2

    :catchall_5b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(I)I
    .registers 9

    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    iget-object v0, p0, Lcom/twitter/android/util/i;->c:Landroid/media/SoundPool;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/twitter/android/util/i;->b:Landroid/media/AudioManager;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/twitter/android/util/i;->b:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_13
    iget-object v0, p0, Lcom/twitter/android/util/i;->c:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/twitter/android/util/i;->d:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v4

    :cond_20
    return v4
.end method

.method public final a()V
    .registers 7

    const/4 v5, 0x0

    iget v0, p0, Lcom/twitter/android/util/i;->e:I

    if-lez v0, :cond_b

    iget v0, p0, Lcom/twitter/android/util/i;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/twitter/android/util/i;->e:I

    :cond_b
    iget v0, p0, Lcom/twitter/android/util/i;->e:I

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/twitter/android/util/i;->c:Landroid/media/SoundPool;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/twitter/android/util/i;->d:[I

    array-length v2, v1

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v2, :cond_23

    aget v3, v1, v0

    iget-object v4, p0, Lcom/twitter/android/util/i;->c:Landroid/media/SoundPool;

    invoke-virtual {v4, v3}, Landroid/media/SoundPool;->unload(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_23
    iput-object v5, p0, Lcom/twitter/android/util/i;->c:Landroid/media/SoundPool;

    iput-object v5, p0, Lcom/twitter/android/util/i;->d:[I

    :cond_27
    return-void
.end method
