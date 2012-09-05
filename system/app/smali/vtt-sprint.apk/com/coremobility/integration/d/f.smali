.class public final Lcom/coremobility/integration/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# instance fields
.field private a:I

.field private b:Lcom/coremobility/integration/j;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Landroid/media/MediaRecorder;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:J

.field private m:Landroid/os/Handler;

.field private n:Ljava/lang/Runnable;

.field private o:Ljava/io/FileOutputStream;

.field private p:Ljava/io/FileOutputStream;

.field private q:Z

.field private r:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/coremobility/integration/j;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/coremobility/integration/d/f;->a:I

    iput v2, p0, Lcom/coremobility/integration/d/f;->k:I

    iput-boolean v2, p0, Lcom/coremobility/integration/d/f;->q:Z

    iput-object p2, p0, Lcom/coremobility/integration/d/f;->b:Lcom/coremobility/integration/j;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UI-APPEND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/integration/d/f;->c:I

    const-wide/32 v0, 0x1d6b4

    iput-wide v0, p0, Lcom/coremobility/integration/d/f;->f:J

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/coremobility/integration/d/f;->h:I

    iput v2, p0, Lcom/coremobility/integration/d/f;->j:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coremobility/integration/d/f;->l:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->m:Landroid/os/Handler;

    iput-object v3, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    iput-object v3, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->r:Landroid/media/AudioManager;

    new-instance v0, Lcom/coremobility/integration/d/g;

    invoke-direct {v0, p0}, Lcom/coremobility/integration/d/g;-><init>(Lcom/coremobility/integration/d/f;)V

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->n:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->g()V

    return-void
.end method

.method private a(I)V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->b:Lcom/coremobility/integration/j;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->b:Lcom/coremobility/integration/j;

    invoke-interface {v0, p1}, Lcom/coremobility/integration/j;->d(I)V

    :cond_9
    return-void
.end method

.method private a(II)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->b:Lcom/coremobility/integration/j;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->b:Lcom/coremobility/integration/j;

    invoke-interface {v0, p1, p2}, Lcom/coremobility/integration/j;->b(II)V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/coremobility/integration/d/f;)V
    .registers 9

    const/4 v7, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x17

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recorder state m_State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v5, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v2, p0, Lcom/coremobility/integration/d/f;->i:I

    if-ne v2, v7, :cond_f7

    iget v2, p0, Lcom/coremobility/integration/d/f;->a:I

    if-ne v2, v4, :cond_e3

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    if-eq v0, v7, :cond_70

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PauseRecorder Inavlid State... "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_46
    const/4 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/coremobility/integration/d/f;->a(II)V

    :goto_4a
    iput v1, p0, Lcom/coremobility/integration/d/f;->a:I

    move v0, v1

    :cond_4d
    :goto_4d
    if-eqz v0, :cond_6f

    iget v0, p0, Lcom/coremobility/integration/d/f;->h:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_120

    iget v0, p0, Lcom/coremobility/integration/d/f;->h:I

    int-to-long v0, v0

    :goto_58
    iget-wide v2, p0, Lcom/coremobility/integration/d/f;->f:J

    iget v4, p0, Lcom/coremobility/integration/d/f;->k:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_68

    iget-wide v0, p0, Lcom/coremobility/integration/d/f;->f:J

    iget v2, p0, Lcom/coremobility/integration/d/f;->k:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    :cond_68
    iget-object v2, p0, Lcom/coremobility/integration/d/f;->m:Landroid/os/Handler;

    iget-object v3, p0, Lcom/coremobility/integration/d/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6f
    return-void

    :cond_70
    :try_start_70
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    :cond_7c
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->i()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->k()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_82} :catch_9f

    const/16 v0, 0x17

    :try_start_84
    const-string v2, "Audio Recorder create MediaRecorder "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_93} :catch_bf

    :goto_93
    const/4 v0, 0x2

    :try_start_94
    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I

    new-instance v0, Lcom/coremobility/k/cj;

    invoke-direct {v0}, Lcom/coremobility/k/cj;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_9e} :catch_9f

    goto :goto_46

    :catch_9f
    move-exception v0

    iput v1, p0, Lcom/coremobility/integration/d/f;->i:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecorder Pause error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v5, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_46

    :catch_bf
    move-exception v0

    const/16 v2, 0x17

    :try_start_c2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_e2} :catch_9f

    goto :goto_93

    :cond_e3
    iget v2, p0, Lcom/coremobility/integration/d/f;->a:I

    if-ne v2, v7, :cond_ef

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->h()V

    invoke-direct {p0, v0, v0}, Lcom/coremobility/integration/d/f;->a(II)V

    goto/16 :goto_4a

    :cond_ef
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->h()V

    invoke-direct {p0, v0, v4}, Lcom/coremobility/integration/d/f;->a(II)V

    goto/16 :goto_4a

    :cond_f7
    iget v2, p0, Lcom/coremobility/integration/d/f;->i:I

    if-eq v2, v0, :cond_ff

    iget v2, p0, Lcom/coremobility/integration/d/f;->i:I

    if-ne v2, v4, :cond_4d

    :cond_ff
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->l()V

    iget v2, p0, Lcom/coremobility/integration/d/f;->k:I

    invoke-direct {p0, v1, v2}, Lcom/coremobility/integration/d/f;->a(II)V

    iget-wide v1, p0, Lcom/coremobility/integration/d/f;->f:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4d

    iget v1, p0, Lcom/coremobility/integration/d/f;->k:I

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/coremobility/integration/d/f;->f:J

    const-wide/16 v5, 0x12c

    sub-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4d

    invoke-direct {p0, v7}, Lcom/coremobility/integration/d/f;->b(I)V

    goto/16 :goto_4d

    :cond_120
    const-wide/16 v0, 0x12c

    goto/16 :goto_58
