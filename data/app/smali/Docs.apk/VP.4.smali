.class public LVP;
.super Ljava/io/InputStream;
.source "SyncProgressMonitorInputStream.java"


# instance fields
.field private final a:J

.field private final a:LVd;

.field private a:Ljava/io/InputStream;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;LVd;JJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 28
    iput-object p1, p0, LVP;->a:Ljava/io/InputStream;

    .line 29
    iput-object p2, p0, LVP;->a:LVd;

    .line 30
    iput-wide p3, p0, LVP;->a:J

    .line 31
    iput-wide p5, p0, LVP;->b:J

    .line 32
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 89
    invoke-static {}, Lcg;->b()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 90
    new-instance v0, LFy;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - thread interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LFy;-><init>(Ljava/lang/String;)V

    .line 92
    iget-wide v1, p0, LVP;->b:J

    long-to-int v1, v1

    iput v1, v0, LFy;->bytesTransferred:I

    .line 93
    throw v0

    .line 95
    :cond_28
    return-void
.end method

.method private a(J)V
    .registers 8
    .parameter

    .prologue
    .line 77
    iget-wide v0, p0, LVP;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, LVP;->b:J

    .line 79
    :try_start_5
    iget-object v0, p0, LVP;->a:LVd;

    iget-wide v1, p0, LVP;->b:J

    iget-wide v3, p0, LVP;->a:J

    invoke-interface {v0, v1, v2, v3, v4}, LVd;->a(JJ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 84
    return-void

    .line 80
    :catch_f
    move-exception v0

    .line 82
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, LVP;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_c

    .line 71
    iget-object v0, p0, LVP;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, LVP;->a:Ljava/io/InputStream;

    .line 74
    :cond_c
    return-void
.end method

.method public read()I
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0}, LVP;->a()V

    .line 37
    iget-object v0, p0, LVP;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 38
    invoke-direct {p0}, LVP;->a()V

    .line 40
    const-wide/16 v1, 0x1

    invoke-direct {p0, v1, v2}, LVP;->a(J)V

    .line 41
    return v0
.end method

.method public read([B)I
    .registers 5
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, LVP;->a()V

    .line 47
    iget-object v0, p0, LVP;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 48
    invoke-direct {p0}, LVP;->a()V

    .line 50
    if-lez v0, :cond_12

    .line 51
    int-to-long v1, v0

    invoke-direct {p0, v1, v2}, LVP;->a(J)V

    .line 53
    :cond_12
    return v0
.end method

.method public read([BII)I
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, LVP;->a()V

    .line 59
    iget-object v0, p0, LVP;->a:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 60
    invoke-direct {p0}, LVP;->a()V

    .line 62
    if-lez v0, :cond_12

    .line 63
    int-to-long v1, v0

    invoke-direct {p0, v1, v2}, LVP;->a(J)V

    .line 65
    :cond_12
    return v0
.end method
