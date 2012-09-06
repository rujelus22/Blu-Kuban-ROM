.class public final Lcom/google/android/youtube/core/player/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:Ljava/util/Set;

.field private static final i:Ljava/util/Set;


# instance fields
.field private A:Z

.field private B:Lcom/google/android/youtube/core/model/Stream;

.field private C:Lcom/google/android/youtube/core/model/Stream;

.field private D:Z

.field private final E:Lcom/google/android/youtube/core/player/bl;

.field private final F:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final G:Lcom/google/android/youtube/core/player/bp;

.field private H:Z

.field private I:Z

.field private final j:Landroid/content/Context;

.field private final k:Lcom/google/android/youtube/core/j;

.field private final l:Lcom/google/android/youtube/core/player/PlayerView;

.field private final m:Lcom/google/android/youtube/core/c;

.field private final n:Ljava/util/concurrent/atomic/AtomicReference;

.field private final o:Lcom/google/android/youtube/core/player/bo;

.field private p:Lcom/google/android/youtube/core/utils/k;

.field private q:Lcom/google/android/youtube/core/player/bn;

.field private r:Z

.field private volatile s:Z

.field private volatile t:Z

.field private volatile u:Z

.field private volatile v:Z

.field private volatile w:Z

.field private volatile x:Z

.field private volatile y:Z

