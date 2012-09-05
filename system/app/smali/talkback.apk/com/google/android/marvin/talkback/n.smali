.class final Lcom/google/android/marvin/talkback/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/android/marvin/talkback/n;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/os/Vibrator;

.field private final d:Landroid/media/SoundPool;

.field private e:Z

.field private f:Z

.field private g:F

.field private final h:Ljava/util/Map;

.field private final i:Ljava/util/Map;

.field private final j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final k:Landroid/media/SoundPool$OnLoadCompleteListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/google/android/marvin/talkback/n;->e:Z

    iput-boolean v3, p0, Lcom/google/android/marvin/talkback/n;->f:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/marvin/talkback/n;->g:F

    new-instance v0, Lcom/google/android/marvin/talkback/x;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/x;-><init>(Lcom/google/android/marvin/talkback/n;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/n;->j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    new-instance v0, Lcom/google/android/marvin/talkback/y;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/y;-><init>(Lcom/google/android/marvin/talkback/n;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/n;->k:Landroid/media/SoundPool$OnLoadCompleteListener;

    iput-object p1, p0, Lcom/google/android/marvin/talkback/n;->b:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/n;->c:Landroid/os/Vibrator;

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/n;->d:Landroid/media/SoundPool;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/n;->i:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/n;->h:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/n;->d:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/n;->k:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/n;->j:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/marvin/talkback/n;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/n;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/marvin/talkback/n;
    .registers 2

    sget-object v0, Lcom/google/android/marvin/talkback/n;->a:Lcom/google/android/marvin/talkback/n;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/marvin/talkback/n;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/n;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/marvin/talkback/n;->a:Lcom/google/android/marvin/talkback/n;

    :cond_b
    sget-object v0, Lcom/google/android/marvin/talkback/n;->a:Lcom/google/android/marvin/talkback/n;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/marvin/talkback/n;)F
    .registers 2

    iget v0, p0, Lcom/google/android/marvin/talkback/n;->g:F

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/n;->c:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/n;->d:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    return-void
.end method

.method public final a(I)V
    .registers 4

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/marvin/talkback/n;->g:F

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/marvin/talkback/n;->e:Z

    return-void
.end method

.method public final a(IF)Z
    .registers 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/n;->f:Z

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return v5

    :cond_7
    iget-object v0, p0, Lcom/google/android/marvin/talkback/n;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_2d

    iget-object v0, p0, Lcom/google/android/marvin/talkback/n;->d:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/n;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/marvin/talkback/n;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v5, v4

    goto :goto_6

    :cond_2d
    iget-object v0, p0, Lcom/google/android/marvin/talkback/n;->d:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Lcom/google/android/marvin/talkback/n;->g:F

    iget v3, p0, Lcom/google/android/marvin/talkback/n;->g:F

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    if-eqz v0, :cond_6

    move v5, v4

    goto :goto_6
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/n;->c:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/n;->d:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method public final b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/marvin/talkback/n;->f:Z

    return-void
.end method

.method public final b(I)Z
    .registers 8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/n;->e:Z

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return v1

    :cond_6
    iget-object v0, p0, Lcom/google/android/marvin/talkback/n;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/marvin/talkback/n;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v0, v3

    new-array v2, v0, [J

    move v0, v1

    :goto_24
    array-length v1, v2

    if-lt v0, v1, :cond_39

    iget-object v0, p0, Lcom/google/android/marvin/talkback/n;->h:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    :cond_31
    iget-object v1, p0, Lcom/google/android/marvin/talkback/n;->c:Landroid/os/Vibrator;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    const/4 v1, 0x1

    goto :goto_5

    :cond_39
    aget v1, v3, v0

    int-to-long v4, v1

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_24
.end method
