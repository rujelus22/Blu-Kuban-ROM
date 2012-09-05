.class public Lcom/wssnps/smlDebug;
.super Ljava/lang/Object;
.source "smlDebug.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsEmpty(Ljava/lang/String;)Z
    .registers 2
    .parameter "s"

    .prologue
    .line 130
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    if-nez v0, :cond_a

    .line 131
    :cond_8
    const/4 v0, 0x1

    .line 132
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static SML_DEBUG(ILjava/lang/String;)V
    .registers 2
    .parameter "DBG_LVL"
    .parameter "fmt"

    .prologue
    .line 107
    invoke-static {p0, p1}, Lcom/wssnps/smlDebug;->smlLibWsDebug(ILjava/lang/String;)V

    .line 108
    return-void
.end method

.method public static SML_DEBUG(ILjava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .parameter "DBG_LVL"
    .parameter "fmt"
    .parameter "p1"

    .prologue
    .line 112
    invoke-static {p1, p2}, Lcom/wssnps/smlDebug;->strFormat(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wssnps/smlDebug;->smlLibWsDebug(ILjava/lang/String;)V

    .line 113
    return-void
.end method

.method public static smlLibWsDebug(ILjava/lang/String;)V
    .registers 6
    .parameter "DBG_LVL"
    .parameter "s"

    .prologue
    .line 68
    const-string v0, ""

    .line 70
    .local v0, prefix:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v1, strbuild:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_c

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1d

    .line 80
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_1d
    packed-switch p0, :pswitch_data_40

    .line 103
    :goto_20
    return-void

    .line 87
    :pswitch_21
    const-string v2, "sml"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 92
    :pswitch_2b
    const-string v2, "sml"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 97
    :pswitch_35
    const-string v2, "sml"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 83
    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_35
        :pswitch_2b
        :pswitch_21
    .end packed-switch
.end method

.method public static strFormat(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "fmt"
    .parameter "p1"

    .prologue
    .line 37
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 38
    .local v0, p:[Ljava/lang/Object;
    invoke-static {p0, v0}, Lcom/wssnps/smlDebug;->strFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static strFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .parameter "fmt"
    .parameter "p"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    const-string v1, "%b"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_f

    .line 21
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 32
    :goto_e
    return-object v1

    .line 23
    :cond_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    array-length v1, p1

    if-ge v0, v1, :cond_3b

    .line 25
    aget-object v1, p1, v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 26
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    .line 23
    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 28
    :cond_28
    aget-object v1, p1, v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    goto :goto_25

    .line 32
    :cond_3b
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e
.end method
