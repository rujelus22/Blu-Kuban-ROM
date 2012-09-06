.class public LRw;
.super Ljava/lang/Object;
.source "TempFileManagerImpl.java"

# interfaces
.implements LQW;


# instance fields
.field private final a:LRd;

.field private final a:LRy;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "LRx;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LRd;LRy;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LRw;->a:Ljava/util/Map;

    .line 84
    iput-object p1, p0, LRw;->a:LRd;

    .line 85
    iput-object p2, p0, LRw;->a:LRy;

    .line 86
    return-void
.end method

.method static synthetic a(LRw;)LRd;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LRw;->a:LRd;

    return-object v0
.end method

.method static synthetic a(LRw;)LRy;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LRw;->a:LRy;

    return-object v0
.end method

.method static synthetic a(LRw;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, LRw;->a:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)LQX;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    const-string v0, "t"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "w"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 92
    :cond_11
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing is not supported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2a

    .line 91
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :cond_2d
    :try_start_2d
    iget-object v0, p0, LRw;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LRx;

    .line 96
    if-nez v0, :cond_41

    .line 97
    new-instance v0, LRx;

    invoke-direct {v0, p0, p1}, LRx;-><init>(LRw;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, LRw;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_41
    invoke-virtual {v0}, LRx;->b()V
    :try_end_44
    .catchall {:try_start_2d .. :try_end_44} :catchall_2a

    .line 102
    monitor-exit p0

    return-object v0
.end method

.method a(Ljava/io/File;)Ljava/io/OutputStream;
    .registers 4
    .parameter

    .prologue
    .line 107
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 108
    return-object v0
.end method
