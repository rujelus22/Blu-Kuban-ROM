.class public Lcom/google/googlenav/ui/aD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/aR;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    const-string v0, "hosted_images/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File not in hosted_images/"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_10
    invoke-static {p0}, Lcom/google/googlenav/ui/aD;->c(Ljava/lang/String;)LS/f;

    move-result-object v0

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    .line 54
    :goto_17
    if-nez v0, :cond_2a

    .line 57
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/aP;

    new-instance v2, Lcom/google/googlenav/ui/aD;

    invoke-direct {v2}, Lcom/google/googlenav/ui/aD;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/google/googlenav/aP;-><init>(Ljava/lang/String;Lcom/google/googlenav/aR;)V

    invoke-virtual {v0, v1}, Lac/h;->c(Lac/g;)V

    .line 62
    :cond_2a
    return-void

    .line 53
    :cond_2b
    const/4 v0, 0x0

    goto :goto_17
.end method

.method protected static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hosted_images/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)LS/f;
    .registers 5
    .parameter

    .prologue
    .line 102
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-static {p0}, Lcom/google/googlenav/ui/aD;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 104
    if-eqz v0, :cond_21

    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, LS/h;->a([BII)LS/f;

    move-result-object v0

    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method


# virtual methods
.method public a(Ljava/lang/String;[B)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 76
    if-eqz p2, :cond_11

    .line 79
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    invoke-static {p1}, Lcom/google/googlenav/ui/aD;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I

    .line 83
    :cond_11
    return-void
.end method
