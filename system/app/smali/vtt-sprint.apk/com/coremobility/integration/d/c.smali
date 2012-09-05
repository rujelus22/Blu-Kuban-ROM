.class public final Lcom/coremobility/integration/d/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private a:Lcom/coremobility/integration/d/a;

.field private b:Lcom/coremobility/integration/b;

.field private c:Z

.field private d:I

.field private e:Lcom/coremobility/integration/i;

.field private f:Ljava/lang/String;

.field private g:Landroid/media/MediaPlayer;

.field private h:I

.field private i:I

.field private j:Landroid/os/Handler;

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/io/FileInputStream;

.field private n:Z

.field private o:I

.field private p:I

.field private q:I

.field private r:Landroid/media/AudioManager;

.field private s:Z

.field private t:I

.field private u:I

.field private v:I

.field private w:Ljava/lang/reflect/Method;

.field private x:Ljava/lang/reflect/Method;

.field private y:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/coremobility/integration/i;IZILcom/coremobility/integration/b;)V
    .registers 15

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->n:Z

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->s:Z

    iput-object v1, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->y:Z

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

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->f:Ljava/lang/String;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/coremobility/integration/d/c;->a(ILcom/coremobility/integration/i;IZILcom/coremobility/integration/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/coremobility/integration/i;IZILcom/coremobility/integration/b;)V
    .registers 16

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->n:Z

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->s:Z

    iput-object v1, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->y:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->f:Ljava/lang/String;

    move-object v0, p0

    move v1, p3

    move-object v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/coremobility/integration/d/c;->a(ILcom/coremobility/integration/i;IZILcom/coremobility/integration/b;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .registers 11

    const/4 v0, 0x7

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    new-instance v4, Lcom/coremobility/integration/h;

    invoke-direct {v4}, Lcom/coremobility/integration/h;-><init>()V

    new-array v1, v0, [B

    new-instance v5, Lcom/coremobility/integration/r;

    invoke-direct {v5}, Lcom/coremobility/integration/r;-><init>()V

    iput v0, v5, Lcom/coremobility/integration/r;->a:I

    invoke-static {p0, v4}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v0

    if-nez v0, :cond_9d

    invoke-static {v4, v1, v5}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v0

    if-nez v0, :cond_24

    invoke-static {v4, v5}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    move-result v0

    :cond_24
    if-nez v0, :cond_9b

    iget v5, v5, Lcom/coremobility/integration/r;->a:I

    const/4 v0, 0x0

    aget-byte v0, v1, v0

    const/16 v6, 0x23

    if-ne v0, v6, :cond_9b

    const/4 v0, 0x1

    aget-byte v0, v1, v0

    const/16 v6, 0x21

    if-ne v0, v6, :cond_9b

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    const/16 v6, 0x41

    if-ne v0, v6, :cond_9b

    const/4 v0, 0x3

    aget-byte v0, v1, v0

    const/16 v6, 0x4d

    if-ne v0, v6, :cond_9b

    const/4 v0, 0x4

    aget-byte v0, v1, v0

    const/16 v6, 0x52

    if-ne v0, v6, :cond_9b

    const/4 v0, 0x5

    aget-byte v0, v1, v0

    const/16 v6, 0xa

    if-ne v0, v6, :cond_9b

    const/4 v0, 0x6

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x78

    shr-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_a0

    move-wide v0, v2

    :goto_5d
    invoke-static {v4}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    :goto_60
    cmp-long v2, v0, v2

    if-gtz v2, :cond_69

    :try_start_64
    invoke-static {p0}, Lcom/coremobility/integration/d/h;->a(Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_96

    move-result v0

    int-to-long v0, v0

    :cond_69
    :goto_69
    return-wide v0

    :pswitch_6a
    const/16 v0, 0x28a

    :goto_6c
    add-int/lit8 v1, v5, -0x6

    div-int/2addr v1, v0

    int-to-long v6, v1

    add-int/lit8 v1, v5, -0x6

    rem-int/2addr v1, v0

    mul-int/lit16 v1, v1, 0x3e8

    div-int v0, v1, v0

    int-to-long v0, v0

    const-wide/16 v8, 0x3e8

    mul-long v5, v6, v8

    add-long/2addr v0, v5

    goto :goto_5d

    :pswitch_7e
    const/16 v0, 0x2bc

    goto :goto_6c

    :pswitch_81
    const/16 v0, 0x320

    goto :goto_6c

    :pswitch_84
    const/16 v0, 0x384

    goto :goto_6c

    :pswitch_87
    const/16 v0, 0x3e8

    goto :goto_6c

    :pswitch_8a
    const/16 v0, 0x41a

    goto :goto_6c

    :pswitch_8d
    const/16 v0, 0x546

    goto :goto_6c

    :pswitch_90
    const/16 v0, 0x640

    goto :goto_6c

    :pswitch_93
    const/16 v0, 0x12c

    goto :goto_6c

    :catch_96
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69

    :cond_9b
    move-wide v0, v2

    goto :goto_5d

    :cond_9d
    move-wide v0, v2

    goto :goto_60

    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_7e
        :pswitch_81
        :pswitch_84
        :pswitch_87
        :pswitch_8a
        :pswitch_8d
        :pswitch_90
        :pswitch_93
    .end packed-switch
.end method

.method private a(ILcom/coremobility/integration/i;IZILcom/coremobility/integration/b;)V
    .registers 15

    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x17

    const/4 v2, 0x0

    const-string v0, "******* CM_MediaPlayer::Create()"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    :try_start_1f
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "startBluetoothSco"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "stopBluetoothSco"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3d} :catch_ff

    :goto_3d
    invoke-static {}, Lcom/coremobility/integration/d/h;->c()Z

    move-result v0

    if-eqz v0, :cond_d7

    const-string v0, "Has AudioModeMethod"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_4a
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e0

    const-string v0, "Has StartBluetoothScoMethod"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_55
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_e9

    const-string v0, "Has StopBluetoothScoMethod"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_60
    invoke-static {}, Lcom/coremobility/integration/d/h;->c()Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    if-nez v0, :cond_72

    :cond_6e
    iput-object v6, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    iput-object v6, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    :cond_72
    invoke-static {}, Lcom/coremobility/integration/d/h;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->y:Z

    iget-boolean v0, p0, Lcom/coremobility/integration/d/c;->y:Z

    if-eqz v0, :cond_7e

    iput-boolean v1, p0, Lcom/coremobility/integration/d/c;->c:Z

    :cond_7e
    iget-boolean v0, p0, Lcom/coremobility/integration/d/c;->y:Z

    if-nez v0, :cond_102

    if-eqz p6, :cond_102

    invoke-virtual {p6}, Lcom/coremobility/integration/b;->b()I

    move-result v0

    if-eqz v0, :cond_102

    iput-boolean v1, p0, Lcom/coremobility/integration/d/c;->c:Z

    iput-object p6, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    move v0, v1

    :goto_8f
    const/16 v3, 0x5dc

    iput v3, p0, Lcom/coremobility/integration/d/c;->d:I

    iput-object p2, p0, Lcom/coremobility/integration/d/c;->e:Lcom/coremobility/integration/i;

    iput p3, p0, Lcom/coremobility/integration/d/c;->h:I

    iput-object v6, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    if-eq p1, v1, :cond_a9

    if-eq p1, v7, :cond_a9

    const/4 v1, 0x4

    if-eq p1, v1, :cond_a9

    if-eqz p1, :cond_a9

    const-string v1, "Invalid Media Format - Setting to Default"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a9
    iput v2, p0, Lcom/coremobility/integration/d/c;->q:I

    iget-boolean v1, p0, Lcom/coremobility/integration/d/c;->y:Z

    if-eqz v1, :cond_f2

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_b9

    iput v7, p0, Lcom/coremobility/integration/d/c;->q:I

    :cond_b9
    :goto_b9
    invoke-static {}, Lcom/coremobility/integration/d/a;->a()Lcom/coremobility/integration/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/a;->d()I

    move-result v0

    iput v0, p0, Lcom/coremobility/integration/d/c;->t:I

    iget v0, p0, Lcom/coremobility/integration/d/c;->t:I

    iput v0, p0, Lcom/coremobility/integration/d/c;->u:I

    iput-boolean p4, p0, Lcom/coremobility/integration/d/c;->s:Z

    iput v2, p0, Lcom/coremobility/integration/d/c;->i:I

    iput v2, p0, Lcom/coremobility/integration/d/c;->v:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/coremobility/integration/d/c;->p:I

    iput p5, p0, Lcom/coremobility/integration/d/c;->o:I

    return-void

    :cond_d7
    const-string v0, "Dont have AudioModeMethod"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4a

    :cond_e0
    const-string v0, "Dont have StartBluetoothScoMethod"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_55

    :cond_e9
    const-string v0, "Dont have StopBluetoothScoMethod"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_60

    :cond_f2
    if-nez v0, :cond_b9

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_b9

    iput v7, p0, Lcom/coremobility/integration/d/c;->q:I

    goto :goto_b9

    :catch_ff
    move-exception v0

    goto/16 :goto_3d

    :cond_102
    move v0, v2

    goto :goto_8f
.end method

.method static synthetic a(Lcom/coremobility/integration/d/c;)V
    .registers 7

    const/4 v5, 0x0

    iget v0, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_52

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->f()I

    move-result v0

    iget v1, p0, Lcom/coremobility/integration/d/c;->h:I

    if-lt v0, v1, :cond_11

    invoke-direct {p0, v5, v0}, Lcom/coremobility/integration/d/c;->b(II)V

    :cond_11
    invoke-static {}, Lcom/coremobility/integration/d/h;->a()I

    move-result v1

    iget v2, p0, Lcom/coremobility/integration/d/c;->u:I

    if-eq v2, v1, :cond_49

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_CurOutputDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/integration/d/c;->u:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " New SystemDevice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/coremobility/integration/d/h;->a(I)Z

    iput v1, p0, Lcom/coremobility/integration/d/c;->t:I

    iget-boolean v1, p0, Lcom/coremobility/integration/d/c;->s:Z

    invoke-virtual {p0, v1}, Lcom/coremobility/integration/d/c;->c(Z)V

    :cond_49
    iget v1, p0, Lcom/coremobility/integration/d/c;->v:I

    add-int/lit16 v1, v1, 0xc8

    if-lt v0, v1, :cond_52

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->g()V

    :cond_52
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->k:Ljava/lang/Runnable;

    iget v2, p0, Lcom/coremobility/integration/d/c;->h:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private b(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    iget v1, p0, Lcom/coremobility/integration/d/c;->q:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetVolume - volume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    return-void
.end method

.method private b(II)V
    .registers 4

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->e:Lcom/coremobility/integration/i;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->e:Lcom/coremobility/integration/i;

    invoke-interface {v0, p1, p2}, Lcom/coremobility/integration/i;->a(II)V

    :cond_9
    return-void
.end method

.method static synthetic b(Lcom/coremobility/integration/d/c;)V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->f()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coremobility/integration/d/c;->b(II)V

    :cond_10
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->j()V

    return-void
.end method

.method private c(I)V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->e:Lcom/coremobility/integration/i;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->e:Lcom/coremobility/integration/i;

    invoke-interface {v0, p1}, Lcom/coremobility/integration/i;->a(I)V

    :cond_9
    return-void
.end method

.method private declared-synchronized d()I
    .registers 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    if-nez v1, :cond_c

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->e()I
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_34
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_13

    move-result v0

    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_34
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_13

    move-result v0

    goto :goto_a

    :catch_13
    move-exception v1

    const/16 v2, 0x17

    :try_start_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_34

    goto :goto_a

    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d(I)V
    .registers 6

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->l:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x17

    const-string v1, "AudioPlayer - StartPlaybackTimer Called."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private e()I
    .registers 6

    const/16 v4, 0x17

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    if-nez v0, :cond_7c

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Lcom/coremobility/integration/c/a;->a(Z)V

    :try_start_f
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    const/16 v0, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetOutOfPlaybackDuration File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/integration/d/c;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->f:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_62} :catch_7e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetOutOfPlaybackDuration: Result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4, v2, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    :goto_7b
    return v1

    :cond_7c
    move v0, v1

    goto :goto_c

    :catch_7e
    move-exception v0

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

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7b
.end method

.method private f()I
    .registers 6

    const/16 v4, 0x17

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    iget v1, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_15

    const-string v1, "GetCurrentPlayPos - Invalid Media State"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_14
    return v0

    :cond_15
    :try_start_15
    iget-object v1, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v0

    goto :goto_14

    :catch_1c
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/coremobility/integration/d/c;->b(II)V

    iget v0, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->h()V

    :cond_11
    return-void
.end method

.method private h()V
    .registers 7

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/16 v4, 0x17

    const/4 v3, 0x0

    const-string v0, "CM_MediaPlayer::StopPlayer"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :try_start_c
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/coremobility/integration/d/c;->y:Z

    if-eqz v0, :cond_24

    :cond_14
    iget-boolean v0, p0, Lcom/coremobility/integration/d/c;->c:Z

    if-nez v0, :cond_1e

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->n()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_1e
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->p()V

    :cond_21
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->i()V

    :cond_24
    iget v0, p0, Lcom/coremobility/integration/d/c;->u:I

    if-nez v0, :cond_2b

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->i()V

    :cond_2b
    iget v0, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_43

    iget v0, p0, Lcom/coremobility/integration/d/c;->i:I

    if-eq v0, v2, :cond_43

    iget v0, p0, Lcom/coremobility/integration/d/c;->i:I

    if-eq v0, v5, :cond_43

    const/16 v0, 0x17

    const-string v1, "Media Player Stopped..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_42
    return-void

    :cond_43
    iget v0, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/coremobility/integration/d/c;->i:I

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    :cond_56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    if-eq v0, v2, :cond_60

    if-eq v0, v5, :cond_60

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->m()V

    :cond_60
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->k()V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    :cond_6f
    new-instance v0, Lcom/coremobility/k/ce;

    invoke-direct {v0}, Lcom/coremobility/k/ce;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const/16 v0, 0x17

    const-string v1, "Media Player Stopped..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_81} :catch_82

    goto :goto_42

    :catch_82
    move-exception v0

    iput v3, p0, Lcom/coremobility/integration/d/c;->i:I

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

    goto :goto_42
.end method

.method private i()V
    .registers 4

    const/16 v0, 0x17

    const-string v1, "AudioPlayer - StopPlaybackTimer Called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->l:Ljava/lang/Runnable;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_19
    return-void
.end method

.method private j()V
    .registers 5

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioPlayer - StartTimer Called. m_StatusReportInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/integration/d/c;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private k()V
    .registers 4

    const/16 v0, 0x17

    const-string v1, "AudioPlayer - StopTimer Called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->k:Ljava/lang/Runnable;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_19
    return-void
.end method

.method private l()V
    .registers 6

    const/16 v4, 0x17

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/a;->d()I

    move-result v0

    iput v0, p0, Lcom/coremobility/integration/d/c;->t:I

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/a;->c()I

    move-result v0

    iput v0, p0, Lcom/coremobility/integration/d/c;->u:I

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/a;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/integration/d/c;->n:Z

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/a;->f()I

    move-result v0

    iput v0, p0, Lcom/coremobility/integration/d/c;->p:I

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v0}, Lcom/coremobility/integration/d/a;->b()V

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->a()Lcom/coremobility/integration/app/CM_App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/app/CM_App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m_SystemOutputDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/integration/d/c;->t:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " m_MusicActive = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coremobility/integration/d/c;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/coremobility/integration/d/h;->c(Landroid/media/AudioManager;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsBluetoothConnected - getRouting NormalDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothScoOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BluetoothA2dpOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coremobility/integration/d/c;->n:Z

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/coremobility/integration/d/h;->a(Landroid/media/AudioManager;)V

    const-string v0, "Music Player Paused..."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_bc
    return-void
.end method

.method private m()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    iget v1, p0, Lcom/coremobility/integration/d/c;->u:I

    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    iget-boolean v3, p0, Lcom/coremobility/integration/d/c;->n:Z

    iget v4, p0, Lcom/coremobility/integration/d/c;->p:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coremobility/integration/d/a;->a(IIZI)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const/16 v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RestoreSystemAudioState Ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d
.end method

.method private n()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/coremobility/integration/d/h;->d()I

    move-result v2

    iget-object v3, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    :goto_e
    return v0

    :cond_f
    iget-boolean v3, p0, Lcom/coremobility/integration/d/c;->y:Z

    if-eqz v3, :cond_15

    if-nez v2, :cond_e

    :cond_15
    iget-object v2, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    invoke-virtual {v2}, Lcom/coremobility/integration/b;->a()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_21
    move v0, v1

    goto :goto_e
.end method

.method private o()V
    .registers 6

    const/16 v4, 0x17

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/coremobility/integration/d/c;->q:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    :try_start_c
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->w:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_22

    :cond_1a
    :goto_1a
    const-string v0, "******* CM_AudioPlayer::startBlueToothVoiceOutput()"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_2d
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/b;->c()V

    goto :goto_21
.end method

.method private p()V
    .registers 6

    const/16 v4, 0x17

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/coremobility/integration/d/c;->q:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_21

    :try_start_c
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->x:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->r:Landroid/media/AudioManager;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_22

    :cond_1a
    :goto_1a
    const-string v0, "******* CM_AudioPlayer::stopBlueToothVoiceOutput()"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_2d
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    invoke-virtual {v0}, Lcom/coremobility/integration/b;->d()V

    goto :goto_21
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/coremobility/integration/d/c;->q:I

    return v0
.end method

.method public final a(Z)V
    .registers 6

    const/4 v0, 0x0

    const/16 v1, 0x17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllowAudioRestore : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    if-nez p1, :cond_20

    const/4 v0, 0x1

    :cond_20
    iput-boolean v0, v1, Lcom/coremobility/integration/d/a;->a:Z

    return-void
.end method

.method public final declared-synchronized a(ZI)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    const/16 v2, 0x17

    :try_start_5
    const-string v3, "CM_MediaPlayer::Resume"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v2, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1e

    const/16 v0, 0x17

    const-string v1, "Player Resume - Invalid Media State"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_71

    :goto_1c
    monitor-exit p0

    return-void

    :cond_1e
    :try_start_1e
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->l()V

    const/4 v2, 0x1

    iput v2, p0, Lcom/coremobility/integration/d/c;->i:I

    invoke-virtual {p0, p1}, Lcom/coremobility/integration/d/c;->c(Z)V

    iget v2, p0, Lcom/coremobility/integration/d/c;->q:I

    if-nez v2, :cond_2e

    invoke-direct {p0, p2}, Lcom/coremobility/integration/d/c;->b(I)V

    :cond_2e
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->n()Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->o()V

    iget-boolean v2, p0, Lcom/coremobility/integration/d/c;->c:Z

    if-eqz v2, :cond_7f

    iget v0, p0, Lcom/coremobility/integration/d/c;->d:I

    :goto_3d
    if-eqz v1, :cond_7b

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->j()V

    :goto_47
    new-instance v0, Lcom/coremobility/k/ch;

    invoke-direct {v0}, Lcom/coremobility/k/ch;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_4f
    .catchall {:try_start_1e .. :try_end_4f} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_4f} :catch_50

    goto :goto_1c

    :catch_50
    move-exception v0

    const/16 v1, 0x17

    :try_start_53
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

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_70
    .catchall {:try_start_53 .. :try_end_70} :catchall_71

    goto :goto_1c

    :catchall_71
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_74
    :try_start_74
    iget v2, p0, Lcom/coremobility/integration/d/c;->u:I

    if-nez v2, :cond_7f

    const/16 v0, 0x7d0

    goto :goto_3d

    :cond_7b
    invoke-direct {p0, v0}, Lcom/coremobility/integration/d/c;->d(I)V
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_71
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7e} :catch_50

    goto :goto_47

    :cond_7f
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_3d
.end method

