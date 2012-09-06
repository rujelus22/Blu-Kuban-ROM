.class LaT/n;
.super Lac/t;
.source "SourceFile"


# instance fields
.field final synthetic a:LaT/k;


# direct methods
.method constructor <init>(LaT/k;I[BZZZLjava/lang/Object;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, LaT/n;->a:LaT/k;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lac/t;-><init>(I[BZZZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public l_()V
    .registers 5

    .prologue
    .line 816
    const-class v1, LaT/k;

    monitor-enter v1

    .line 817
    :try_start_3
    invoke-static {}, LaT/k;->f()Z

    move-result v0

    if-nez v0, :cond_37

    .line 819
    invoke-static {}, LaT/k;->g()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 820
    invoke-static {}, LaT/k;->h()LaT/o;

    move-result-object v0

    invoke-interface {v0}, LaT/o;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 821
    if-eqz v0, :cond_39

    .line 822
    invoke-static {}, LaT/k;->h()LaT/o;

    move-result-object v0

    invoke-interface {v0}, LaT/o;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iget-object v2, p0, LaT/n;->a:LaT/k;

    invoke-static {v2}, LaT/k;->a(LaT/k;)I

    move-result v2

    invoke-static {v0, v2}, LaT/k;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 824
    invoke-static {}, LaT/k;->h()LaT/o;

    move-result-object v2

    invoke-interface {v2, v0}, LaT/o;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 840
    :cond_32
    :goto_32
    iget-object v0, p0, LaT/n;->a:LaT/k;

    invoke-virtual {v0}, LaT/k;->e()V

    .line 842
    :cond_37
    monitor-exit v1

    .line 843
    return-void

    .line 827
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, LaT/k;

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".uploadEventLog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 834
    const-string v2, "USER_EVENTSUserEventReporter"

    invoke-static {v2, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_32

    .line 842
    :catchall_5d
    move-exception v0

    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw v0
.end method

.method public m_()V
    .registers 2

    .prologue
    .line 811
    iget-object v0, p0, LaT/n;->a:LaT/k;

    invoke-virtual {v0}, LaT/k;->e()V

    .line 812
    return-void
.end method
