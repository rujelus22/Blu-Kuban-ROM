.class public LRt;
.super Ljava/lang/Object;
.source "PipeExposer.java"

# interfaces
.implements LQW;


# instance fields
.field private final a:LRd;


# direct methods
.method public constructor <init>(LRd;)V
    .registers 3
    .parameter

    .prologue
    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, p1, v0}, LRt;-><init>(LRd;I)V

    .line 82
    return-void
.end method

.method constructor <init>(LRd;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/16 v0, 0x9

    if-ge p2, v0, :cond_22

    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gingerbread needed and have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_22
    iput-object p1, p0, LRt;->a:LRd;

    .line 91
    return-void
.end method

.method static synthetic a(LRt;)LRd;
    .registers 2
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, LRt;->a:LRd;

    return-object v0
.end method

.method public static a()Z
    .registers 2

    .prologue
    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_8

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)LQX;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 108
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

    .line 109
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

    .line 108
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 112
    :cond_2d
    :try_start_2d
    new-instance v0, LRu;

    invoke-direct {v0, p0, p1}, LRu;-><init>(LRt;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_2a

    monitor-exit p0

    return-object v0
.end method
