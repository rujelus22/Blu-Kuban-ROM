.class LVN;
.super Ljava/lang/Object;
.source "PartialDownloadedFileStoreImpl.java"

# interfaces
.implements LVK;


# instance fields
.field private a:J

.field private a:LQO;

.field private a:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(LQO;)V
    .registers 3
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQO;

    iput-object v0, p0, LVN;->a:LQO;

    .line 50
    return-void
.end method

.method static synthetic a(LVN;J)J
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 43
    iput-wide p1, p0, LVN;->a:J

    return-wide p1
.end method


# virtual methods
.method public a()J
    .registers 3

    .prologue
    .line 114
    iget-wide v0, p0, LVN;->a:J

    return-wide v0
.end method

.method public a(LXP;)Ljava/io/OutputStream;
    .registers 9
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 93
    iget-object v0, p0, LVN;->a:LQO;

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, LafQ;->b(Z)V

    .line 94
    iget-object v0, p0, LVN;->a:Ljava/io/OutputStream;

    if-nez v0, :cond_3a

    .line 95
    iget-object v0, p0, LVN;->a:LQO;

    invoke-interface {v0}, LQO;->a()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 96
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, LVN;->a:LQO;

    invoke-interface {v2}, LQO;->a()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, LVN;->a:Ljava/io/OutputStream;

    .line 97
    if-eqz v0, :cond_2b

    .line 98
    iget-object v1, p0, LVN;->a:Ljava/io/OutputStream;

    invoke-interface {p1, v0, v1}, LXP;->a(Ljava/security/Key;Ljava/io/OutputStream;)Ljavax/crypto/CipherOutputStream;

    move-result-object v0

    iput-object v0, p0, LVN;->a:Ljava/io/OutputStream;

    .line 100
    :cond_2b
    new-instance v2, LVO;

    invoke-direct {v2, p0}, LVO;-><init>(LVN;)V

    .line 106
    new-instance v0, LVQ;

    iget-object v1, p0, LVN;->a:Ljava/io/OutputStream;

    move-wide v5, v3

    invoke-direct/range {v0 .. v6}, LVQ;-><init>(Ljava/io/OutputStream;LVd;JJ)V

    iput-object v0, p0, LVN;->a:Ljava/io/OutputStream;

    .line 109
    :cond_3a
    iget-object v0, p0, LVN;->a:Ljava/io/OutputStream;

    return-object v0

    .line 93
    :cond_3d
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, LVN;->a:LQO;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 87
    iget-object v0, p0, LVN;->a:LQO;

    invoke-interface {v0}, LQO;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a()V
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, LVN;->a:LQO;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 75
    iget-object v0, p0, LVN;->a:LQO;

    invoke-interface {v0}, LQO;->a()V

    .line 76
    return-void

    .line 74
    :cond_e
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, LVN;->a:LQO;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, LafQ;->b(Z)V

    .line 81
    iget-object v0, p0, LVN;->a:LQO;

    invoke-interface {v0}, LQO;->a()Z

    move-result v0

    return v0

    .line 80
    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, LVN;->a:LQO;

    if-nez v0, :cond_6

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, LVN;->a:LQO;

    invoke-interface {v0}, LQO;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_5
.end method

.method public close()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 57
    iget-object v0, p0, LVN;->a:LQO;

    if-nez v0, :cond_6

    .line 70
    :goto_5
    return-void

    .line 62
    :cond_6
    :try_start_6
    iget-object v0, p0, LVN;->a:Ljava/io/OutputStream;

    if-eqz v0, :cond_f

    .line 63
    iget-object v0, p0, LVN;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_19

    .line 66
    :cond_f
    iget-object v0, p0, LVN;->a:LQO;

    invoke-interface {v0}, LQO;->b()V

    .line 67
    iput-object v2, p0, LVN;->a:Ljava/io/OutputStream;

    .line 68
    iput-object v2, p0, LVN;->a:LQO;

    goto :goto_5

    .line 66
    :catchall_19
    move-exception v0

    iget-object v1, p0, LVN;->a:LQO;

    invoke-interface {v1}, LQO;->b()V

    .line 67
    iput-object v2, p0, LVN;->a:Ljava/io/OutputStream;

    .line 68
    iput-object v2, p0, LVN;->a:LQO;

    throw v0
.end method