.end method

.method private b(I)V
    .registers 7

    const/16 v4, 0x17

    const/4 v3, 0x0

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecorderStopComplete Invalid State... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_22
    return-void

    :cond_23
    iput p1, p0, Lcom/coremobility/integration/d/f;->a:I

    :try_start_25
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->l()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    new-instance v0, Lcom/coremobility/k/q;

    invoke-direct {v0}, Lcom/coremobility/k/q;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_3d} :catch_41

    :goto_3d
    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I

    goto :goto_22

    :catch_41
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3d
.end method

.method private g()V
    .registers 6

    const/4 v4, 0x0

    :try_start_1
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coremobility/integration/d/f;->l:J
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const/16 v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I

    goto :goto_f
.end method

.method private h()V
    .registers 6

    const/16 v4, 0x17

    const/4 v3, 0x0

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot Stop Media Recorder... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_27
    return-void

    :cond_28
    :try_start_28
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    :cond_34
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->i()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->k()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->g()V

    new-instance v0, Lcom/coremobility/k/cj;

    invoke-direct {v0}, Lcom/coremobility/k/cj;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_45} :catch_46

    goto :goto_27

    :catch_46
    move-exception v0

    iput v3, p0, Lcom/coremobility/integration/d/f;->i:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_27
.end method

.method private i()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_6f

    :try_start_a
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_a7

    :goto_f
    iput-object v5, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    :try_start_11
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->e:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x400

    new-array v0, v0, [B
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_1c} :catch_9c

    const/4 v2, 0x0

    const/4 v3, 0x6

    :try_start_1e
    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v2

    if-ne v2, v4, :cond_77

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_77

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    const/16 v3, 0x21

    if-ne v2, v3, :cond_77

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    const/16 v3, 0x41

    if-ne v2, v3, :cond_77

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_77

    const/4 v2, 0x4

    aget-byte v2, v0, v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_77

    const/4 v2, 0x5

    aget-byte v2, v0, v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_77

    :goto_4e
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_77

    iget-object v3, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5a
    .catchall {:try_start_1e .. :try_end_5a} :catchall_8a
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_5a} :catch_5b

    goto :goto_4e

    :catch_5b
    move-exception v0

    :try_start_5c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_8a

    :try_start_5f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UI-APPEND"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_6f} :catch_a5
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_6f} :catch_9c

    :cond_6f
    :goto_6f
    :try_start_6f
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_74} :catch_a1

    :goto_74
    iput-object v5, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    :cond_76
    return-void

    :cond_77
    :try_start_77
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UI-APPEND"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_87} :catch_88
    .catch Ljava/io/FileNotFoundException; {:try_start_77 .. :try_end_87} :catch_9c

    goto :goto_6f

    :catch_88
    move-exception v0

    goto :goto_6f

    :catchall_8a
    move-exception v0

    :try_start_8b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "UI-APPEND"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_9b} :catch_a3
    .catch Ljava/io/FileNotFoundException; {:try_start_8b .. :try_end_9b} :catch_9c

    :goto_9b
    :try_start_9b
    throw v0
    :try_end_9c
    .catch Ljava/io/FileNotFoundException; {:try_start_9b .. :try_end_9c} :catch_9c

    :catch_9c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_6f

    :catch_a1
    move-exception v0

    goto :goto_74

    :catch_a3
    move-exception v1

    goto :goto_9b

    :catch_a5
    move-exception v0

    goto :goto_6f

    :catch_a7
    move-exception v0

    goto/16 :goto_f
