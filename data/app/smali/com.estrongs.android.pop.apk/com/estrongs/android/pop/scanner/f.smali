.class public Lcom/estrongs/android/pop/scanner/f;
.super Ljava/util/Observable;

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/Observer;


# static fields
.field protected static a:I


# instance fields
.field public b:Lcom/estrongs/android/pop/scanner/h;

.field private c:[I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Lcom/estrongs/android/pop/scanner/a;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x20

    sput v0, Lcom/estrongs/android/pop/scanner/f;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/scanner/a;[I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    iput v0, p0, Lcom/estrongs/android/pop/scanner/f;->d:I

    iput v0, p0, Lcom/estrongs/android/pop/scanner/f;->e:I

    iput-boolean v0, p0, Lcom/estrongs/android/pop/scanner/f;->f:Z

    iput-boolean v0, p0, Lcom/estrongs/android/pop/scanner/f;->h:Z

    iput-object p2, p0, Lcom/estrongs/android/pop/scanner/f;->c:[I

    iput-object p1, p0, Lcom/estrongs/android/pop/scanner/f;->g:Lcom/estrongs/android/pop/scanner/a;

    new-instance v0, Lcom/estrongs/android/pop/scanner/h;

    invoke-direct {v0}, Lcom/estrongs/android/pop/scanner/h;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/scanner/f;->b:Lcom/estrongs/android/pop/scanner/h;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/estrongs/android/pop/scanner/f;->h:Z

    return v0
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/scanner/f;->f:Z

    return-void
.end method

.method public run()V
    .registers 8

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/scanner/f;->h:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/f;->c:[I

    aget v3, v0, v2

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/f;->g:Lcom/estrongs/android/pop/scanner/a;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/scanner/a;->a()Ljava/util/Vector;

    move-result-object v4

    move v1, v2

    :goto_f
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_2f

    :cond_15
    :goto_15
    iget-boolean v0, p0, Lcom/estrongs/android/pop/scanner/f;->f:Z

    if-nez v0, :cond_20

    iget v0, p0, Lcom/estrongs/android/pop/scanner/f;->e:I

    iget v1, p0, Lcom/estrongs/android/pop/scanner/f;->d:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_69

    :cond_20
    invoke-virtual {p0}, Lcom/estrongs/android/pop/scanner/f;->setChanged()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/scanner/f;->notifyObservers()V

    iput v2, p0, Lcom/estrongs/android/pop/scanner/f;->e:I

    iput v2, p0, Lcom/estrongs/android/pop/scanner/f;->d:I

    iput-boolean v2, p0, Lcom/estrongs/android/pop/scanner/f;->f:Z

    iput-boolean v2, p0, Lcom/estrongs/android/pop/scanner/f;->h:Z

    return-void

    :cond_2f
    iget-boolean v0, p0, Lcom/estrongs/android/pop/scanner/f;->f:Z

    if-nez v0, :cond_15

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    :goto_39
    iget v5, p0, Lcom/estrongs/android/pop/scanner/f;->e:I

    iget v6, p0, Lcom/estrongs/android/pop/scanner/f;->d:I

    sub-int/2addr v5, v6

    sget v6, Lcom/estrongs/android/pop/scanner/f;->a:I

    if-gt v5, v6, :cond_61

    new-instance v5, Lcom/estrongs/android/pop/scanner/g;

    invoke-direct {v5, v0, v3}, Lcom/estrongs/android/pop/scanner/g;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v5, p0}, Lcom/estrongs/android/pop/scanner/g;->addObserver(Ljava/util/Observer;)V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget v0, p0, Lcom/estrongs/android/pop/scanner/f;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/scanner/f;->e:I

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_61
    const-wide/16 v5, 0x4b0

    :try_start_63
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_66
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_39

    :catch_67
    move-exception v5

    goto :goto_39

    :cond_69
    const-wide/16 v0, 0x258

    :try_start_6b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6e
    .catch Ljava/lang/InterruptedException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_15

    :catch_6f
    move-exception v0

    goto :goto_15
.end method

.method public declared-synchronized update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/estrongs/android/pop/scanner/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/estrongs/android/pop/scanner/f;->d:I

    instance-of v0, p1, Lcom/estrongs/android/pop/scanner/g;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_36

    if-eqz v0, :cond_d

    if-nez p2, :cond_f

    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    check-cast p2, [Ljava/lang/Object;

    if-nez p2, :cond_13

    :cond_13
    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v0, 0x1

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/pop/scanner/f;->b:Lcom/estrongs/android/pop/scanner/h;

    invoke-virtual {v3, v0, v1, v2}, Lcom/estrongs/android/pop/scanner/h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    if-nez v2, :cond_d

    invoke-virtual {p0}, Lcom/estrongs/android/pop/scanner/f;->setChanged()V

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/f;->b:Lcom/estrongs/android/pop/scanner/h;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/scanner/f;->notifyObservers(Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_f .. :try_end_35} :catchall_36

    goto :goto_d

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method
