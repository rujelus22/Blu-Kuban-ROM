.class final LamG;
.super Lamm;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamm",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 490
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 490
    invoke-virtual {p0, p1}, LamG;->a(LamW;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public a(LamW;)Ljava/util/Calendar;
    .registers 11
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 500
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    sget-object v1, Lana;->i:Lana;

    if-ne v0, v1, :cond_e

    .line 501
    invoke-virtual {p1}, LamW;->e()V

    .line 502
    const/4 v0, 0x0

    .line 529
    :goto_d
    return-object v0

    .line 504
    :cond_e
    invoke-virtual {p1}, LamW;->c()V

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    .line 511
    :cond_16
    :goto_16
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    sget-object v7, Lana;->d:Lana;

    if-eq v0, v7, :cond_62

    .line 512
    invoke-virtual {p1}, LamW;->a()Ljava/lang/String;

    move-result-object v7

    .line 513
    invoke-virtual {p1}, LamW;->a()I

    move-result v0

    .line 514
    const-string v8, "year"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    move v1, v0

    .line 515
    goto :goto_16

    .line 516
    :cond_30
    const-string v8, "month"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a

    move v2, v0

    .line 517
    goto :goto_16

    .line 518
    :cond_3a
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    move v3, v0

    .line 519
    goto :goto_16

    .line 520
    :cond_44
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4e

    move v4, v0

    .line 521
    goto :goto_16

    .line 522
    :cond_4e
    const-string v8, "minute"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_58

    move v5, v0

    .line 523
    goto :goto_16

    .line 524
    :cond_58
    const-string v8, "second"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    move v6, v0

    .line 525
    goto :goto_16

    .line 528
    :cond_62
    invoke-virtual {p1}, LamW;->d()V

    .line 529
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    goto :goto_d
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 490
    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, LamG;->a(Lanb;Ljava/util/Calendar;)V

    return-void
.end method

.method public a(Lanb;Ljava/util/Calendar;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 534
    if-nez p2, :cond_6

    .line 535
    invoke-virtual {p1}, Lanb;->e()Lanb;

    .line 552
    :goto_5
    return-void

    .line 538
    :cond_6
    invoke-virtual {p1}, Lanb;->c()Lanb;

    .line 539
    const-string v0, "year"

    invoke-virtual {p1, v0}, Lanb;->a(Ljava/lang/String;)Lanb;

    .line 540
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lanb;->a(J)Lanb;

    .line 541
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lanb;->a(Ljava/lang/String;)Lanb;

    .line 542
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lanb;->a(J)Lanb;

    .line 543
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lanb;->a(Ljava/lang/String;)Lanb;

    .line 544
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lanb;->a(J)Lanb;

    .line 545
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lanb;->a(Ljava/lang/String;)Lanb;

    .line 546
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lanb;->a(J)Lanb;

    .line 547
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lanb;->a(Ljava/lang/String;)Lanb;

    .line 548
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lanb;->a(J)Lanb;

    .line 549
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lanb;->a(Ljava/lang/String;)Lanb;

    .line 550
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lanb;->a(J)Lanb;

    .line 551
    invoke-virtual {p1}, Lanb;->d()Lanb;

    goto :goto_5
.end method