.field private volatile z:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, -0xbb8

    .line 123
    invoke-static {}, Lcom/google/android/youtube/core/utils/Util;->b()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_ba

    .line 125
    const/16 v0, -0xbb6

    sput v0, Lcom/google/android/youtube/core/player/bi;->a:I

    .line 126
    const/16 v0, -0xbb5

    sput v0, Lcom/google/android/youtube/core/player/bi;->b:I

    .line 127
    const/16 v0, -0xbb4

    sput v0, Lcom/google/android/youtube/core/player/bi;->c:I

    .line 128
    const/16 v0, -0xbb3

    sput v0, Lcom/google/android/youtube/core/player/bi;->d:I

    .line 129
    const/16 v0, -0xbb2

    sput v0, Lcom/google/android/youtube/core/player/bi;->e:I

    .line 130
    const/16 v0, -0xbb1

    sput v0, Lcom/google/android/youtube/core/player/bi;->f:I

    .line 131
    sput v2, Lcom/google/android/youtube/core/player/bi;->g:I

    .line 163
    :goto_24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 164
    const/16 v1, -0x3e81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    const/16 v1, -0x3f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 166
    const/16 v1, -0x7d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    const/16 v1, -0x7d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 168
    sget v1, Lcom/google/android/youtube/core/player/bi;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    sget v1, Lcom/google/android/youtube/core/player/bi;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    sget v1, Lcom/google/android/youtube/core/player/bi;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    sget v1, Lcom/google/android/youtube/core/player/bi;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    sget v1, Lcom/google/android/youtube/core/player/bi;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    sget v1, Lcom/google/android/youtube/core/player/bi;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    sget v1, Lcom/google/android/youtube/core/player/bi;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/bi;->i:Ljava/util/Set;

    .line 182
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 183
    const-string v1, "video/mp4"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 184
    const-string v1, "video/3gpp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 185
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/player/bi;->h:Ljava/util/Set;

    .line 186
    return-void

    .line 134
    :cond_ba
    sput v2, Lcom/google/android/youtube/core/player/bi;->a:I

    .line 135
    const/16 v0, -0xbb9

    sput v0, Lcom/google/android/youtube/core/player/bi;->b:I

    .line 136
    const/16 v0, -0xbba

    sput v0, Lcom/google/android/youtube/core/player/bi;->c:I

    .line 137
    const/16 v0, -0xbbb

    sput v0, Lcom/google/android/youtube/core/player/bi;->d:I

    .line 138
    const/16 v0, -0xbbc

    sput v0, Lcom/google/android/youtube/core/player/bi;->e:I

    .line 139
    const/16 v0, -0xbbd

    sput v0, Lcom/google/android/youtube/core/player/bi;->f:I

    .line 140
    const/16 v0, -0xbbe

    sput v0, Lcom/google/android/youtube/core/player/bi;->g:I

    goto/16 :goto_24
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/player/PlayerView;Lcom/google/android/youtube/core/c;Lcom/google/android/youtube/core/j;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const-string v0, "config cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/c;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bi;->m:Lcom/google/android/youtube/core/c;

    .line 244
    const-string v0, "platformUtil cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/j;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bi;->k:Lcom/google/android/youtube/core/j;

    .line 245
    invoke-virtual {p1}, Lcom/google/android/youtube/core/player/PlayerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bi;->j:Landroid/content/Context;

    .line 246
    iput-object p1, p0, Lcom/google/android/youtube/core/player/bi;->l:Lcom/google/android/youtube/core/player/PlayerView;

    .line 248
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bi;->n:Ljava/util/concurrent/atomic/AtomicReference;

    .line 250
    new-instance v0, Lcom/google/android/youtube/core/player/bl;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/player/bl;-><init>(Lcom/google/android/youtube/core/player/bi;B)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bi;->E:Lcom/google/android/youtube/core/player/bl;

    .line 251
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bi;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 253
    new-instance v0, Lcom/google/android/youtube/core/player/bo;

    invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/core/player/bo;-><init>(Lcom/google/android/youtube/core/player/bi;B)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bi;->o:Lcom/google/android/youtube/core/player/bo;

    .line 254
    new-instance v0, Lcom/google/android/youtube/core/player/bp;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/bp;-><init>(Lcom/google/android/youtube/core/player/bi;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bi;->G:Lcom/google/android/youtube/core/player/bp;

    .line 256
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->j:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/bi;->k()Lcom/google/android/youtube/core/player/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bi;->q:Lcom/google/android/youtube/core/player/bn;

    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->l:Lcom/google/android/youtube/core/player/PlayerView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->E:Lcom/google/android/youtube/core/player/bl;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/bi;->k:Lcom/google/android/youtube/core/j;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/player/PlayerView;->a(Lcom/google/android/youtube/core/player/al;Lcom/google/android/youtube/core/j;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->l:Lcom/google/android/youtube/core/player/PlayerView;

    new-instance v1, Lcom/google/android/youtube/core/player/bk;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/core/player/bk;-><init>(Lcom/google/android/youtube/core/player/bi;)V

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/PlayerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->o:Lcom/google/android/youtube/core/player/bo;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bo;->start()V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->G:Lcom/google/android/youtube/core/player/bp;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bp;->start()V

    .line 257
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/bi;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/bi;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/bi;II)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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

.method static synthetic a(Lcom/google/android/youtube/core/player/bi;III)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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

.method static synthetic a(Lcom/google/android/youtube/core/player/bi;Landroid/media/MediaPlayer;Landroid/net/Uri;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    if-eqz p1, :cond_a3

    if-eqz p2, :cond_a3

    :try_start_9
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->l:Lcom/google/android/youtube/core/player/PlayerView;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/player/PlayerView;->a(Landroid/media/MediaPlayer;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/bi;->r:Z

    if-eqz v1, :cond_22

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/bi;->A:Z

    if-nez v1, :cond_22

    const-string v1, "x-disconnect-at-highwatermark"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->j:Landroid/content/Context;

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

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/bi;->c(Z)V

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

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/bi;->a(Ljava/lang/Exception;)V

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

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/bi;->a(Ljava/lang/Exception;)V

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

    const-string v1, "Media Player null pointer preparing video "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/bi;->a(Ljava/lang/Exception;)V

    goto :goto_66
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/bi;Lcom/google/android/youtube/core/model/Stream;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/bi;->c(Lcom/google/android/youtube/core/model/Stream;)V

    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .registers 5
    .parameter

    .prologue
    .line 948
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 949
    const/16 v2, 0x9

    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 951
    :cond_1c
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/bi;)Z
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->A:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/player/bi;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/bi;->D:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/c;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->m:Lcom/google/android/youtube/core/c;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/bi;Lcom/google/android/youtube/core/model/Stream;)Lcom/google/android/youtube/core/model/Stream;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bi;->B:Lcom/google/android/youtube/core/model/Stream;

    return-object v0
.end method

.method private b(I)V
    .registers 4
    .parameter

    .prologue
    .line 942
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 943
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 945
    :cond_16
    return-void
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/bi;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_33

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/bi;->l()Z

    move-result v1

    if-eqz v1, :cond_33

    :try_start_10
    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

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

    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->G:Lcom/google/android/youtube/core/player/bp;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bp;->a(Lcom/google/android/youtube/core/player/bp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_40
    .catch Ljava/lang/IllegalStateException; {:try_start_34 .. :try_end_40} :catch_2d

    goto :goto_33
.end method

.method static synthetic b(Lcom/google/android/youtube/core/player/bi;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->u:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/utils/k;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->p:Lcom/google/android/youtube/core/utils/k;

    return-object v0
.end method

.method private c(Lcom/google/android/youtube/core/model/Stream;)V
    .registers 5
    .parameter

    .prologue
    .line 364
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    .line 365
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->o:Lcom/google/android/youtube/core/player/bo;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bo;->c()V

    .line 366
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->D:Z

    if-nez v0, :cond_f

    .line 367
    iput-object p1, p0, Lcom/google/android/youtube/core/player/bi;->B:Lcom/google/android/youtube/core/model/Stream;

    .line 394
    :goto_e
    return-void

    .line 372
    :cond_f
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/bi;->d(Z)V

    .line 374
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->q:Lcom/google/android/youtube/core/player/bn;

    if-nez v0, :cond_1d

    .line 375
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/bi;->k()Lcom/google/android/youtube/core/player/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bi;->q:Lcom/google/android/youtube/core/player/bn;

    .line 379
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->q:Lcom/google/android/youtube/core/player/bn;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/player/bn;->a(Lcom/google/android/youtube/core/model/Stream;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 380
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 381
    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->E:Lcom/google/android/youtube/core/player/bl;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 382
    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->E:Lcom/google/android/youtube/core/player/bl;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 383
    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->E:Lcom/google/android/youtube/core/player/bl;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 384
    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->E:Lcom/google/android/youtube/core/player/bl;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 385
    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->E:Lcom/google/android/youtube/core/player/bl;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 386
    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->E:Lcom/google/android/youtube/core/player/bl;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 387
    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->E:Lcom/google/android/youtube/core/player/bl;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 389
    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->o:Lcom/google/android/youtube/core/player/bo;

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Stream;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/youtube/core/player/bo;->a(Landroid/media/MediaPlayer;Landroid/net/Uri;)V
    :try_end_51
    .catch Ljava/lang/InstantiationException; {:try_start_1d .. :try_end_51} :catch_52

    goto :goto_e

    .line 390
    :catch_52
    move-exception v0

    .line 391
    const-string v1, "Factory failed to create a MediaPlayer for the stream"

    invoke-static {v1}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/bi;->a(Ljava/lang/Exception;)V

    goto :goto_e
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/bi;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-static {v0, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :cond_1d
    return-void
.end method

.method private c(Z)V
    .registers 3
    .parameter

    .prologue
    .line 588
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->t:Z

    if-eqz v0, :cond_5

    .line 596
    :cond_4
    :goto_4
    return-void

    .line 592
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->w:Z

    if-eq v0, p1, :cond_4

    .line 593
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/bi;->w:Z

    .line 594
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->w:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x6

    :goto_10
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/bi;->b(I)V

    goto :goto_4

    :cond_14
    const/4 v0, 0x7

    goto :goto_10
.end method

.method static synthetic c(Lcom/google/android/youtube/core/player/bi;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/bi;->x:Z

    return p1
.end method

.method static synthetic d(Lcom/google/android/youtube/core/player/bi;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/youtube/core/player/bi;->z:I

    return v0
.end method

.method static synthetic d(Lcom/google/android/youtube/core/player/bi;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->u:Z

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->v:Z

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/bi;->c(Z)V

    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->n:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->G:Lcom/google/android/youtube/core/player/bp;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/player/bp;->b()V

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/bi;->x:Z

    if-nez v1, :cond_27

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/bi;->y:Z

    if-nez v1, :cond_27

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/player/bi;->b(I)V

    :cond_27
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_2a
    return-void
.end method

.method static synthetic d(Lcom/google/android/youtube/core/player/bi;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/bi;->c(Z)V

    return-void
.end method

.method private d(Z)V
    .registers 4
    .parameter

    .prologue
    .line 986
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/bi;->I:Z

    .line 987
    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->l:Lcom/google/android/youtube/core/player/PlayerView;

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->H:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->I:Z

    if-eqz v0, :cond_11

    :cond_c
    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/player/PlayerView;->setKeepScreenOn(Z)V

    .line 988
    return-void

    .line 987
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic e(Lcom/google/android/youtube/core/player/bi;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    :try_start_d
    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/bi;->t:Z

    if-eqz v1, :cond_31

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/bi;->v:Z

    if-nez v1, :cond_1f

    iget-boolean v1, p0, Lcom/google/android/youtube/core/player/bi;->u:Z

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->v:Z

    :cond_1f
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->y:Z

    if-nez v0, :cond_2d

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/bi;->l()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/bi;->b(I)V

    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->y:Z

    :cond_30
    :goto_30
    return-void

    :cond_31
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/bi;->l()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->G:Lcom/google/android/youtube/core/player/bp;

    invoke-static {v1}, Lcom/google/android/youtube/core/player/bp;->a(Lcom/google/android/youtube/core/player/bp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_46
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->v:Z

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->y:Z

    if-nez v0, :cond_54

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/bi;->b(I)V

    :cond_54
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->G:Lcom/google/android/youtube/core/player/bp;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bp;->a()V
    :try_end_59
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_59} :catch_5a

    goto :goto_2d

    :catch_5a
    move-exception v0

    const-string v1, "Error calling mediaPlayer"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30
.end method

.method static synthetic e(Lcom/google/android/youtube/core/player/bi;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/bi;->d(Z)V

    return-void
.end method

.method static synthetic f(Lcom/google/android/youtube/core/player/bi;)V
    .registers 3
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-eqz v0, :cond_21

    invoke-direct {p0}, Lcom/google/android/youtube/core/player/bi;->l()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-static {}, Lcom/google/android/youtube/core/L;->e()V

    :try_start_13
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->v:Z

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/bi;->b(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/bi;->c(Z)V
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

.method static synthetic f(Lcom/google/android/youtube/core/player/bi;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->s:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/model/Stream;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->B:Lcom/google/android/youtube/core/model/Stream;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/core/player/bi;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->v:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/youtube/core/player/bi;)Z
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->x:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/youtube/core/player/bi;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/bi;->y:Z

    return p1
.end method

.method static synthetic i(Lcom/google/android/youtube/core/player/bi;)Z
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->y:Z

    return v0
.end method

.method static synthetic i(Lcom/google/android/youtube/core/player/bi;Z)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->A:Z

    return v0
.end method

.method static synthetic j(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/player/PlayerView;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->l:Lcom/google/android/youtube/core/player/PlayerView;

    return-object v0
.end method

.method static synthetic j()Ljava/util/Set;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/youtube/core/player/bi;->i:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic k(Lcom/google/android/youtube/core/player/bi;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->j:Landroid/content/Context;

    return-object v0
.end method

.method private k()Lcom/google/android/youtube/core/player/bn;
    .registers 2

    .prologue
    .line 268
    new-instance v0, Lcom/google/android/youtube/core/player/bj;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/player/bj;-><init>(Lcom/google/android/youtube/core/player/bi;)V

    return-object v0
.end method

.method private l()Z
    .registers 2

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->u:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->s:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic l(Lcom/google/android/youtube/core/player/bi;)Z
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->s:Z

    return v0
.end method

.method static synthetic m(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/player/bp;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->G:Lcom/google/android/youtube/core/player/bp;

    return-object v0
.end method

.method static synthetic n(Lcom/google/android/youtube/core/player/bi;)Z
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->u:Z

    return v0
.end method

.method static synthetic o(Lcom/google/android/youtube/core/player/bi;)I
    .registers 3
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/youtube/core/player/bi;->z:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/youtube/core/player/bi;->z:I

    return v0
.end method

.method static synthetic p(Lcom/google/android/youtube/core/player/bi;)I
    .registers 2
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/youtube/core/player/bi;->z:I

    return v0
.end method

.method static synthetic q(Lcom/google/android/youtube/core/player/bi;)Z
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->t:Z

    return v0
.end method

.method static synthetic r(Lcom/google/android/youtube/core/player/bi;)Lcom/google/android/youtube/core/model/Stream;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->C:Lcom/google/android/youtube/core/model/Stream;

    return-object v0
.end method

.method static synthetic s(Lcom/google/android/youtube/core/player/bi;)Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->n:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/player/PlayerView;
    .registers 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->l:Lcom/google/android/youtube/core/player/PlayerView;

    return-object v0
.end method

.method public final a(I)V
    .registers 5
    .parameter

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->t:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->G:Lcom/google/android/youtube/core/player/bp;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bp;->a(Lcom/google/android/youtube/core/player/bp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq v0, p1, :cond_28

    .line 521
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->o:Lcom/google/android/youtube/core/player/bo;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/youtube/core/player/bi;->G:Lcom/google/android/youtube/core/player/bp;

    invoke-static {v2}, Lcom/google/android/youtube/core/player/bp;->b(Lcom/google/android/youtube/core/player/bp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/player/bo;->a(I)V

    .line 523
    :cond_28
    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .registers 3
    .parameter

    .prologue
    .line 928
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->F:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 929
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/model/Stream;)V
    .registers 3
    .parameter

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->C:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/model/Stream;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->G:Lcom/google/android/youtube/core/player/bp;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bp;->a(Lcom/google/android/youtube/core/player/bp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    :goto_12
    invoke-virtual {p0, p1, v0}, Lcom/google/android/youtube/core/player/bi;->a(Lcom/google/android/youtube/core/model/Stream;I)V

    .line 348
    return-void

    .line 347
    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final a(Lcom/google/android/youtube/core/model/Stream;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->s:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->C:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/model/Stream;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->s:Z

    .line 331
    iput-boolean v1, p0, Lcom/google/android/youtube/core/player/bi;->t:Z

    .line 332
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->C:Lcom/google/android/youtube/core/model/Stream;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/model/Stream;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->C:Lcom/google/android/youtube/core/model/Stream;

    if-eqz v0, :cond_27

    .line 333
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->l:Lcom/google/android/youtube/core/player/PlayerView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->E:Lcom/google/android/youtube/core/player/bl;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/bi;->k:Lcom/google/android/youtube/core/j;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/player/PlayerView;->a(Lcom/google/android/youtube/core/player/al;Lcom/google/android/youtube/core/j;)V

    .line 335
    :cond_27
    iput-object p1, p0, Lcom/google/android/youtube/core/player/bi;->C:Lcom/google/android/youtube/core/model/Stream;

    .line 336
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->G:Lcom/google/android/youtube/core/player/bp;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bp;->a(Lcom/google/android/youtube/core/player/bp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 337
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/bi;->c(Lcom/google/android/youtube/core/model/Stream;)V

    .line 338
    return-void

    :cond_36
    move v0, v1

    .line 330
    goto :goto_e
.end method

.method public final a(Lcom/google/android/youtube/core/player/bn;)V
    .registers 3
    .parameter

    .prologue
    .line 264
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/bn;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bi;->q:Lcom/google/android/youtube/core/player/bn;

    .line 265
    return-void
.end method

.method public final a(Lcom/google/android/youtube/core/utils/k;)V
    .registers 3
    .parameter

    .prologue
    .line 290
    const-string v0, "networkStatus cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/k;

    iput-object v0, p0, Lcom/google/android/youtube/core/player/bi;->p:Lcom/google/android/youtube/core/utils/k;

    .line 291
    return-void
.end method

.method public final a(Z)V
    .registers 4
    .parameter

    .prologue
    .line 294
    if-eqz p1, :cond_c

    .line 295
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->p:Lcom/google/android/youtube/core/utils/k;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_7
    const-string v1, "must call setNetworkStatus before enableAwfulPlayer"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->b(ZLjava/lang/Object;)V

    .line 297
    :cond_c
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/bi;->A:Z

    .line 298
    return-void

    .line 295
    :cond_f
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final b()Ljava/util/Set;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->A:Z

    :goto_c
    if-eqz v0, :cond_14

    sget-object v0, Lcom/google/android/youtube/core/player/f;->a:Ljava/util/Set;

    :goto_10
    return-object v0

    :cond_11
    instance-of v0, v0, Lcom/google/android/youtube/core/player/f;

    goto :goto_c

    :cond_14
    sget-object v0, Lcom/google/android/youtube/core/player/bi;->h:Ljava/util/Set;

    goto :goto_10
.end method

.method public final b(Lcom/google/android/youtube/core/model/Stream;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->t:Z

    .line 355
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/bi;->s:Z

    .line 356
    iput-boolean v3, p0, Lcom/google/android/youtube/core/player/bi;->A:Z

    .line 357
    iput-object p1, p0, Lcom/google/android/youtube/core/player/bi;->C:Lcom/google/android/youtube/core/model/Stream;

    .line 358
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->l:Lcom/google/android/youtube/core/player/PlayerView;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/bi;->E:Lcom/google/android/youtube/core/player/bl;

    iget-object v2, p0, Lcom/google/android/youtube/core/player/bi;->k:Lcom/google/android/youtube/core/j;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/player/PlayerView;->a(Lcom/google/android/youtube/core/player/al;Lcom/google/android/youtube/core/j;)V

    .line 359
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->G:Lcom/google/android/youtube/core/player/bp;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bp;->a(Lcom/google/android/youtube/core/player/bp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 360
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/bi;->c(Lcom/google/android/youtube/core/model/Stream;)V

    .line 361
    return-void
.end method

.method public final b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/bi;->r:Z

    .line 302
    return-void
.end method

.method public final c()Z
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/bi;->v:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->G:Lcom/google/android/youtube/core/player/bp;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bp;->a(Lcom/google/android/youtube/core/player/bp;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->o:Lcom/google/android/youtube/core/player/bo;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bo;->a()V

    .line 447
    return-void
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->o:Lcom/google/android/youtube/core/player/bo;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bo;->b()V

    .line 499
    return-void
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->o:Lcom/google/android/youtube/core/player/bo;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bo;->c()V

    .line 541
    return-void
.end method

.method public final h()V
    .registers 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->o:Lcom/google/android/youtube/core/player/bo;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bo;->d()V

    .line 545
    return-void
.end method

.method public final i()V
    .registers 2

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->G:Lcom/google/android/youtube/core/player/bp;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bp;->c()V

    .line 600
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bi;->o:Lcom/google/android/youtube/core/player/bo;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/bo;->e()V

    .line 601
    return-void
.end method
