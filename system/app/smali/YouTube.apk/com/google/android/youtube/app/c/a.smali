.class final Lcom/google/android/youtube/app/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/ac;


# instance fields
.field private final a:Lcom/google/android/plus1/w;

.field private b:Lcom/google/android/plus1/aq;

.field private c:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

.field private d:Landroid/app/Activity;

.field private e:Lcom/google/android/youtube/plus1/b;


# direct methods
.method public constructor <init>(Lcom/google/android/plus1/w;)V
    .registers 3
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "controller cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/plus1/w;

    iput-object v0, p0, Lcom/google/android/youtube/app/c/a;->a:Lcom/google/android/plus1/w;

    .line 31
    invoke-virtual {p1, p0}, Lcom/google/android/plus1/w;->b(Lcom/google/android/plus1/ac;)V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/c/a;Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;)Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/c/a;->c:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/app/c/a;)Lcom/google/android/plus1/w;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/youtube/app/c/a;->a:Lcom/google/android/plus1/w;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/google/android/plus1/aq;)V
    .registers 4
    .parameter

    .prologue
    .line 39
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlusOneClient received new +1 account status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 40
    iput-object p1, p0, Lcom/google/android/youtube/app/c/a;->b:Lcom/google/android/plus1/aq;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/c/a;->c:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/c/a;->d:Landroid/app/Activity;

    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/app/c/a;->e:Lcom/google/android/youtube/plus1/b;

    if-eqz v0, :cond_23

    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/app/c/a;->e:Lcom/google/android/youtube/plus1/b;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/c/a;->e:Lcom/google/android/youtube/plus1/b;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 47
    :cond_23
    monitor-exit p0

    return-void

    .line 39
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Lcom/google/android/plus1/w;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/app/c/a;->a:Lcom/google/android/plus1/w;

    return-object v0
.end method

.method public final declared-synchronized a(Landroid/app/Activity;Lcom/google/android/youtube/plus1/b;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 86
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/app/c/a;->b:Lcom/google/android/plus1/aq;

    if-eqz v0, :cond_c

    .line 87
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1e

    .line 88
    if-eqz p2, :cond_a

    .line 119
    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    .line 91
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/youtube/app/c/a;->c:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    if-eqz v0, :cond_21

    .line 92
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 93
    iget-object v0, p0, Lcom/google/android/youtube/app/c/a;->c:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    new-instance v1, Lcom/google/android/youtube/app/c/b;

    invoke-direct {v1, p0, p2}, Lcom/google/android/youtube/app/c/b;-><init>(Lcom/google/android/youtube/app/c/a;Lcom/google/android/youtube/plus1/b;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;->resolve(Landroid/app/Activity;Lcom/google/android/plus1/ac;)V
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1e

    goto :goto_a

    .line 86
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 115
    :cond_21
    :try_start_21
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 116
    iput-object p1, p0, Lcom/google/android/youtube/app/c/a;->d:Landroid/app/Activity;

    .line 117
    iput-object p2, p0, Lcom/google/android/youtube/app/c/a;->e:Lcom/google/android/youtube/plus1/b;
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_1e

    goto :goto_a
.end method

.method public final declared-synchronized a(Ljava/lang/Exception;)V
    .registers 4
    .parameter

    .prologue
    .line 50
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/app/c/a;->d:Landroid/app/Activity;

    .line 51
    iget-object v1, p0, Lcom/google/android/youtube/app/c/a;->e:Lcom/google/android/youtube/plus1/b;

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/app/c/a;->d:Landroid/app/Activity;

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/app/c/a;->e:Lcom/google/android/youtube/plus1/b;

    .line 55
    instance-of v1, p1, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    if-eqz v1, :cond_22

    .line 56
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/app/c/a;->b:Lcom/google/android/plus1/aq;

    .line 58
    check-cast p1, Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    iput-object p1, p0, Lcom/google/android/youtube/app/c/a;->c:Lcom/google/android/plus1/ApiaryPlusOneApi$PlusOneAuthException;

    .line 59
    if-eqz v0, :cond_20

    .line 60
    iget-object v1, p0, Lcom/google/android/youtube/app/c/a;->e:Lcom/google/android/youtube/plus1/b;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/app/c/a;->a(Landroid/app/Activity;Lcom/google/android/youtube/plus1/b;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_3c

    .line 65
    :cond_20
    :goto_20
    monitor-exit p0

    return-void

    .line 63
    :cond_22
    :try_start_22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlusOneClient cannot receive +1 account status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/google/android/youtube/core/L;->a()V
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_3c

    goto :goto_20

    .line 50
    :catchall_3c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/google/android/plus1/aq;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/c/a;->a(Lcom/google/android/plus1/aq;)V

    return-void
.end method

.method public final declared-synchronized b()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 68
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/youtube/app/c/a;->b:Lcom/google/android/plus1/aq;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1d

    if-nez v1, :cond_8

    .line 77
    :goto_6
    monitor-exit p0

    return v0

    .line 72
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/google/android/youtube/app/c/a;->b:Lcom/google/android/plus1/aq;

    iget-object v1, v1, Lcom/google/android/plus1/aq;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 73
    const/4 v0, 0x1

    goto :goto_6

    .line 75
    :cond_14
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 76
    iget-object v1, p0, Lcom/google/android/youtube/app/c/a;->a:Lcom/google/android/plus1/w;

    invoke-virtual {v1}, Lcom/google/android/plus1/w;->b()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1d

    goto :goto_6

    .line 68
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
