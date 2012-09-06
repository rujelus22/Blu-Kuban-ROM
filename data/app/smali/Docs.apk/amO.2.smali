.class final LamO;
.super Lamm;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamm",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LamW;)Ljava/lang/Boolean;
    .registers 4
    .parameter

    .prologue
    .line 135
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    sget-object v1, Lana;->i:Lana;

    if-ne v0, v1, :cond_d

    .line 136
    invoke-virtual {p1}, LamW;->e()V

    .line 137
    const/4 v0, 0x0

    .line 142
    :goto_c
    return-object v0

    .line 138
    :cond_d
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    sget-object v1, Lana;->f:Lana;

    if-ne v0, v1, :cond_22

    .line 140
    invoke-virtual {p1}, LamW;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c

    .line 142
    :cond_22
    invoke-virtual {p1}, LamW;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c
.end method

.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 132
    invoke-virtual {p0, p1}, LamO;->a(LamW;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Lanb;Ljava/lang/Boolean;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 146
    if-nez p2, :cond_6

    .line 147
    invoke-virtual {p1}, Lanb;->e()Lanb;

    .line 151
    :goto_5
    return-void

    .line 150
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lanb;->a(Z)Lanb;

    goto :goto_5
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 132
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, LamO;->a(Lanb;Ljava/lang/Boolean;)V

    return-void
.end method
