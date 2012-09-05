.class public abstract Lcom/sdgtl/mediahub/spr/d/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Z

.field protected b:I

.field protected final c:[I

.field protected d:I

.field protected e:Z

.field protected f:Landroid/content/Context;

.field protected g:Lcom/sdgtl/mediahub/spr/c/a;

.field protected h:Z

.field protected i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/d/a;->c:[I

    iput v1, p0, Lcom/sdgtl/mediahub/spr/d/a;->d:I

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/d/a;->e:Z

    iput-boolean v1, p0, Lcom/sdgtl/mediahub/spr/d/a;->h:Z

    const-string v0, "N"

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/d/a;->i:Ljava/lang/String;

    return-void

    :array_18
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, ".dcf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "omadrm"

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ".avi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, ".mkv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, ".divx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_23
    const-string v0, "divx"

    goto :goto_a

    :cond_26
    const-string v0, ".pyv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, ".pya"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, ".wmv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    const-string v0, ".wma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    :cond_46
    const-string v0, "playready"

    goto :goto_a

    :cond_49
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, ".dcf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "application/vnd.oma.drm.content"

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ".avi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "video/mux/AVI"

    goto :goto_a

    :cond_16
    const-string v0, ".mkv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "video/mux/MKV"

    goto :goto_a

    :cond_21
    const-string v0, ".divx"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "video/mux/DivX"

    goto :goto_a

    :cond_2c
    const-string v0, ".pyv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "video/vnd.ms-playready.media.pyv"

    goto :goto_a

    :cond_37
    const-string v0, ".pya"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "audio/vnd.ms-playready.media.pya"

    goto :goto_a

    :cond_42
    const-string v0, ".wmv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d

    const-string v0, "video/x-ms-wmv"

    goto :goto_a

    :cond_4d
    const-string v0, ".wma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "audio/x-ms-wma"

    goto :goto_a

    :cond_58
    const-string v0, ""

    goto :goto_a
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract a()V
.end method

.method public final a(I)V
    .registers 3

    if-lez p1, :cond_4

    add-int/lit8 p1, p1, -0x1

    :cond_4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/d/a;->c:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/sdgtl/mediahub/spr/d/a;->b:I

    iput p1, p0, Lcom/sdgtl/mediahub/spr/d/a;->d:I

    return-void
.end method

.method public abstract a(Ljava/lang/String;J)V
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sdgtl/mediahub/spr/d/a;->e:Z

    return-void
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public final b(I)I
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/a;->c:[I

    array-length v2, v2

    if-lt v0, v2, :cond_9

    move v0, v1

    :cond_8
    return v0

    :cond_9
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/d/a;->c:[I

    aget v2, v2, v0

    if-lt p1, v2, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public abstract b(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public abstract b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract b(Ljava/lang/String;J)V
.end method

.method public abstract b()Z
.end method

.method public abstract c(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sdgtl/mediahub/spr/d/a;->a:Z

    return-void
.end method

.method public abstract c(Ljava/lang/String;J)V
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/d/a;->a:Z

    return v0
.end method

.method public final e()I
    .registers 2

    iget v0, p0, Lcom/sdgtl/mediahub/spr/d/a;->b:I

    return v0
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sdgtl/mediahub/spr/d/a;->e:Z

    return v0
.end method