.end method

.method private j()V
    .registers 5

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x17

    const-string v1, "AudioRecorder - StartTimer Called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private k()V
    .registers 4

    const/16 v0, 0x17

    const-string v1, "AudioRecorder - StopTimer Called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private l()V
    .registers 7

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/coremobility/integration/d/f;->k:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/coremobility/integration/d/f;->l:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/coremobility/integration/d/f;->k:I

    iput-wide v0, p0, Lcom/coremobility/integration/d/f;->l:J

    :cond_16
    return-void
.end method

.method private m()V
    .registers 6

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-wide v0, p0, Lcom/coremobility/integration/d/f;->f:J

    iget v2, p0, Lcom/coremobility/integration/d/f;->k:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    iget-wide v1, p0, Lcom/coremobility/integration/d/f;->f:J

    iget v3, p0, Lcom/coremobility/integration/d/f;->k:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    goto :goto_22
.end method

.method private n()V
    .registers 5

    const/16 v3, 0x17

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->r:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/integration/d/f;->q:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " m_MusicActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coremobility/integration/d/f;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coremobility/integration/d/f;->q:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->r:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/coremobility/integration/d/h;->a(Landroid/media/AudioManager;)V

    const-string v0, "Music Stream Paused..."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_35
    return-void
.end method

.method private o()V
    .registers 4

    iget-boolean v0, p0, Lcom/coremobility/integration/d/f;->q:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->r:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/coremobility/integration/d/h;->b(Landroid/media/AudioManager;)V

    const/16 v0, 0x17

    const-string v1, "Music Player Resumed..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    const/16 v4, 0x17

    const/4 v2, 0x5

    const/4 v3, 0x0

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    if-eqz v0, :cond_26

    invoke-direct {p0, v2}, Lcom/coremobility/integration/d/f;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Recoder State... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_25
    return-void

    :cond_26
    :try_start_26
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->n()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget v0, p0, Lcom/coremobility/integration/d/f;->c:I

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :goto_3f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/integration/d/f;->k:I

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->m()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->j()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremobility/integration/d/f;->l:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coremobility/integration/d/f;->a(II)V

    new-instance v0, Lcom/coremobility/k/ci;

    invoke-direct {v0}, Lcom/coremobility/k/ci;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_7f} :catch_80

    goto :goto_25

    :catch_80
    move-exception v0

    invoke-direct {p0, v2}, Lcom/coremobility/integration/d/f;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_25

    :cond_a1
    :try_start_a1
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_ad} :catch_80

    goto :goto_3f
.end method

.method public final b()V
    .registers 5

    const/16 v3, 0x17

    const/4 v2, 0x0

    const-string v0, "AudioRecorder - Pause Called"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/coremobility/integration/d/f;->b(I)V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->o()V

    :goto_16
    return-void

    :cond_17
    const-string v0, "AudioRecorder - Pause. Invalid State"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public final c()V
    .registers 8

    const/4 v6, 0x5

    const/4 v2, 0x2

    const/16 v5, 0x17

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "AudioRecorder - Resume Called"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->n()V

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    if-eq v0, v2, :cond_32

    invoke-direct {p0, v6}, Lcom/coremobility/integration/d/f;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResumeRecorder Invalid State.... State = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_31
    return-void

    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget v0, p0, Lcom/coremobility/integration/d/f;->c:I

    if-nez v0, :cond_b0

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :goto_48
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->d:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    iget v0, p0, Lcom/coremobility/integration/d/f;->c:I

    if-ne v0, v3, :cond_bd

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    :goto_6a
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->m()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->j()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremobility/integration/d/f;->l:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->l()V

    new-instance v0, Lcom/coremobility/k/ci;

    invoke-direct {v0}, Lcom/coremobility/k/ci;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_8e} :catch_8f

    goto :goto_31

    :catch_8f
    move-exception v0

    invoke-direct {p0, v6}, Lcom/coremobility/integration/d/f;->a(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecorder Resume error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_31

    :cond_b0
    :try_start_b0
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_48

    :cond_bd
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_c8} :catch_8f

    goto :goto_6a
