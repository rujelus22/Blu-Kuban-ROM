.class final LamQ;
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
    .line 158
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LamW;)Ljava/lang/Boolean;
    .registers 4
    .parameter

    .prologue
    .line 160
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    sget-object v1, Lana;->i:Lana;

    if-ne v0, v1, :cond_d

    .line 161
    invoke-virtual {p1}, LamW;->e()V

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, LamW;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_c
.end method

.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 158
    invoke-virtual {p0, p1}, LamQ;->a(LamW;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public a(Lanb;Ljava/lang/Boolean;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 168
    if-nez p2, :cond_8

    const-string v0, "null"

    :goto_4
    invoke-virtual {p1, v0}, Lanb;->b(Ljava/lang/String;)Lanb;

    .line 169
    return-void

    .line 168
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 158
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, LamQ;->a(Lanb;Ljava/lang/Boolean;)V

    return-void
.end method
