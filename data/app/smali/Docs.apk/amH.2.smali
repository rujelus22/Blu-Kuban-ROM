.class final LamH;
.super Lamm;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamm",
        "<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 558
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 558
    invoke-virtual {p0, p1}, LamH;->a(LamW;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public a(LamW;)Ljava/util/Locale;
    .registers 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 561
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    sget-object v2, Lana;->i:Lana;

    if-ne v0, v2, :cond_d

    .line 562
    invoke-virtual {p1}, LamW;->e()V

    .line 584
    :goto_c
    return-object v1

    .line 565
    :cond_d
    invoke-virtual {p1}, LamW;->b()Ljava/lang/String;

    move-result-object v0

    .line 566
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v2, "_"

    invoke-direct {v3, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 571
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 573
    :goto_22
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 574
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 576
    :goto_2c
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 577
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 579
    :goto_37
    if-nez v2, :cond_41

    if-nez v3, :cond_41

    .line 580
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_c

    .line 581
    :cond_41
    if-nez v3, :cond_49

    .line 582
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 584
    :cond_49
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_4f
    move-object v3, v1

    goto :goto_37

    :cond_51
    move-object v2, v1

    goto :goto_2c

    :cond_53
    move-object v0, v1

    goto :goto_22
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 558
    check-cast p2, Ljava/util/Locale;

    invoke-virtual {p0, p1, p2}, LamH;->a(Lanb;Ljava/util/Locale;)V

    return-void
.end method

.method public a(Lanb;Ljava/util/Locale;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 589
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lanb;->b(Ljava/lang/String;)Lanb;

    .line 590
    return-void

    .line 589
    :cond_7
    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
