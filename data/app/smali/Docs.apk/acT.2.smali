.class public abstract LacT;
.super Ljava/lang/Object;
.source "AbstractHttpContent.java"

# interfaces
.implements Lada;


# instance fields
.field private a:J

.field private a:Lade;


# direct methods
.method protected constructor <init>(Lade;)V
    .registers 4
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, LacT;->a:J

    .line 61
    iput-object p1, p0, LacT;->a:Lade;

    .line 62
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    if-nez p1, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0}, LacT;-><init>(Lade;)V

    .line 54
    return-void

    .line 53
    :cond_7
    new-instance v0, Lade;

    invoke-direct {v0, p1}, Lade;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method


# virtual methods
.method public a()J
    .registers 5

    .prologue
    .line 74
    iget-wide v0, p0, LacT;->a:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    .line 75
    invoke-virtual {p0}, LacT;->b()J

    move-result-wide v0

    iput-wide v0, p0, LacT;->a:J

    .line 77
    :cond_e
    iget-wide v0, p0, LacT;->a:J

    return-wide v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a()Ljava/nio/charset/Charset;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, LacT;->a:Lade;

    if-eqz v0, :cond_c

    iget-object v0, p0, LacT;->a:Lade;

    invoke-virtual {v0}, Lade;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_f

    :cond_c
    sget-object v0, LafC;->c:Ljava/nio/charset/Charset;

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, LacT;->a:Lade;

    invoke-virtual {v0}, Lade;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_e
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method protected b()J
    .registers 3

    .prologue
    .line 129
    invoke-virtual {p0}, LacT;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 130
    const-wide/16 v0, -0x1

    .line 138
    :goto_8
    return-wide v0

    .line 132
    :cond_9
    new-instance v0, LacX;

    invoke-direct {v0}, LacX;-><init>()V

    .line 134
    :try_start_e
    invoke-virtual {p0, v0}, LacT;->a(Ljava/io/OutputStream;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_17

    .line 136
    invoke-virtual {v0}, LacX;->close()V

    .line 138
    iget-wide v0, v0, LacX;->a:J

    goto :goto_8

    .line 136
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, LacX;->close()V

    throw v1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, LacT;->a:Lade;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, LacT;->a:Lade;

    invoke-virtual {v0}, Lade;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
