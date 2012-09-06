.class public Lcom/dropbox/android/util/ad;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/util/HashMap;

.field private final c:Ljava/util/HashSet;

.field private final d:Ljava/util/HashSet;

.field private final e:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/dropbox/android/util/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/util/ad;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/util/ad;->b:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/util/ad;->c:Ljava/util/HashSet;

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/util/ad;->d:Ljava/util/HashSet;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/util/ad;->e:Ljava/util/HashSet;

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/util/ad;)Ljava/util/HashSet;
    .registers 2
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/dropbox/android/util/ad;->e:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic a(Lcom/dropbox/android/util/ad;Ljava/lang/String;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/dropbox/android/util/ad;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/dropbox/android/util/ad;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/dropbox/android/util/ad;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 37
    sget-object v0, Lcom/dropbox/android/util/ad;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File not modified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_20
    return-void

    .line 40
    :cond_21
    iget-object v0, p0, Lcom/dropbox/android/util/ad;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 41
    iget-object v0, p0, Lcom/dropbox/android/util/ad;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 42
    sget-object v0, Lcom/dropbox/android/util/ad;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignored change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  Back to watching"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lcom/dropbox/android/util/ad;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_20

    .line 46
    :cond_52
    iget-object v0, p0, Lcom/dropbox/android/util/ad;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 47
    sget-object v0, Lcom/dropbox/android/util/ad;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting ready to upload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    new-instance v1, Lcom/dropbox/android/util/ap;

    invoke-direct {v1, p1}, Lcom/dropbox/android/util/ap;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/dropbox/android/filemanager/v;->a(Lcom/dropbox/android/util/ap;)V

    goto :goto_20

    .line 50
    :cond_7f
    sget-object v0, Lcom/dropbox/android/util/ad;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File not watched: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 3

    .prologue
    .line 26
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/dropbox/android/util/ad;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileObserver;

    .line 27
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1b

    goto :goto_b

    .line 26
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 29
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/dropbox/android/util/ad;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 30
    iget-object v0, p0, Lcom/dropbox/android/util/ad;->c:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 31
    iget-object v0, p0, Lcom/dropbox/android/util/ad;->d:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 32
    iget-object v0, p0, Lcom/dropbox/android/util/ad;->e:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_1b

    .line 33
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/dropbox/android/util/ad;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to ignore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/dropbox/android/util/ad;->c:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 60
    sget-object v0, Lcom/dropbox/android/util/ad;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring changes to file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/dropbox/android/util/ad;->d:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    .line 63
    :cond_3e
    monitor-exit p0

    return-void

    .line 58
    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 71
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_26

    .line 73
    sget-object v1, Lcom/dropbox/android/util/ad;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to watch a file that doesn\'t exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_91

    .line 122
    :goto_24
    monitor-exit p0

    return-void

    .line 77
    :cond_26
    :try_start_26
    sget-object v1, Lcom/dropbox/android/util/ad;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Watching file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/dropbox/android/util/ad;->c:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/dropbox/android/util/ad;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8d

    .line 84
    sget-object v1, Lcom/dropbox/android/util/ad;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**********   Watching new directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v1, Lcom/dropbox/android/util/ae;

    const/16 v2, 0xfff

    invoke-direct {v1, p0, v0, v2, v0}, Lcom/dropbox/android/util/ae;-><init>(Lcom/dropbox/android/util/ad;Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    .line 118
    iget-object v2, p0, Lcom/dropbox/android/util/ad;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_8d
    invoke-direct {p0, p1}, Lcom/dropbox/android/util/ad;->c(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_26 .. :try_end_90} :catchall_91

    goto :goto_24

    .line 71
    :catchall_91
    move-exception v0

    monitor-exit p0

    throw v0
.end method