.method public final declared-synchronized a(I)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_3
    new-instance v2, Lcom/coremobility/k/ai;

    invoke-direct {v2, p1}, Lcom/coremobility/k/ai;-><init>(I)V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget v2, p0, Lcom/coremobility/integration/d/c;->i:I

    if-eq v2, v1, :cond_21

    iget v2, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_21

    new-instance v1, Lcom/coremobility/k/bn;

    const/4 v2, 0x0

    const-string v3, "Invalid Media State"

    invoke-direct {v1, v2, v3}, Lcom/coremobility/k/bn;-><init>(ZLjava/lang/String;)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_5c

    :goto_1f
    monitor-exit p0

    return v0

    :cond_21
    :try_start_21
    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    if-lt p1, v2, :cond_5f

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    :goto_31
    if-gez v2, :cond_34

    move v2, v0

    :cond_34
    iget-object v3, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    new-instance v3, Lcom/coremobility/k/cg;

    invoke-direct {v3, v2}, Lcom/coremobility/k/cg;-><init>(I)V

    invoke-static {v3}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_41
    .catchall {:try_start_21 .. :try_end_41} :catchall_5c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_41} :catch_4d

    :try_start_41
    new-instance v0, Lcom/coremobility/k/bn;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/coremobility/k/bn;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    move v0, v1

    goto :goto_1f

    :catch_4d
    move-exception v1

    new-instance v2, Lcom/coremobility/k/bn;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/coremobility/k/bn;-><init>(ZLjava/lang/String;)V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_5b
    .catchall {:try_start_41 .. :try_end_5b} :catchall_5c

    goto :goto_1f

    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5f
    move v2, p1

    goto :goto_31
