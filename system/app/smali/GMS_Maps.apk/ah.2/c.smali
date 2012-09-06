.class public LaH/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .registers 2

    .prologue
    .line 26
    const-string v0, "m=n"

    .line 28
    const-string v1, "a"

    invoke-static {v1, v0}, LaH/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static a(ILjava/lang/String;I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 42
    .line 43
    packed-switch p2, :pswitch_data_70

    move-object v0, v1

    .line 55
    :goto_5
    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "m=s"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v4, 0x2

    if-eqz p1, :cond_2c

    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_2c
    move-object v2, v1

    :goto_2d
    aput-object v2, v3, v4

    const/4 v2, 0x3

    if-nez v0, :cond_5b

    :goto_32
    aput-object v1, v3, v2

    invoke-static {v3}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "a"

    invoke-static {v1, v0}, LaH/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .line 45
    :pswitch_3e
    const-string v0, "s"

    goto :goto_5

    .line 48
    :pswitch_41
    const-string v0, "f"

    goto :goto_5

    .line 51
    :pswitch_44
    const-string v0, "i"

    goto :goto_5

    .line 55
    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "u="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2d

    :cond_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "p="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    .line 43
    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_41
        :pswitch_44
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 113
    const/16 v0, 0x39

    invoke-static {v0, p0, p1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 73
    const-string v0, "m=r"

    .line 75
    const-string v1, "a"

    invoke-static {v1, v0}, LaH/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
