.class public LadL;
.super Laeo;
.source "GenericJson.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:LadN;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Laeo;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LadL;
    .registers 2

    .prologue
    .line 84
    invoke-super {p0}, Laeo;->a()Laeo;

    move-result-object v0

    check-cast v0, LadL;

    return-object v0
.end method

.method public bridge synthetic a()Laeo;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, LadL;->a()LadL;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, LadL;->a:LadN;

    if-eqz v0, :cond_b

    .line 77
    iget-object v0, p0, LadL;->a:LadN;

    invoke-virtual {v0, p0}, LadN;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Laeo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public final a(LadN;)V
    .registers 2
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, LadL;->a:LadN;

    .line 59
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 38
    invoke-virtual {p0}, LadL;->a()LadL;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, LadL;->a:LadN;

    if-eqz v0, :cond_b

    .line 64
    iget-object v0, p0, LadL;->a:LadN;

    invoke-virtual {v0, p0}, LadN;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Laeo;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