.end method

.method public final declared-synchronized a(II)Z
    .registers 10

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    monitor-enter p0

    const/16 v2, 0x17

    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "******* CM_MediaPlayer::Start() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v2, p0, Lcom/coremobility/integration/d/c;->i:I

    if-eqz v2, :cond_37

    iget v2, p0, Lcom/coremobility/integration/d/c;->i:I

    if-eq v2, v6, :cond_37

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/coremobility/integration/d/c;->c(I)V

    const/16 v1, 0x17

    const-string v2, "startPlay - Invalid Media State"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_cb

    :goto_35
    monitor-exit p0

    return v0

    :cond_37
    :try_start_37
    iput p2, p0, Lcom/coremobility/integration/d/c;->o:I

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v2}, Lcom/coremobility/integration/d/a;->d()I

    move-result v2

    iput v2, p0, Lcom/coremobility/integration/d/c;->t:I

    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    iput v2, p0, Lcom/coremobility/integration/d/c;->u:I

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->l()V

    iget-boolean v2, p0, Lcom/coremobility/integration/d/c;->s:Z

    invoke-virtual {p0, v2}, Lcom/coremobility/integration/d/c;->c(Z)V

    iget v2, p0, Lcom/coremobility/integration/d/c;->q:I

    if-nez v2, :cond_56

    iget v2, p0, Lcom/coremobility/integration/d/c;->o:I

    invoke-direct {p0, v2}, Lcom/coremobility/integration/d/c;->b(I)V

    :cond_56
    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;
    :try_end_58
    .catchall {:try_start_37 .. :try_end_58} :catchall_cb
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_58} :catch_a5

    if-nez v2, :cond_8b

    :try_start_5a
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/coremobility/integration/d/c;->f:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    iget v3, p0, Lcom/coremobility/integration/d/c;->q:I

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/coremobility/integration/d/c;->i:I
    :try_end_84
    .catchall {:try_start_5a .. :try_end_84} :catchall_cb
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_84} :catch_ce

    :goto_84
    :try_start_84
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->j:Landroid/os/Handler;

    :cond_8b
    iget v2, p0, Lcom/coremobility/integration/d/c;->i:I

    if-eqz v2, :cond_12d

    iget v2, p0, Lcom/coremobility/integration/d/c;->i:I

    if-eq v2, v6, :cond_12d

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->m()V

    const/16 v1, 0x17

    const-string v2, "Player Init Error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/coremobility/integration/d/c;->c(I)V
    :try_end_a4
    .catchall {:try_start_84 .. :try_end_a4} :catchall_cb
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_a4} :catch_a5

    goto :goto_35

    :catch_a5
    move-exception v1

    const/4 v2, 0x5

    :try_start_a7
    invoke-direct {p0, v2}, Lcom/coremobility/integration/d/c;->c(I)V

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_c9
    .catchall {:try_start_a7 .. :try_end_c9} :catchall_cb

    goto/16 :goto_35

    :catchall_cb
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_ce
    move-exception v2

    const/16 v3, 0x17

    :try_start_d1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_ee
    .catchall {:try_start_d1 .. :try_end_ee} :catchall_cb
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_ee} :catch_a5

    const/4 v2, 0x4

    :try_start_ef
    iput v2, p0, Lcom/coremobility/integration/d/c;->i:I

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    if-eqz v2, :cond_fa

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_fa
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->m:Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_106

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    :cond_106
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;
    :try_end_109
    .catchall {:try_start_ef .. :try_end_109} :catchall_cb
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_109} :catch_10b

    goto/16 :goto_84

    :catch_10b
    move-exception v2

    const/16 v3, 0x17

    :try_start_10e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_84

    :cond_12d
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->d()I

    move-result v2

    iput v2, p0, Lcom/coremobility/integration/d/c;->v:I

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    new-instance v2, Lcom/coremobility/integration/d/d;

    invoke-direct {v2, p0}, Lcom/coremobility/integration/d/d;-><init>(Lcom/coremobility/integration/d/c;)V

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->k:Ljava/lang/Runnable;

    new-instance v2, Lcom/coremobility/integration/d/e;

    invoke-direct {v2, p0}, Lcom/coremobility/integration/d/e;-><init>(Lcom/coremobility/integration/d/c;)V

    iput-object v2, p0, Lcom/coremobility/integration/d/c;->l:Ljava/lang/Runnable;

    const/4 v2, 0x1

    iput v2, p0, Lcom/coremobility/integration/d/c;->i:I

    if-lez p1, :cond_153

    invoke-virtual {p0, p1}, Lcom/coremobility/integration/d/c;->a(I)Z

    :cond_153
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->n()Z

    move-result v2

    if-eqz v2, :cond_17d

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->o()V

    iget-boolean v2, p0, Lcom/coremobility/integration/d/c;->c:Z

    if-eqz v2, :cond_189

    iget v2, p0, Lcom/coremobility/integration/d/c;->d:I

    move v3, v0

    :goto_163
    if-eqz v3, :cond_185

    iget-object v2, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/coremobility/integration/d/c;->b(II)V

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->j()V

    :goto_172
    new-instance v2, Lcom/coremobility/k/ch;

    invoke-direct {v2}, Lcom/coremobility/k/ch;-><init>()V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    move v0, v1

    goto/16 :goto_35

    :cond_17d
    iget v2, p0, Lcom/coremobility/integration/d/c;->u:I

    if-nez v2, :cond_189

    const/16 v2, 0x7d0

    move v3, v0

    goto :goto_163

    :cond_185
    invoke-direct {p0, v2}, Lcom/coremobility/integration/d/c;->d(I)V
    :try_end_188
    .catchall {:try_start_10e .. :try_end_188} :catchall_cb
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_188} :catch_a5

    goto :goto_172

    :cond_189
    move v2, v0

    move v3, v1

    goto :goto_163
