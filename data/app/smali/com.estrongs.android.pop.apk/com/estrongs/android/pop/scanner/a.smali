.class public Lcom/estrongs/android/pop/scanner/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static h:Lcom/estrongs/android/pop/scanner/a;


# instance fields
.field protected a:Ljava/net/InetAddress;

.field protected b:Ljava/net/InetAddress;

.field private c:[I

.field private d:[I

.field private e:Z

.field private f:Lcom/estrongs/android/pop/scanner/f;

.field private g:Landroid/content/Context;

.field private i:Z

.field private j:Z

.field private k:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/scanner/a;->c:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/scanner/a;->d:[I

    iput-boolean v3, p0, Lcom/estrongs/android/pop/scanner/a;->e:Z

    iput-boolean v3, p0, Lcom/estrongs/android/pop/scanner/a;->i:Z

    iput-boolean v3, p0, Lcom/estrongs/android/pop/scanner/a;->j:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/scanner/a;->k:Landroid/os/Handler;

    iput-object p1, p0, Lcom/estrongs/android/pop/scanner/a;->g:Landroid/content/Context;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/scanner/a;->i:Z

    :try_start_1f
    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/util/af;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/util/af;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/scanner/a;->i:Z

    const-string v1, "255.255.255.0"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_39
    .catch Ljava/net/UnknownHostException; {:try_start_1f .. :try_end_39} :catch_58

    move-result-object v1

    iget-boolean v2, p0, Lcom/estrongs/android/pop/scanner/a;->i:Z

    if-nez v2, :cond_53

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/scanner/a;->a(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    new-instance v0, Lcom/estrongs/android/pop/scanner/f;

    new-array v1, v4, [I

    const/16 v2, 0x1bd

    aput v2, v1, v3

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/scanner/f;-><init>(Lcom/estrongs/android/pop/scanner/a;[I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/scanner/a;->f:Lcom/estrongs/android/pop/scanner/f;

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/a;->f:Lcom/estrongs/android/pop/scanner/f;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/scanner/f;->addObserver(Ljava/util/Observer;)V

    :cond_53
    :goto_53
    return-void

    :cond_54
    const/4 v0, 0x1

    :try_start_55
    iput-boolean v0, p0, Lcom/estrongs/android/pop/scanner/a;->i:Z
    :try_end_57
    .catch Ljava/net/UnknownHostException; {:try_start_55 .. :try_end_57} :catch_58

    goto :goto_53

    :catch_58
    move-exception v0

    iput-boolean v4, p0, Lcom/estrongs/android/pop/scanner/a;->i:Z

    goto :goto_53
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/pop/scanner/a;
    .registers 2

    sget-object v0, Lcom/estrongs/android/pop/scanner/a;->h:Lcom/estrongs/android/pop/scanner/a;

    if-nez v0, :cond_12

    new-instance v0, Lcom/estrongs/android/pop/scanner/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/scanner/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/pop/scanner/a;->h:Lcom/estrongs/android/pop/scanner/a;

    :goto_b
    sget-object v0, Lcom/estrongs/android/pop/scanner/a;->h:Lcom/estrongs/android/pop/scanner/a;

    iput-object p0, v0, Lcom/estrongs/android/pop/scanner/a;->g:Landroid/content/Context;

    sget-object v0, Lcom/estrongs/android/pop/scanner/a;->h:Lcom/estrongs/android/pop/scanner/a;

    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Lcom/estrongs/android/pop/scanner/a;->h:Lcom/estrongs/android/pop/scanner/a;

    invoke-direct {v0}, Lcom/estrongs/android/pop/scanner/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/estrongs/android/pop/scanner/a;->h:Lcom/estrongs/android/pop/scanner/a;

    goto :goto_11

    :cond_1d
    new-instance v0, Lcom/estrongs/android/pop/scanner/a;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/scanner/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/pop/scanner/a;->h:Lcom/estrongs/android/pop/scanner/a;

    goto :goto_b
.end method

.method private a(Ljava/net/InetAddress;)V
    .registers 6

    iput-object p1, p0, Lcom/estrongs/android/pop/scanner/a;->a:Ljava/net/InetAddress;

    :try_start_2
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_d
    array-length v2, v1

    if-lt v0, v2, :cond_11

    :goto_10
    return-void

    :cond_11
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1c

    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    iget-object v2, p0, Lcom/estrongs/android/pop/scanner/a;->c:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_26} :catch_27

    goto :goto_19

    :catch_27
    move-exception v0

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/a;->g:Landroid/content/Context;

    const v1, 0x7f090137

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_10
.end method

.method private a(Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/scanner/a;->a(Ljava/net/InetAddress;)V

    if-nez p2, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/a;->d:[I

    array-length v0, v0

    const/4 v0, 0x0

    :goto_14
    iget-object v2, p0, Lcom/estrongs/android/pop/scanner/a;->d:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1c

    iput-object p2, p0, Lcom/estrongs/android/pop/scanner/a;->b:Ljava/net/InetAddress;

    goto :goto_5

    :cond_1c
    iget-object v2, p0, Lcom/estrongs/android/pop/scanner/a;->d:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method public static b(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/estrongs/android/pop/scanner/a;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/scanner/a;

    move-result-object v0

    invoke-direct {v0}, Lcom/estrongs/android/pop/scanner/a;->f()Z

    move-result v1

    if-eqz v1, :cond_16

    const v0, 0x7f090136

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_15
    return-void

    :cond_16
    iget-boolean v1, v0, Lcom/estrongs/android/pop/scanner/a;->i:Z

    if-eqz v1, :cond_25

    const v0, 0x7f090137

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_15

    :cond_25
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/estrongs/android/pop/c;->a()V

    invoke-direct {v0}, Lcom/estrongs/android/pop/scanner/a;->e()V

    goto :goto_15
.end method

.method private d()I
    .registers 6

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/a;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    xor-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/estrongs/android/pop/scanner/a;->d:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    xor-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/estrongs/android/pop/scanner/a;->d:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    xor-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/estrongs/android/pop/scanner/a;->d:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    xor-int/lit16 v3, v3, 0xff

    mul-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v3

    mul-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    mul-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private e()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/scanner/a;->j:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/scanner/c;->a(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/estrongs/android/pop/scanner/a;->f:Lcom/estrongs/android/pop/scanner/f;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/scanner/a;->j:Z

    return-void
.end method

.method private f()Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/estrongs/android/pop/scanner/a;->j:Z

    if-eqz v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    iget-object v2, p0, Lcom/estrongs/android/pop/scanner/a;->f:Lcom/estrongs/android/pop/scanner/f;

    if-eqz v2, :cond_19

    iget-boolean v2, p0, Lcom/estrongs/android/pop/scanner/a;->e:Z

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/estrongs/android/pop/scanner/a;->f:Lcom/estrongs/android/pop/scanner/f;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/scanner/f;->a()Z

    move-result v2

    if-nez v2, :cond_6

    :cond_17
    move v0, v1

    goto :goto_6

    :cond_19
    move v0, v1

    goto :goto_6
.end method

.method private g()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/scanner/a;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/a;->f:Lcom/estrongs/android/pop/scanner/f;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/a;->f:Lcom/estrongs/android/pop/scanner/f;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/scanner/f;->b()V

    :cond_c
    invoke-static {}, Lcom/estrongs/android/pop/scanner/c;->a()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Vector;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/scanner/a;->d()I

    move-result v3

    const/4 v0, 0x4

    new-array v4, v0, [B

    move v0, v1

    :goto_e
    array-length v5, v4

    if-lt v0, v5, :cond_14

    :goto_11
    if-lt v1, v3, :cond_23

    return-object v2

    :cond_14
    iget-object v5, p0, Lcom/estrongs/android/pop/scanner/a;->c:[I

    aget v5, v5, v0

    iget-object v6, p0, Lcom/estrongs/android/pop/scanner/a;->d:[I

    aget v6, v6, v0

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_23
    const/4 v0, 0x3

    :try_start_24
    aget-byte v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    const/4 v0, 0x3

    aget-byte v0, v4, v0

    iget-object v5, p0, Lcom/estrongs/android/pop/scanner/a;->c:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    if-ne v0, v5, :cond_38

    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_38
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catch Ljava/net/UnknownHostException; {:try_start_24 .. :try_end_3f} :catch_40

    goto :goto_35

    :catch_40
    move-exception v0

    goto :goto_35
.end method

.method protected b()V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/a;->g:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    iget-object v1, p0, Lcom/estrongs/android/pop/scanner/a;->k:Landroid/os/Handler;

    new-instance v2, Lcom/estrongs/android/pop/scanner/b;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/pop/scanner/b;-><init>(Lcom/estrongs/android/pop/scanner/a;Lcom/estrongs/android/pop/view/FileExplorerActivity;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected c()V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/scanner/a;->g()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/scanner/a;->b()V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .registers 6

    if-eqz p2, :cond_2e

    instance-of v0, p2, Lcom/estrongs/android/pop/scanner/h;

    if-eqz v0, :cond_2e

    check-cast p2, Lcom/estrongs/android/pop/scanner/h;

    iget-object v0, p0, Lcom/estrongs/android/pop/scanner/a;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "smb://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/estrongs/android/pop/scanner/h;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/estrongs/android/pop/scanner/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/pop/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/scanner/a;->b()V

    :goto_2d
    return-void

    :cond_2e
    invoke-virtual {p0}, Lcom/estrongs/android/pop/scanner/a;->c()V

    goto :goto_2d
.end method
