.class final Laph;
.super Ljava/lang/Object;
.source "MembersInjectorImpl.java"

# interfaces
.implements Lany;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lany",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:LaiA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiA",
            "<",
            "LapN;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LanP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanP",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final a:LaoP;

.field private final b:LaiA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiA",
            "<",
            "Lany",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field private final c:LaiA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiA",
            "<",
            "Laqs",
            "<-TT;>;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v2, Laoy;

    iget-object v0, p0, Laph;->a:LanP;

    invoke-direct {v2, v0}, Laoy;-><init>(Ljava/lang/Object;)V

    .line 61
    const/4 v3, 0x0

    :try_start_8
    iget-object v4, p0, Laph;->a:LanP;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laph;->a(Ljava/lang/Object;Laoy;Lant;Ljava/lang/Object;Z)V
    :try_end_10
    .catch LaoE; {:try_start_8 .. :try_end_10} :catch_14

    .line 66
    :goto_10
    invoke-virtual {v2}, Laoy;->b()V

    .line 67
    return-void

    .line 62
    :catch_14
    move-exception v0

    .line 63
    invoke-virtual {v0}, LaoE;->a()Laoy;

    move-result-object v0

    invoke-virtual {v2, v0}, Laoy;->a(Laoy;)Laoy;

    goto :goto_10
.end method

.method a(Ljava/lang/Object;Laoy;)V
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Laoy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p2}, Laoy;->a()I

    move-result v1

    .line 103
    iget-object v0, p0, Laph;->c:LaiA;

    invoke-virtual {v0}, LaiA;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laqs;

    .line 105
    :try_start_16
    invoke-interface {v0, p1}, Laqs;->a(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_a

    .line 106
    :catch_1a
    move-exception v3

    .line 107
    iget-object v4, p0, Laph;->a:LanP;

    invoke-virtual {p2, v0, v4, v3}, Laoy;->a(Laqs;LanP;Ljava/lang/RuntimeException;)Laoy;

    goto :goto_a

    .line 110
    :cond_21
    invoke-virtual {p2, v1}, Laoy;->a(I)V

    .line 111
    return-void
.end method

.method a(Ljava/lang/Object;Laoy;Lant;Ljava/lang/Object;Z)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Laoy;",
            "Lant",
            "<TT;>;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 72
    if-nez p1, :cond_3

    .line 99
    :cond_2
    :goto_2
    return-void

    .line 76
    :cond_3
    iget-object v7, p0, Laph;->a:LaoP;

    new-instance v0, Lapi;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lapi;-><init>(Laph;Lant;Ljava/lang/Object;Ljava/lang/Object;Laoy;Z)V

    invoke-virtual {v7, v0}, LaoP;->a(Laov;)Ljava/lang/Object;

    .line 96
    if-nez p5, :cond_2

    .line 97
    invoke-virtual {p0, p1, p2}, Laph;->a(Ljava/lang/Object;Laoy;)V

    goto :goto_2
.end method

.method a(Ljava/lang/Object;Laoy;Lapb;Z)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Laoy;",
            "Lapb;",
            "Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Laph;->a:LaiA;

    invoke-virtual {v0}, LaiA;->size()I

    move-result v3

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_25

    .line 116
    iget-object v0, p0, Laph;->a:LaiA;

    invoke-virtual {v0, v2}, LaiA;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LapN;

    .line 117
    if-eqz p4, :cond_1e

    invoke-interface {v0}, LapN;->a()Laqt;

    move-result-object v4

    invoke-virtual {v4}, Laqt;->a()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 118
    :cond_1e
    invoke-interface {v0, p2, p3, p1}, LapN;->a(Laoy;Lapb;Ljava/lang/Object;)V

    .line 115
    :cond_21
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    .line 123
    :cond_25
    if-nez p4, :cond_45

    .line 125
    iget-object v0, p0, Laph;->b:LaiA;

    invoke-virtual {v0}, LaiA;->size()I

    move-result v2

    :goto_2d
    if-ge v1, v2, :cond_45

    .line 126
    iget-object v0, p0, Laph;->b:LaiA;

    invoke-virtual {v0, v1}, LaiA;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lany;

    .line 128
    :try_start_37
    invoke-interface {v0, p1}, Lany;->a(Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_3a} :catch_3e

    .line 125
    :goto_3a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2d

    .line 129
    :catch_3e
    move-exception v3

    .line 130
    iget-object v4, p0, Laph;->a:LanP;

    invoke-virtual {p2, v0, v4, v3}, Laoy;->a(Lany;LanP;Ljava/lang/RuntimeException;)Laoy;

    goto :goto_3a

    .line 134
    :cond_45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MembersInjector<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Laph;->a:LanP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