.end method

.method public final declared-synchronized b()V
    .registers 5

    monitor-enter p0

    const/16 v0, 0x17

    :try_start_3
    const-string v1, "CM_MediaPlayer::Pause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_7b

    :try_start_b
    iget-object v0, p0, Lcom/coremobility/integration/d/c;->b:Lcom/coremobility/integration/b;

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/coremobility/integration/d/c;->y:Z

    if-eqz v0, :cond_23

    :cond_13
    iget-boolean v0, p0, Lcom/coremobility/integration/d/c;->c:Z

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->n()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_1d
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->p()V

    :cond_20
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->i()V

    :cond_23
    iget v0, p0, Lcom/coremobility/integration/d/c;->u:I

    if-nez v0, :cond_2a

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->i()V

    :cond_2a
    iget v0, p0, Lcom/coremobility/integration/d/c;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3b

    const/16 v0, 0x17

    const-string v1, "Player Pause - Invalid Media State"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_7b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_39} :catch_5a

    :goto_39
    monitor-exit p0

    return-void

    :cond_3b
    const/4 v0, 0x2

    :try_start_3c
    iput v0, p0, Lcom/coremobility/integration/d/c;->i:I

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_4b
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->k()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->m()V

    new-instance v0, Lcom/coremobility/k/cf;

    invoke-direct {v0}, Lcom/coremobility/k/cf;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V
    :try_end_59
    .catchall {:try_start_3c .. :try_end_59} :catchall_7b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_59} :catch_5a

    goto :goto_39

    :catch_5a
    move-exception v0

    const/16 v1, 0x17

    :try_start_5d
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

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_7a
    .catchall {:try_start_5d .. :try_end_7a} :catchall_7b

    goto :goto_39

    :catchall_7b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Z)V
    .registers 5

    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllowBTDisconnect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/coremobility/integration/d/c;->c:Z

    return-void
