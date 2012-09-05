.class final Lorg/codehaus/jackson/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Lorg/codehaus/jackson/c/e;

.field protected final b:Lorg/codehaus/jackson/c/b;


# direct methods
.method constructor <init>(Lorg/codehaus/jackson/c/e;Lorg/codehaus/jackson/c/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    iput-object p1, p0, Lorg/codehaus/jackson/c/b;->a:Lorg/codehaus/jackson/c/e;

    .line 921
    iput-object p2, p0, Lorg/codehaus/jackson/c/b;->b:Lorg/codehaus/jackson/c/b;

    .line 922
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    .prologue
    .line 926
    const/4 v1, 0x1

    .line 927
    iget-object v0, p0, Lorg/codehaus/jackson/c/b;->b:Lorg/codehaus/jackson/c/b;

    :goto_3
    if-eqz v0, :cond_a

    .line 928
    add-int/lit8 v1, v1, 0x1

    .line 927
    iget-object v0, v0, Lorg/codehaus/jackson/c/b;->b:Lorg/codehaus/jackson/c/b;

    goto :goto_3

    .line 930
    :cond_a
    return v1
.end method

.method public final a(III)Lorg/codehaus/jackson/c/e;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 935
    iget-object v0, p0, Lorg/codehaus/jackson/c/b;->a:Lorg/codehaus/jackson/c/e;

    invoke-virtual {v0}, Lorg/codehaus/jackson/c/e;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_13

    .line 936
    iget-object v0, p0, Lorg/codehaus/jackson/c/b;->a:Lorg/codehaus/jackson/c/e;

    invoke-virtual {v0, p2, p3}, Lorg/codehaus/jackson/c/e;->a(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 937
    iget-object v0, p0, Lorg/codehaus/jackson/c/b;->a:Lorg/codehaus/jackson/c/e;

    .line 948
    :cond_12
    :goto_12
    return-object v0

    .line 940
    :cond_13
    iget-object v0, p0, Lorg/codehaus/jackson/c/b;->b:Lorg/codehaus/jackson/c/b;

    move-object v1, v0

    :goto_16
    if-eqz v1, :cond_2a

    .line 941
    iget-object v0, v1, Lorg/codehaus/jackson/c/b;->a:Lorg/codehaus/jackson/c/e;

    .line 942
    invoke-virtual {v0}, Lorg/codehaus/jackson/c/e;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_26

    .line 943
    invoke-virtual {v0, p2, p3}, Lorg/codehaus/jackson/c/e;->a(II)Z

    move-result v2

    if-nez v2, :cond_12

    .line 940
    :cond_26
    iget-object v0, v1, Lorg/codehaus/jackson/c/b;->b:Lorg/codehaus/jackson/c/b;

    move-object v1, v0

    goto :goto_16

    .line 948
    :cond_2a
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final a(I[II)Lorg/codehaus/jackson/c/e;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 953
    iget-object v0, p0, Lorg/codehaus/jackson/c/b;->a:Lorg/codehaus/jackson/c/e;

    invoke-virtual {v0}, Lorg/codehaus/jackson/c/e;->hashCode()I

    move-result v0

    if-ne v0, p1, :cond_13

    .line 954
    iget-object v0, p0, Lorg/codehaus/jackson/c/b;->a:Lorg/codehaus/jackson/c/e;

    invoke-virtual {v0, p2, p3}, Lorg/codehaus/jackson/c/e;->a([II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 955
    iget-object v0, p0, Lorg/codehaus/jackson/c/b;->a:Lorg/codehaus/jackson/c/e;

    .line 966
    :cond_12
    :goto_12
    return-object v0

    .line 958
    :cond_13
    iget-object v0, p0, Lorg/codehaus/jackson/c/b;->b:Lorg/codehaus/jackson/c/b;

    move-object v1, v0

    :goto_16
    if-eqz v1, :cond_2a

    .line 959
    iget-object v0, v1, Lorg/codehaus/jackson/c/b;->a:Lorg/codehaus/jackson/c/e;

    .line 960
    invoke-virtual {v0}, Lorg/codehaus/jackson/c/e;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_26

    .line 961
    invoke-virtual {v0, p2, p3}, Lorg/codehaus/jackson/c/e;->a([II)Z

    move-result v2

    if-nez v2, :cond_12

    .line 958
    :cond_26
    iget-object v0, v1, Lorg/codehaus/jackson/c/b;->b:Lorg/codehaus/jackson/c/b;

    move-object v1, v0

    goto :goto_16

    .line 966
    :cond_2a
    const/4 v0, 0x0

    goto :goto_12
.end method
