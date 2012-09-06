.class public Lcom/google/googlenav/ui/bA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Lcom/google/googlenav/ui/bn;->aO:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/bA;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lad/y;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 38
    if-nez p0, :cond_5

    .line 40
    const-string v0, ""

    .line 61
    :goto_4
    return-object v0

    .line 43
    :cond_5
    invoke-virtual {p0}, Lad/y;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    .line 61
    invoke-virtual {p0}, Lad/y;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 45
    :pswitch_11
    const/16 v0, 0x1dd

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 51
    :pswitch_18
    invoke-virtual {p0}, Lad/y;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 52
    invoke-virtual {p0}, Lad/y;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 53
    :cond_27
    invoke-virtual {p0}, Lad/y;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 54
    invoke-virtual {p0}, Lad/y;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 56
    :cond_36
    const/16 v0, 0x3e0

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 59
    :pswitch_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lad/y;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bA;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 43
    nop

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_18
        :pswitch_11
        :pswitch_18
        :pswitch_3d
        :pswitch_18
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method public static b(Lad/y;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 71
    if-nez p0, :cond_5

    .line 73
    const-string v0, ""

    .line 81
    :cond_4
    :goto_4
    return-object v0

    .line 76
    :cond_5
    invoke-virtual {p0}, Lad/y;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lad/y;->e()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_13
    invoke-virtual {p0}, Lad/y;->s()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/bA;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 76
    :cond_2d
    invoke-virtual {p0}, Lad/y;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public static c(Lad/y;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 94
    invoke-virtual {p0}, Lad/y;->h()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v1}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 96
    invoke-virtual {p0}, Lad/y;->j()Lcom/google/googlenav/ai;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1b

    .line 98
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {v0}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 112
    :cond_1a
    :goto_1a
    return-object v0

    .line 103
    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a

    .line 105
    :cond_1d
    invoke-virtual {p0}, Lad/y;->j()Lcom/google/googlenav/ai;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_2d

    .line 107
    invoke-virtual {v0}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    :cond_2d
    move-object v0, v1

    .line 112
    goto :goto_1a
.end method