.end method

.method public final declared-synchronized c()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->h()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Z)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x17

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/integration/d/c;->i:I

    if-ne v1, v5, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSpeakerOn - Not Set in PAUSE State. Ignoring : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v0}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_21
    return-void

    :cond_22
    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->n()Z

    move-result v1

    if-eqz v1, :cond_29

    move p1, v0

    :cond_29
    iget-object v1, p0, Lcom/coremobility/integration/d/c;->a:Lcom/coremobility/integration/d/a;

    invoke-virtual {v1}, Lcom/coremobility/integration/d/a;->c()I

    move-result v1

    iput-boolean p1, p0, Lcom/coremobility/integration/d/c;->s:Z

    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    if-eqz v2, :cond_39

    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    if-ne v2, v4, :cond_83

    :cond_39
    if-eq v1, v4, :cond_74

    if-eqz p1, :cond_74

    const-string v1, "SetSpeakerOn - Setting to CM_AUDIO_OUTPUT_LOUDSPEAKER"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/coremobility/integration/d/h;->a(I)Z

    :cond_47
    :goto_47
    invoke-static {}, Lcom/coremobility/integration/d/h;->a()I

    move-result v1

    iput v1, p0, Lcom/coremobility/integration/d/c;->u:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSpeakerOn - m_CurOutputDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/integration/d/c;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m_SystemOutputDevice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v0}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_21

    :cond_74
    if-eqz v1, :cond_47

    if-nez p1, :cond_47

    const-string v1, "SetSpeakerOn - Setting to CM_AUDIO_OUTPUT_EARPIECE"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/coremobility/integration/d/h;->a(I)Z

    goto :goto_47

    :cond_83
    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    if-ne v2, v5, :cond_8b

    invoke-static {v5}, Lcom/coremobility/integration/d/h;->a(I)Z

    goto :goto_47

    :cond_8b
    if-eqz p1, :cond_9a

    if-eq v1, v4, :cond_47

    const-string v1, "SetSpeakerOn - Setting to CM_AUDIO_OUTPUT_LOUDSPEAKER"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/coremobility/integration/d/h;->a(I)Z

    goto :goto_47

    :cond_9a
    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    if-eq v1, v2, :cond_47

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSpeakerOn - Setting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/integration/d/c;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget v1, p0, Lcom/coremobility/integration/d/c;->t:I

    invoke-static {v1}, Lcom/coremobility/integration/d/h;->a(I)Z

    goto :goto_47
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 5

    const/16 v0, 0x17

    const-string v1, "onCompletion called"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/integration/d/c;->i:I

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->k()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->m()V

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->g()V

    new-instance v0, Lcom/coremobility/k/ce;

    invoke-direct {v0}, Lcom/coremobility/k/ce;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 7

    const/16 v0, 0x17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError--->   what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/integration/d/c;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_30

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/coremobility/integration/d/c;->c(I)V

    invoke-direct {p0}, Lcom/coremobility/integration/d/c;->h()V

    :cond_30
    const/4 v0, 0x1

    return v0
.end method
