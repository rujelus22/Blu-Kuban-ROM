.class public LVQ;
.super Ljava/io/OutputStream;
.source "SyncProgressMonitorOutputStream.java"


# instance fields
.field private final a:J

.field private final a:LVd;

.field private a:Ljava/io/OutputStream;

.field private b:J


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;LVd;J)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v6}, LVQ;-><init>(Ljava/io/OutputStream;LVd;JJ)V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;LVd;JJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 34
    iput-object p1, p0, LVQ;->a:Ljava/io/OutputStream;

    .line 35
    iput-object p2, p0, LVQ;->a:LVd;

    .line 36
    iput-wide p3, p0, LVQ;->a:J

    .line 37
    iput-wide p5, p0, LVQ;->b:J

    .line 38
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 84
    invoke-static {}, Lcg;->b()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 85
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

    .line 87
    iget-wide v1, p0, LVQ;->b:J

    long-to-int v1, v1

    iput v1, v0, LFy;->bytesTransferred:I

    .line 88
    throw v0

    .line 90
    :cond_28
    return-void
.end method

.method private a(J)V
    .registers 8
    .parameter

    .prologue
    .line 75
    iget-wide v0, p0, LVQ;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, LVQ;->b:J

    .line 77
    :try_start_5
    iget-object v0, p0, LVQ;->a:LVd;

    iget-wide v1, p0, LVQ;->b:J

    iget-wide v3, p0, LVQ;->a:J

    invoke-interface {v0, v1, v2, v3, v4}, LVd;->a(JJ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_e} :catch_f

    .line 81
    return-void

    .line 78
    :catch_f
    move-exception v0

    .line 79
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, LVQ;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_c

    .line 69
    iget-object v0, p0, LVQ;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, LVQ;->a:Ljava/io/OutputStream;

    .line 72
    :cond_c
    return-void
.end method

.method public write(I)V
    .registers 4
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, LVQ;->a()V

    .line 43
    iget-object v0, p0, LVQ;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 47
    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, LVQ;->a(J)V

    .line 48
    invoke-direct {p0}, LVQ;->a()V

    .line 49
    return-void
.end method

.method public write([B)V
    .registers 4
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, LVQ;->write([BII)V

    .line 54
    return-void
.end method

.method public write([BII)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, LVQ;->a()V

    .line 59
    iget-object v0, p0, LVQ;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 62
    int-to-long v0, p3

    invoke-direct {p0, v0, v1}, LVQ;->a(J)V

    .line 63
    invoke-direct {p0}, LVQ;->a()V

    .line 64
    return-void
.end method
