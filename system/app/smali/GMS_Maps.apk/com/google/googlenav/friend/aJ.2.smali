.class public Lcom/google/googlenav/friend/aJ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(I)V
    .registers 2
    .parameter

    .prologue
    .line 96
    const-string v0, "LOCATION_REPORTER_PRIVACY_SETTING"

    invoke-static {v0, p0}, Lcom/google/googlenav/friend/aW;->b(Ljava/lang/String;I)V

    .line 97
    return-void
.end method

.method private static a(ILcom/google/googlenav/friend/be;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 65
    const-string v0, "LOCATION_REPORTER_PRIVACY_SETTING"

    invoke-static {v0, p0, p1}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ILcom/google/googlenav/friend/be;)V

    .line 67
    return-void
.end method

.method public static a(Lcom/google/googlenav/friend/ag;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/googlenav/friend/ag;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 130
    :goto_7
    invoke-virtual {p0}, Lcom/google/googlenav/friend/ag;->d()Z

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/friend/aJ;->b(Z)V

    .line 134
    return-void

    .line 121
    :pswitch_f
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->f()V

    goto :goto_7

    .line 124
    :pswitch_13
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->g()V

    goto :goto_7

    .line 127
    :pswitch_17
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->h()V

    goto :goto_7

    .line 119
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method

.method public static a(Lcom/google/googlenav/friend/be;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/googlenav/friend/aJ;->a(ILcom/google/googlenav/friend/be;)V

    .line 54
    return-void
.end method

.method public static a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 100
    const-string v0, "LOCATION_SHARING"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ZLcom/google/googlenav/friend/be;)V

    .line 101
    return-void
.end method

.method public static a(ZLcom/google/googlenav/friend/be;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 70
    const-string v0, "LOCATION_SHARING"

    invoke-static {v0, p0, p1}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;ZLcom/google/googlenav/friend/be;)V

    .line 71
    return-void
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 32
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->d()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b(Lcom/google/googlenav/friend/ag;)V
    .registers 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/google/googlenav/friend/ag;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 148
    :goto_8
    invoke-virtual {p0}, Lcom/google/googlenav/friend/ag;->d()Z

    move-result v0

    invoke-static {v0}, Lcom/google/googlenav/friend/aJ;->a(Z)V

    .line 152
    return-void

    .line 139
    :pswitch_10
    invoke-static {v1}, Lcom/google/googlenav/friend/aJ;->a(Lcom/google/googlenav/friend/be;)V

    goto :goto_8

    .line 142
    :pswitch_14
    invoke-static {v1}, Lcom/google/googlenav/friend/aJ;->b(Lcom/google/googlenav/friend/be;)V

    goto :goto_8

    .line 145
    :pswitch_18
    invoke-static {v1}, Lcom/google/googlenav/friend/aJ;->c(Lcom/google/googlenav/friend/be;)V

    goto :goto_8

    .line 137
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_10
        :pswitch_14
        :pswitch_18
    .end packed-switch
.end method

.method public static b(Lcom/google/googlenav/friend/be;)V
    .registers 2
    .parameter

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/google/googlenav/friend/aJ;->a(ILcom/google/googlenav/friend/be;)V

    .line 58
    return-void
.end method

.method public static b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 105
    const-string v0, "LOCATION_SHARING"

    invoke-static {v0, p0}, Lcom/google/googlenav/friend/aW;->b(Ljava/lang/String;Z)V

    .line 106
    return-void
.end method

.method public static b()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 36
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->d()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static c(Lcom/google/googlenav/friend/be;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/google/googlenav/friend/aJ;->a(ILcom/google/googlenav/friend/be;)V

    .line 62
    return-void
.end method

.method public static c()Z
    .registers 2

    .prologue
    .line 40
    invoke-static {}, Lcom/google/googlenav/friend/aJ;->d()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static d()I
    .registers 2

    .prologue
    .line 44
    const-string v0, "LOCATION_REPORTER_PRIVACY_SETTING"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static d(Lcom/google/googlenav/friend/be;)V
    .registers 2
    .parameter

    .prologue
    .line 115
    const-string v0, "LOCATION_REPORTER_PRIVACY_SETTING"

    invoke-static {v0, p0}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;Lcom/google/googlenav/friend/be;)V

    .line 116
    return-void
.end method

.method public static e()Z
    .registers 2

    .prologue
    .line 49
    const-string v0, "LOCATION_SHARING"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/friend/aW;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static f()V
    .registers 1

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/googlenav/friend/aJ;->a(I)V

    .line 78
    return-void
.end method

.method public static g()V
    .registers 1

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/googlenav/friend/aJ;->a(I)V

    .line 85
    return-void
.end method

.method public static h()V
    .registers 1

    .prologue
    .line 91
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/googlenav/friend/aJ;->a(I)V

    .line 92
    return-void
.end method
