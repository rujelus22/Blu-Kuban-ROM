.class public Lcom/google/googlenav/bI;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlenav/aV;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->al()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/aV;->al()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p0}, Lcom/google/googlenav/aV;->al()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public static a(Lcom/google/googlenav/ah;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bI()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p0}, Lcom/google/googlenav/ah;->bI()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public static a(Lcom/google/googlenav/h;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/h;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/googlenav/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    invoke-virtual {p0}, Lcom/google/googlenav/h;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method
