.class Laaa;
.super Ljava/lang/Object;
.source "StringPartitionTree.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:I

.field final a:LaiA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiA",
            "<",
            "Laaa",
            "<TU;>;>;"
        }
    .end annotation
.end field

.field final a:Ljava/lang/String;

.field final b:LaiA;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LaiA",
            "<",
            "LZZ",
            "<TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Laaa",
            "<TU;>;>;",
            "Ljava/util/List",
            "<",
            "LZZ",
            "<TU;>;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Laaa;->a:I

    .line 87
    iput-object p2, p0, Laaa;->a:Ljava/lang/String;

    .line 88
    if-nez p3, :cond_2c

    move-object v0, v1

    :goto_e
    iput-object v0, p0, Laaa;->a:LaiA;

    .line 89
    if-nez p4, :cond_31

    :goto_12
    iput-object v1, p0, Laaa;->b:LaiA;

    .line 91
    const/4 v0, -0x1

    if-ne p1, v0, :cond_38

    .line 92
    invoke-static {p2}, LZX;->a(Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Laaa;->a:LaiA;

    invoke-static {v0}, LZX;->a(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Laaa;->b:LaiA;

    invoke-virtual {v0}, LaiA;->size()I

    move-result v0

    if-lez v0, :cond_36

    move v0, v2

    :goto_28
    invoke-static {v0}, LafQ;->a(Z)V

    .line 105
    :goto_2b
    return-void

    .line 88
    :cond_2c
    invoke-static {p3}, LaiA;->a(Ljava/util/Collection;)LaiA;

    move-result-object v0

    goto :goto_e

    .line 89
    :cond_31
    invoke-static {p4}, LaiA;->a(Ljava/util/Collection;)LaiA;

    move-result-object v1

    goto :goto_12

    :cond_36
    move v0, v3

    .line 94
    goto :goto_28

    .line 96
    :cond_38
    invoke-static {p1, v4}, LafQ;->a(II)I

    .line 97
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Laaa;->a:LaiA;

    invoke-virtual {v0}, LaiA;->size()I

    move-result v0

    if-ne v0, v4, :cond_5f

    :goto_46
    invoke-static {v2}, LafQ;->a(Z)V

    .line 100
    iget-object v0, p0, Laaa;->a:LaiA;

    invoke-virtual {v0}, LaiA;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laaa;

    .line 101
    invoke-static {v0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    :cond_5f
    move v2, v3

    .line 98
    goto :goto_46

    .line 103
    :cond_61
    iget-object v0, p0, Laaa;->b:LaiA;

    invoke-static {v0}, LZX;->a(Ljava/lang/Object;)V

    goto :goto_2b
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;LZY;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Laaa;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method a()Z
    .registers 3

    .prologue
    .line 108
    iget v0, p0, Laaa;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method
