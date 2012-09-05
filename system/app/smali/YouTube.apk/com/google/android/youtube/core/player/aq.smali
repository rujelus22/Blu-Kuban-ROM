.class public final Lcom/google/android/youtube/core/player/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;

.field private static final b:Ljava/util/Set;


# instance fields
.field private A:Z

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/youtube/core/player/PlayerView;

.field private final e:Landroid/view/SurfaceHolder;

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;

.field private final g:Lcom/google/android/youtube/core/player/aw;

.field private h:Lcom/google/android/youtube/core/utils/i;

.field private i:Lcom/google/android/youtube/core/player/av;

.field private j:Z

.field private volatile k:Z

.field private volatile l:Z

.field private volatile m:Z

.field private volatile n:Z

.field private volatile o:Z

.field private volatile p:Z

.field private volatile q:Z

.field private volatile r:I

.field private s:Z

.field private t:Lcom/google/android/youtube/core/model/Stream;

.field private u:Lcom/google/android/youtube/core/model/Stream;

.field private v:Z

.field private final w:Lcom/google/android/youtube/core/player/at;

.field private final x:Ljava/util/ArrayList;

.field private final y:Lcom/google/android/youtube/core/player/ax;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 136
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 137
    const/16 v1, -0x3e81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    const/16 v1, -0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    const/16 v1, -0x7d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    const/16 v1, -0x7d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    const/16 v1, -0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    const/16 v1, -0xbb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    const/16 v1, -0xbba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    const/16 v1, -0xbbb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    const/16 v1, -0xbbc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    const/16 v1, -0xbbd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    const/16 v1, -0xbbe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/aq;->b:Ljava/util/Set;

    .line 155
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 156
    const-string v1, "video/mp4"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v1, "video/3gpp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 158
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/aq;->a:Ljava/util/Set;

    .line 159
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/player/PlayerView;)V
    .registers 4
    .parameter

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aq;->c:Landroid/content/Context;

    .line 216
    iput-object p1, p0, Lcom/google/android/youtube/core/player/aq;->d:Lcom/google/android/youtube/core/player/PlayerView;

    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->d:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/PlayerView;->a()Landroid/view/SurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aq;->e:Landroid/view/SurfaceHolder;

    .line 219
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aq;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 221
    new-instance v0, Lcom/google/android/youtube/core/player/at;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/at;-><init>(Lcom/google/android/youtube/core/player/aq;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aq;->w:Lcom/google/android/youtube/core/player/at;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aq;->x:Ljava/util/ArrayList;

    .line 224
    new-instance v0, Lcom/google/android/youtube/core/player/aw;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/aw;-><init>(Lcom/google/android/youtube/core/player/aq;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aq;->g:Lcom/google/android/youtube/core/player/aw;

    .line 225
    new-instance v0, Lcom/google/android/youtube/core/player/ax;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/ax;-><init>(Lcom/google/android/youtube/core/player/aq;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aq;->y:Lcom/google/android/youtube/core/player/ax;

    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->c:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/aq;->j()Lcom/google/android/youtube/core/player/av;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aq;->i:Lcom/google/android/youtube/core/player/av;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->e:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aq;->w:Lcom/google/android/youtube/core/player/at;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->e:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->d:Lcom/google/android/youtube/core/player/PlayerView;

    new-instance v1, Lcom/google/android/youtube/core/player/as;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/as;-><init>(Lcom/google/android/youtube/core/player/aq;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/PlayerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->g:Lcom/google/android/youtube/core/player/aw;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aw;->start()V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->y:Lcom/google/android/youtube/core/player/ax;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/ax;->start()V

    .line 228
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/aq;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/aq;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/aq;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/aq;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-static {v0, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :cond_1c
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/aq;III)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, p1, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :cond_1f
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/aq;Landroid/media/MediaPlayer;Landroid/net/Uri;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-eqz p1, :cond_a3

    if-eqz p2, :cond_a3

    :try_start_9
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->e:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/aq;->j:Z

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/aq;->s:Z

    if-nez v1, :cond_22

    const-string v1, "x-disconnect-at-highwatermark"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aq;->c:Landroid/content/Context;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_87

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2d} :catch_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_2d} :catch_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_2d} :catch_9c

    move-result v2

    if-nez v2, :cond_87

    :try_start_30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setDataSource"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/net/Uri;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/util/Map;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_30 .. :try_end_5b} :catch_67
    .catch Ljava/lang/NoSuchMethodException; {:try_start_30 .. :try_end_5b} :catch_81
    .catch Ljava/lang/IllegalAccessException; {:try_start_30 .. :try_end_5b} :catch_95
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_5b} :catch_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_5b} :catch_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_5b} :catch_9c

    :goto_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/aq;->c(Z)V

    :goto_66
    return-void

    :catch_67
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/IOException;

    if-eqz v2, :cond_87

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_77} :catch_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_77} :catch_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_5b .. :try_end_77} :catch_9c

    :catch_77
    move-exception v0

    const-string v1, "Media Player error preparing video"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/aq;->a(Ljava/lang/Exception;)V

    goto :goto_66

    :catch_81
    move-exception v0

    :try_start_82
    const-string v2, "invoke failed"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_87
    :goto_87
    invoke-virtual {p1, v1, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_8a} :catch_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_82 .. :try_end_8a} :catch_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_82 .. :try_end_8a} :catch_9c

    goto :goto_5b

    :catch_8b
    move-exception v0

    const-string v1, "Media Player error preparing video"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/aq;->a(Ljava/lang/Exception;)V

    goto :goto_66

    :catch_95
    move-exception v0

    :try_start_96
    const-string v2, "invoke failed"

    invoke-static {v2, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_9b} :catch_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_96 .. :try_end_9b} :catch_8b
    .catch Ljava/lang/IllegalStateException; {:try_start_96 .. :try_end_9b} :catch_9c

    goto :goto_87

    :catch_9c
    move-exception v0

    const-string v1, "Error calling mediaPlayer"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_66

    :cond_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media Player null pointer preparing video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/aq;->a(Ljava/lang/Exception;)V

    goto :goto_66
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/aq;Lcom/google/android/youtube/core/model/Stream;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/aq;->c(Lcom/google/android/youtube/core/model/Stream;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 5
    .parameter

    .prologue
    .line 891
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 892
    const/16 v2, 0x9

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 894
    :cond_1c
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/aq;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/aq;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/aq;Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Stream;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aq;->t:Lcom/google/android/youtube/core/model/Stream;

    return-object v0
.end method

.method private b(I)V
    .registers 4
    .parameter

    .prologue
    .line 885
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 886
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 888
    :cond_16
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/aq;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/aq;->k()Z

    move-result v1

    if-eqz v1, :cond_33

    :try_start_10
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aq;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-static {v1, v3, p1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2c
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_2c} :catch_2d

    goto :goto_16

    :catch_2d
    move-exception v0

    const-string v1, "Error calling mediaPlayer"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    return-void

    :cond_34
    :try_start_34
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->y:Lcom/google/android/youtube/core/player/ax;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ax;->a(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_34 .. :try_end_40} :catch_2d

    goto :goto_33
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/aq;)Z
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->s:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/aq;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->m:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/aq;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/player/aq;->r:I

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/utils/i;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->h:Lcom/google/android/youtube/core/utils/i;

    return-object v0
