.class public Lcom/google/googlenav/ui/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(LZ/a;Z)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-virtual {p1}, LZ/a;->e()C

    move-result v0

    const/16 v1, 0x33

    if-eq v0, v1, :cond_1a

    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1a

    if-eqz p2, :cond_1c

    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1c

    .line 59
    :cond_1a
    const/4 v0, 0x1

    .line 68
    :goto_1b
    return v0

    .line 62
    :cond_1c
    invoke-virtual {p1}, LZ/a;->e()C

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_36

    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_36

    if-eqz p2, :cond_38

    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_38

    .line 65
    :cond_36
    const/4 v0, -0x1

    goto :goto_1b

    .line 68
    :cond_38
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method a(LZ/a;)V
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0x10

    .line 77
    invoke-virtual {p1}, LZ/a;->e()C

    move-result v0

    .line 79
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v1

    if-nez v1, :cond_23

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, LaT/k;->a(ILjava/lang/String;)V

    .line 91
    :cond_22
    :goto_22
    return-void

    .line 86
    :cond_23
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_22

    .line 88
    const-string v0, "s"

    invoke-static {v3, v0}, LaT/k;->a(ILjava/lang/String;)V

    goto :goto_22
.end method
