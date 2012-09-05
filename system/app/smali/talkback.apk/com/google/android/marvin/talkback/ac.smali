.class public final Lcom/google/android/marvin/talkback/ac;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/marvin/talkback/ac;

.field private static c:I


# instance fields
.field private final d:Ljava/lang/StringBuilder;

.field private final e:Landroid/os/Bundle;

.field private final f:Ljava/util/List;

.field private final g:Ljava/util/List;

.field private final h:Ljava/util/List;

.field private final i:Ljava/util/List;

.field private j:Lcom/google/android/marvin/talkback/ac;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/marvin/talkback/ac;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ac;->d:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ac;->e:Landroid/os/Bundle;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ac;->f:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ac;->g:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ac;->h:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ac;->i:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/google/android/marvin/talkback/ac;
    .registers 1

    invoke-static {}, Lcom/google/android/marvin/talkback/ac;->i()Lcom/google/android/marvin/talkback/ac;

    move-result-object v0

    return-object v0
.end method

.method private static i()Lcom/google/android/marvin/talkback/ac;
    .registers 3

    sget-object v1, Lcom/google/android/marvin/talkback/ac;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/marvin/talkback/ac;->b:Lcom/google/android/marvin/talkback/ac;

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/google/android/marvin/talkback/ac;->b:Lcom/google/android/marvin/talkback/ac;

    sget-object v2, Lcom/google/android/marvin/talkback/ac;->b:Lcom/google/android/marvin/talkback/ac;

    iget-object v2, v2, Lcom/google/android/marvin/talkback/ac;->j:Lcom/google/android/marvin/talkback/ac;

    sput-object v2, Lcom/google/android/marvin/talkback/ac;->b:Lcom/google/android/marvin/talkback/ac;

    sget v2, Lcom/google/android/marvin/talkback/ac;->c:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/google/android/marvin/talkback/ac;->c:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/marvin/talkback/ac;->j:Lcom/google/android/marvin/talkback/ac;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/marvin/talkback/ac;->k:Z

    monitor-exit v1

    :goto_1c
    return-object v0

    :cond_1d
    new-instance v0, Lcom/google/android/marvin/talkback/ac;

    invoke-direct {v0}, Lcom/google/android/marvin/talkback/ac;-><init>()V

    monitor-exit v1

    goto :goto_1c

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0
.end method


# virtual methods
.method public final b()Ljava/lang/StringBuilder;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ac;->d:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ac;->f:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ac;->g:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ac;->h:Ljava/util/List;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ac;->i:Ljava/util/List;

    return-object v0
.end method

.method public final g()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ac;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public final h()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/marvin/talkback/ac;->k:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/marvin/talkback/ac;->d:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/marvin/talkback/ac;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ac;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ac;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ac;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ac;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/android/marvin/talkback/ac;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/google/android/marvin/talkback/ac;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2d
    sget v0, Lcom/google/android/marvin/talkback/ac;->c:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_41

    sget-object v0, Lcom/google/android/marvin/talkback/ac;->b:Lcom/google/android/marvin/talkback/ac;

    iput-object v0, p0, Lcom/google/android/marvin/talkback/ac;->j:Lcom/google/android/marvin/talkback/ac;

    sput-object p0, Lcom/google/android/marvin/talkback/ac;->b:Lcom/google/android/marvin/talkback/ac;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/marvin/talkback/ac;->k:Z

    sget v0, Lcom/google/android/marvin/talkback/ac;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/google/android/marvin/talkback/ac;->c:I

    :cond_41
    monitor-exit v1

    goto :goto_4

    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_43

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Text:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ac;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "}, Metadata:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/ac;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
