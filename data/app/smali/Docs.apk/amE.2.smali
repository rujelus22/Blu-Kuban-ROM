.class final LamE;
.super Lamm;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamm",
        "<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0, p1}, LamE;->a(LamW;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public a(LamW;)Ljava/util/BitSet;
    .registers 9
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    sget-object v1, Lana;->i:Lana;

    if-ne v0, v1, :cond_f

    .line 76
    invoke-virtual {p1}, LamW;->e()V

    .line 77
    const/4 v0, 0x0

    .line 112
    :goto_e
    return-object v0

    .line 80
    :cond_f
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 81
    invoke-virtual {p1}, LamW;->a()V

    .line 83
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    move v1, v2

    .line 84
    :goto_1c
    sget-object v5, Lana;->b:Lana;

    if-eq v0, v5, :cond_86

    .line 86
    sget-object v5, LamP;->a:[I

    invoke-virtual {v0}, Lana;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_8c

    .line 103
    new-instance v1, Laml;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid bitset value type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Laml;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :pswitch_44
    invoke-virtual {p1}, LamW;->a()I

    move-result v0

    if-eqz v0, :cond_57

    move v0, v3

    .line 105
    :goto_4b
    if-eqz v0, :cond_50

    .line 106
    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 108
    :cond_50
    add-int/lit8 v1, v1, 0x1

    .line 109
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    goto :goto_1c

    :cond_57
    move v0, v2

    .line 88
    goto :goto_4b

    .line 91
    :pswitch_59
    invoke-virtual {p1}, LamW;->c()Z

    move-result v0

    goto :goto_4b

    .line 94
    :pswitch_5e
    invoke-virtual {p1}, LamW;->b()Ljava/lang/String;

    move-result-object v0

    .line 96
    :try_start_62
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_65} :catch_6c

    move-result v0

    if-eqz v0, :cond_6a

    move v0, v3

    goto :goto_4b

    :cond_6a
    move v0, v2

    goto :goto_4b

    .line 97
    :catch_6c
    move-exception v1

    .line 98
    new-instance v1, Laml;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Laml;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_86
    invoke-virtual {p1}, LamW;->b()V

    move-object v0, v4

    .line 112
    goto :goto_e

    .line 86
    nop

    :pswitch_data_8c
    .packed-switch 0x1
        :pswitch_44
        :pswitch_59
        :pswitch_5e
    .end packed-switch
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 73
    check-cast p2, Ljava/util/BitSet;

    invoke-virtual {p0, p1, p2}, LamE;->a(Lanb;Ljava/util/BitSet;)V

    return-void
.end method

.method public a(Lanb;Ljava/util/BitSet;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 116
    if-nez p2, :cond_7

    .line 117
    invoke-virtual {p1}, Lanb;->e()Lanb;

    .line 127
    :goto_6
    return-void

    .line 121
    :cond_7
    invoke-virtual {p1}, Lanb;->a()Lanb;

    move v0, v1

    .line 122
    :goto_b
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 123
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v2, 0x1

    .line 124
    :goto_18
    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lanb;->a(J)Lanb;

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1f
    move v2, v1

    .line 123
    goto :goto_18

    .line 126
    :cond_21
    invoke-virtual {p1}, Lanb;->b()Lanb;

    goto :goto_6
.end method
