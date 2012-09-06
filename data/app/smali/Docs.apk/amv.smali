.class final Lamv;
.super Lamm;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamm",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 291
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LamW;)Ljava/lang/Number;
    .registers 6
    .parameter

    .prologue
    .line 294
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    .line 295
    sget-object v1, LamP;->a:[I

    invoke-virtual {v0}, Lana;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_38

    .line 302
    :pswitch_f
    new-instance v1, Laml;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting number, got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Laml;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    :pswitch_28
    invoke-virtual {p1}, LamW;->e()V

    .line 298
    const/4 v0, 0x0

    .line 300
    :goto_2c
    return-object v0

    :pswitch_2d
    new-instance v0, Lamq;

    invoke-virtual {p1}, LamW;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lamq;-><init>(Ljava/lang/String;)V

    goto :goto_2c

    .line 295
    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_f
        :pswitch_f
        :pswitch_28
    .end packed-switch
.end method

.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lamv;->a(LamW;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public a(Lanb;Ljava/lang/Number;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 307
    invoke-virtual {p1, p2}, Lanb;->a(Ljava/lang/Number;)Lanb;

    .line 308
    return-void
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 291
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lamv;->a(Lanb;Ljava/lang/Number;)V

    return-void
.end method