.end method

.method private c(Lcom/google/android/youtube/core/model/Stream;)V
    .registers 5
    .parameter

    .prologue
    .line 327
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 328
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->g:Lcom/google/android/youtube/core/player/aw;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aw;->c()V

    .line 329
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->v:Z

    if-nez v0, :cond_f

    .line 330
    iput-object p1, p0, Lcom/google/android/youtube/core/player/aq;->t:Lcom/google/android/youtube/core/model/Stream;

    .line 352
    :goto_e
    return-void

    .line 335
    :cond_f
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/aq;->d(Z)V

    .line 337
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->i:Lcom/google/android/youtube/core/player/av;

    if-nez v0, :cond_1d

    .line 338
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/aq;->j()Lcom/google/android/youtube/core/player/av;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aq;->i:Lcom/google/android/youtube/core/player/av;

    .line 341
    :cond_1d
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->i:Lcom/google/android/youtube/core/player/av;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/av;->a(Lcom/google/android/youtube/core/model/Stream;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 342
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 343
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aq;->w:Lcom/google/android/youtube/core/player/at;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 344
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aq;->w:Lcom/google/android/youtube/core/player/at;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 345
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aq;->w:Lcom/google/android/youtube/core/player/at;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 346
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aq;->w:Lcom/google/android/youtube/core/player/at;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 347
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aq;->w:Lcom/google/android/youtube/core/player/at;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 348
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aq;->w:Lcom/google/android/youtube/core/player/at;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 349
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aq;->w:Lcom/google/android/youtube/core/player/at;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 351
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aq;->g:Lcom/google/android/youtube/core/player/aw;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/core/player/aw;->a(Landroid/media/MediaPlayer;Landroid/net/Uri;)V

    goto :goto_e
.end method

.method private c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->l:Z

    if-eqz v0, :cond_5

    .line 547
    :cond_4
    :goto_4
    return-void

    .line 543
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->o:Z

    if-eq v0, p1, :cond_4

    .line 544
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/aq;->o:Z

    .line 545
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->o:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x6

    :goto_10
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/aq;->b(I)V

    goto :goto_4

    :cond_14
    const/4 v0, 0x7

    goto :goto_10
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/aq;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/aq;->p:Z

    return p1
.end method

.method static synthetic d(Lcom/google/android/youtube/core/player/aq;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->m:Z

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->n:Z

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/aq;->c(Z)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aq;->y:Lcom/google/android/youtube/core/player/ax;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/ax;->b()V

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/aq;->p:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/aq;->q:Z

    if-nez v1, :cond_27

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/aq;->b(I)V

    :cond_27
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_2a
    return-void
.end method

.method static synthetic d(Lcom/google/android/youtube/core/player/aq;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/aq;->c(Z)V

    return-void
.end method

.method private d(Z)V
    .registers 4
    .parameter

    .prologue
    .line 922
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/aq;->A:Z

    .line 923
    iget-object v1, p0, Lcom/google/android/youtube/core/player/aq;->d:Lcom/google/android/youtube/core/player/PlayerView;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->z:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->A:Z

    if-eqz v0, :cond_11

    :cond_c
    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/player/PlayerView;->setKeepScreenOn(Z)V

    .line 924
    return-void

    .line 923
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic e(Lcom/google/android/youtube/core/player/aq;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    :try_start_d
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/aq;->l:Z

    if-eqz v1, :cond_31

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/aq;->n:Z

    if-nez v1, :cond_1f

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/aq;->m:Z

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->n:Z

    :cond_1f
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->q:Z

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/aq;->k()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/aq;->b(I)V

    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->q:Z

    :cond_30
    :goto_30
    return-void

    :cond_31
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/aq;->k()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/youtube/core/player/aq;->y:Lcom/google/android/youtube/core/player/ax;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/ax;->a(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_46
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->n:Z

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->q:Z

    if-nez v0, :cond_54

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/aq;->b(I)V

    :cond_54
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->y:Lcom/google/android/youtube/core/player/ax;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/ax;->a()V
    :try_end_59
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_59} :catch_5a

    goto :goto_2d

    :catch_5a
    move-exception v0

    const-string v1, "Error calling mediaPlayer"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30
.end method

.method static synthetic e(Lcom/google/android/youtube/core/player/aq;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/aq;->d(Z)V

    return-void
.end method

.method static synthetic f(Lcom/google/android/youtube/core/player/aq;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/aq;->k()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    :try_start_13
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->n:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/aq;->b(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/aq;->c(Z)V
    :try_end_21
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_21} :catch_22

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v0

    const-string v1, "Error calling mediaPlayer"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21
.end method

.method static synthetic f(Lcom/google/android/youtube/core/player/aq;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->k:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/model/Stream;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->t:Lcom/google/android/youtube/core/model/Stream;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/core/player/aq;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->n:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/youtube/core/player/aq;)Z
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->p:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/youtube/core/player/aq;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/aq;->q:Z

    return p1
.end method

.method static synthetic i()Ljava/util/Set;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/youtube/core/player/aq;->b:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/youtube/core/player/aq;)Z
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->q:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/youtube/core/player/aq;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->s:Z

    return v0
.end method

.method static synthetic j(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/player/PlayerView;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->d:Lcom/google/android/youtube/core/player/PlayerView;

    return-object v0
.end method

.method private j()Lcom/google/android/youtube/core/player/av;
    .registers 2

    .prologue
    .line 239
    new-instance v0, Lcom/google/android/youtube/core/player/ar;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/ar;-><init>(Lcom/google/android/youtube/core/player/aq;)V

    return-object v0
.end method

.method private k()Z
    .registers 2

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->m:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->k:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic k(Lcom/google/android/youtube/core/player/aq;)Z
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->k:Z

    return v0
.end method

.method static synthetic l(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/player/ax;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->y:Lcom/google/android/youtube/core/player/ax;

    return-object v0
.end method

.method static synthetic m(Lcom/google/android/youtube/core/player/aq;)Z
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->m:Z

    return v0
.end method

.method static synthetic n(Lcom/google/android/youtube/core/player/aq;)I
    .registers 3
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/youtube/core/player/aq;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/youtube/core/player/aq;->r:I

    return v0
.end method

.method static synthetic o(Lcom/google/android/youtube/core/player/aq;)I
    .registers 2
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/youtube/core/player/aq;->r:I

    return v0
.end method

.method static synthetic p(Lcom/google/android/youtube/core/player/aq;)Z
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->l:Z

    return v0
.end method

.method static synthetic q(Lcom/google/android/youtube/core/player/aq;)Lcom/google/android/youtube/core/model/Stream;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->u:Lcom/google/android/youtube/core/model/Stream;

    return-object v0
.end method

.method static synthetic r(Lcom/google/android/youtube/core/player/aq;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/player/PlayerView;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->d:Lcom/google/android/youtube/core/player/PlayerView;

    return-object v0
.end method

.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->l:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->y:Lcom/google/android/youtube/core/player/ax;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ax;->a(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, p1, :cond_28

    .line 472
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->g:Lcom/google/android/youtube/core/player/aw;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/youtube/core/player/aq;->y:Lcom/google/android/youtube/core/player/ax;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/ax;->b(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/aw;->a(I)V

    .line 474
    :cond_28
    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .registers 3
    .parameter

    .prologue
    .line 871
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Stream;)V
    .registers 3
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->u:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/model/Stream;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->y:Lcom/google/android/youtube/core/player/ax;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ax;->a(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_12
    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/player/aq;->a(Lcom/google/android/youtube/core/model/Stream;I)V

    .line 312
    return-void

    .line 311
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final a(Lcom/google/android/youtube/core/model/Stream;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 297
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->k:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->u:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/model/Stream;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->k:Z

    .line 298
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/aq;->l:Z

    .line 299
    iput-object p1, p0, Lcom/google/android/youtube/core/player/aq;->u:Lcom/google/android/youtube/core/model/Stream;

    .line 300
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->y:Lcom/google/android/youtube/core/player/ax;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ax;->a(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 301
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/aq;->c(Lcom/google/android/youtube/core/model/Stream;)V

    .line 302
    return-void

    :cond_21
    move v0, v1

    .line 297
    goto :goto_e
.end method

.method public final a(Lcom/google/android/youtube/core/utils/i;)V
    .registers 3
    .parameter

    .prologue
    .line 254
    const-string v0, "networkStatus cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/i;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/aq;->h:Lcom/google/android/youtube/core/utils/i;

    .line 255
    return-void
.end method

.method public final a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 258
    if-eqz p1, :cond_c

    .line 259
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->h:Lcom/google/android/youtube/core/utils/i;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    const-string v1, "must call setNetworkStatus before enableAwfulPlayer"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/k;->b(ZLjava/lang/Object;)V

    .line 261
    :cond_c
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/aq;->s:Z

    .line 262
    return-void

    .line 259
    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final b(Lcom/google/android/youtube/core/model/Stream;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 318
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->l:Z

    .line 319
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/aq;->k:Z

    .line 320
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/aq;->s:Z

    .line 321
    iput-object p1, p0, Lcom/google/android/youtube/core/player/aq;->u:Lcom/google/android/youtube/core/model/Stream;

    .line 322
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->y:Lcom/google/android/youtube/core/player/ax;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ax;->a(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 323
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/aq;->c(Lcom/google/android/youtube/core/model/Stream;)V

    .line 324
    return-void
.end method

.method public final b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 265
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/aq;->j:Z

    .line 266
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/aq;->n:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->y:Lcom/google/android/youtube/core/player/ax;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/ax;->a(Lcom/google/android/youtube/core/player/ax;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->g:Lcom/google/android/youtube/core/player/aw;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aw;->a()V

    .line 405
    return-void
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->g:Lcom/google/android/youtube/core/player/aw;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aw;->b()V

    .line 450
    return-void
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->g:Lcom/google/android/youtube/core/player/aw;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aw;->c()V

    .line 492
    return-void
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->g:Lcom/google/android/youtube/core/player/aw;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aw;->d()V

    .line 496
    return-void
.end method

.method public final h()V
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->y:Lcom/google/android/youtube/core/player/ax;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/ax;->c()V

    .line 551
    iget-object v0, p0, Lcom/google/android/youtube/core/player/aq;->g:Lcom/google/android/youtube/core/player/aw;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/aw;->e()V

    .line 552
    return-void
.end method
