.class public Lcom/google/googlenav/friend/Y;
.super Lcom/google/googlenav/friend/bk;
.source "SourceFile"


# static fields
.field private static a:Lcom/google/googlenav/friend/Y;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/google/googlenav/friend/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/googlenav/friend/e;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/googlenav/friend/bk;-><init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/friend/d;)V

    .line 53
    return-void
.end method

.method public static declared-synchronized a(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)Lcom/google/googlenav/friend/Y;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    const-class v1, Lcom/google/googlenav/friend/Y;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/google/googlenav/friend/Y;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/friend/Y;-><init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V

    sput-object v0, Lcom/google/googlenav/friend/Y;->a:Lcom/google/googlenav/friend/Y;

    .line 62
    sget-object v0, Lcom/google/googlenav/friend/Y;->a:Lcom/google/googlenav/friend/Y;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static i()Lcom/google/googlenav/friend/Y;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/google/googlenav/friend/Y;->a:Lcom/google/googlenav/friend/Y;

    return-object v0
.end method

.method public static declared-synchronized j()Z
    .registers 2

    .prologue
    .line 75
    const-class v1, Lcom/google/googlenav/friend/Y;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/friend/Y;->a:Lcom/google/googlenav/friend/Y;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static k()Z
    .registers 1

    .prologue
    .line 100
    const-string v0, "GOOGLE_PLUS_TERMS_ACCEPTED_SETTING"

    invoke-static {v0}, Lcom/google/googlenav/friend/Y;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public B_()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/google/googlenav/friend/Y;->r()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 86
    const/16 v0, 0x3c6

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/google/googlenav/friend/Y;->c:Lcom/google/googlenav/ui/wizard/ju;

    const/16 v2, 0x3da

    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/String;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3db

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0, p0}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;Ljava/lang/String;Las/g;)V

    .line 92
    :cond_2f
    return-void
.end method

.method protected C_()V
    .registers 4

    .prologue
    .line 129
    const/16 v0, 0x5b

    const-string v1, "co"

    const-string v2, "ol"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method protected a(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)Lcom/google/googlenav/friend/bt;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Lcom/google/googlenav/friend/Z;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/googlenav/friend/Z;-><init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/bk;)V

    return-object v0
.end method

.method protected c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 110
    new-instance v0, Lcom/google/googlenav/friend/W;

    invoke-direct {v0, p1}, Lcom/google/googlenav/friend/W;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 112
    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/W;->a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method protected d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 135
    const-string v0, "GOOGLE_PLUS_TERMS_ACCEPTED_SETTING"

    return-object v0
.end method

.method protected g()I
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method