.end method

.method public final d()V
    .registers 7

    const/16 v5, 0x17

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v0, "AudioRecorder - Stop Called"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    if-ne v0, v2, :cond_17

    invoke-direct {p0, v2}, Lcom/coremobility/integration/d/f;->b(I)V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->o()V

    :goto_16
    return-void

    :cond_17
    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    if-ne v0, v4, :cond_22

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->h()V

    invoke-direct {p0, v2, v4}, Lcom/coremobility/integration/d/f;->a(II)V

    goto :goto_16

    :cond_22
    const-string v0, "AudioRecorder - Stop. Invalid State"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public final e()V
    .registers 7

    const/4 v5, 0x4

    const/16 v4, 0x17

    const/4 v3, 0x0

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecorder - Release Invalid State "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_2c
    return-void

    :cond_2d
    const-string v0, "AudioRecorder - Release Called"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x4

    :try_start_35
    iput v0, p0, Lcom/coremobility/integration/d/f;->i:I

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    :cond_43
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_45} :catch_73

    if-eqz v0, :cond_4f

    :try_start_47
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4c} :catch_95
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_73

    :goto_4c
    const/4 v0, 0x0

    :try_start_4d
    iput-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    :cond_4f
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_51} :catch_73

    if-eqz v0, :cond_68

    :try_start_53
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_58} :catch_93
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_73

    :goto_58
    const/4 v0, 0x0

    :try_start_59
    iput-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UI-APPEND"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_68
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->k()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/integration/d/f;->k:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coremobility/integration/d/f;->l:J
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_72} :catch_73

    goto :goto_2c

    :catch_73
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v5, p0, Lcom/coremobility/integration/d/f;->i:I

    goto :goto_2c

    :catch_93
    move-exception v0

    goto :goto_58

    :catch_95
    move-exception v0

    goto :goto_4c
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/coremobility/integration/d/f;->k:I

    return v0
.end method

.method public final onError(Landroid/media/MediaRecorder;II)V
    .registers 10

    const/4 v5, 0x1

    const/16 v4, 0x17

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError with what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    if-eq v0, v5, :cond_52

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_52

    iget v0, p0, Lcom/coremobility/integration/d/f;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media Recorder Stopped... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/d/f;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_4e
    invoke-direct {p0, v5}, Lcom/coremobility/integration/d/f;->a(I)V

    return-void

    :cond_52
    :try_start_52
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/f;->g:Landroid/media/MediaRecorder;

    :cond_63
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_65} :catch_9f

    if-eqz v0, :cond_6f

    :try_start_67
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6c} :catch_c3
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_6c} :catch_9f

    :goto_6c
    const/4 v0, 0x0

    :try_start_6d
    iput-object v0, p0, Lcom/coremobility/integration/d/f;->o:Ljava/io/FileOutputStream;

    :cond_6f
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_71} :catch_9f

    if-eqz v0, :cond_88

    :try_start_73
    iget-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_78} :catch_c1
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_78} :catch_9f

    :goto_78
    const/4 v0, 0x0

    :try_start_79
    iput-object v0, p0, Lcom/coremobility/integration/d/f;->p:Ljava/io/FileOutputStream;

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "UI-APPEND"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_88
    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->k()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->g()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/integration/d/f;->k:I

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->o()V

    const/16 v0, 0x17

    const-string v1, "Media Recorder Reset..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_9e} :catch_9f

    goto :goto_4e

    :catch_9f
    move-exception v0

    iput v3, p0, Lcom/coremobility/integration/d/f;->i:I

    iput v3, p0, Lcom/coremobility/integration/d/f;->k:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4e

    :catch_c1
    move-exception v0

    goto :goto_78

    :catch_c3
    move-exception v0

    goto :goto_6c
.end method

.method public final onInfo(Landroid/media/MediaRecorder;II)V
    .registers 8

    const/4 v3, 0x0

    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo with what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "extra = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x320

    if-ne p2, v0, :cond_35

    invoke-direct {p0}, Lcom/coremobility/integration/d/f;->l()V

    iget v0, p0, Lcom/coremobility/integration/d/f;->k:I

    invoke-direct {p0, v3, v0}, Lcom/coremobility/integration/d/f;->a(II)V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/coremobility/integration/d/f;->b(I)V

    :cond_35
    return-void
.end method
