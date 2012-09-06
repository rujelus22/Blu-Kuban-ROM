.class public final Lcom/google/googlenav/friend/aW;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;I)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v0

    .line 53
    if-eqz v0, :cond_16

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_16

    .line 54
    invoke-static {v0}, Lcom/google/googlenav/common/util/e;->a([B)I

    move-result p1

    .line 56
    :cond_16
    return p1
.end method

.method public static a(Ljava/lang/String;ILcom/google/googlenav/friend/bd;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    new-instance v0, Lcom/google/googlenav/friend/aX;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/googlenav/friend/aX;-><init>(LY/c;Ljava/lang/String;ILcom/google/googlenav/friend/bd;)V

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aX;->g()V

    .line 110
    return-void
.end method

.method public static a(Ljava/lang/String;ILcom/google/googlenav/friend/be;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    new-instance v0, Lcom/google/googlenav/friend/aZ;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/googlenav/friend/aZ;-><init>(LY/c;Ljava/lang/String;ILcom/google/googlenav/friend/be;)V

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aZ;->g()V

    .line 150
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/friend/be;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 202
    new-instance v0, Lcom/google/googlenav/friend/bb;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/googlenav/friend/bb;-><init>(LY/c;Lcom/google/googlenav/friend/be;)V

    invoke-virtual {v0}, Lcom/google/googlenav/friend/bb;->g()V

    .line 212
    return-void
.end method

.method public static a(Ljava/lang/String;ZLcom/google/googlenav/friend/bc;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    new-instance v0, Lcom/google/googlenav/friend/aY;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/googlenav/friend/aY;-><init>(LY/c;Ljava/lang/String;ZLcom/google/googlenav/friend/bc;)V

    invoke-virtual {v0}, Lcom/google/googlenav/friend/aY;->g()V

    .line 130
    return-void
.end method

.method public static a(Ljava/lang/String;ZLcom/google/googlenav/friend/be;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 163
    new-instance v0, Lcom/google/googlenav/friend/ba;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/google/googlenav/friend/ba;-><init>(LY/c;Ljava/lang/String;ZLcom/google/googlenav/friend/be;)V

    invoke-virtual {v0}, Lcom/google/googlenav/friend/ba;->g()V

    .line 172
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/googlenav/common/io/j;->a_(Ljava/lang/String;)[B

    move-result-object v0

    .line 86
    if-eqz v0, :cond_1c

    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1c

    .line 87
    invoke-static {v0}, Lcom/google/googlenav/common/util/e;->a([B)I

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 89
    :goto_19
    return v0

    .line 87
    :cond_1a
    const/4 v0, 0x0

    goto :goto_19

    :cond_1c
    move v0, p1

    .line 89
    goto :goto_19
.end method

.method public static b(Ljava/lang/String;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-static {p1}, Lcom/google/googlenav/common/util/e;->a(I)[B

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 69
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/io/j;->a()V

    .line 70
    return-void
.end method

.method public static b(Ljava/lang/String;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 182
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-static {p0, v0}, Lcom/google/googlenav/friend/aW;->b(Ljava/lang/String;I)V

    .line 183
    return-void

    .line 182
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method
