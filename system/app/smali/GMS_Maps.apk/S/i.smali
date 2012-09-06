.class public final LS/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/g;
.implements Lcom/google/googlenav/common/h;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:LS/f;

.field private final c:Ljava/lang/Integer;

.field private volatile d:[LS/f;


# direct methods
.method public constructor <init>(LS/f;C)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 65
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LS/i;-><init>(LS/f;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(LS/f;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, LS/i;-><init>(Ljava/lang/Integer;LS/f;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private constructor <init>(Ljava/lang/Integer;LS/f;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, LS/i;->b:LS/f;

    .line 96
    iput-object p1, p0, LS/i;->c:Ljava/lang/Integer;

    .line 97
    iput-object p3, p0, LS/i;->a:Ljava/lang/String;

    .line 104
    if-nez p2, :cond_10

    if-eqz p1, :cond_10

    .line 107
    invoke-static {p0}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/h;)V

    .line 109
    :cond_10
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, LS/i;-><init>(Ljava/lang/Integer;LS/f;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private a(LS/f;I)LS/f;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, LS/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 183
    :goto_9
    return-object p1

    .line 177
    :cond_a
    invoke-interface {p1}, LS/f;->a()I

    move-result v0

    iget-object v1, p0, LS/i;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int v3, v0, v1

    .line 178
    invoke-interface {p1}, LS/f;->b()I

    move-result v4

    .line 179
    mul-int v1, p2, v3

    .line 180
    const/4 v2, 0x0

    move-object v0, p1

    move v5, v3

    move v6, v4

    invoke-interface/range {v0 .. v6}, LS/f;->a(IIIIII)LS/f;

    move-result-object p1

    goto :goto_9
.end method

.method private a(LS/f;)V
    .registers 5
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, LS/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [LS/f;

    .line 158
    const/4 v0, 0x0

    :goto_9
    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 159
    invoke-direct {p0, p1, v0}, LS/i;->a(LS/f;I)LS/f;

    move-result-object v2

    aput-object v2, v1, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 161
    :cond_15
    iput-object v1, p0, LS/i;->d:[LS/f;

    .line 162
    return-void
.end method

.method private c()[LS/f;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, LS/i;->d:[LS/f;

    if-nez v0, :cond_7

    .line 191
    invoke-virtual {p0}, LS/i;->b()V

    .line 193
    :cond_7
    iget-object v0, p0, LS/i;->d:[LS/f;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, LS/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, LS/i;->d:[LS/f;

    .line 283
    return-void
.end method

.method public a(C)Z
    .registers 3
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, LS/i;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(CLS/e;II)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-virtual {p0, p1}, LS/i;->e(C)LS/f;

    move-result-object v0

    .line 204
    if-nez v0, :cond_8

    .line 205
    const/4 v0, 0x0

    .line 209
    :goto_7
    return v0

    .line 208
    :cond_8
    invoke-interface {p2, v0, p3, p4}, LS/e;->a(LS/f;II)V

    .line 209
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public b(C)I
    .registers 3
    .parameter

    .prologue
    .line 214
    invoke-virtual {p0, p1}, LS/i;->a(C)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, LS/i;->e(C)LS/f;

    move-result-object v0

    invoke-interface {v0}, LS/f;->b()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method protected b()V
    .registers 5

    .prologue
    .line 119
    iget-object v0, p0, LS/i;->b:LS/f;

    if-nez v0, :cond_1c

    iget-object v0, p0, LS/i;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    .line 121
    :try_start_8
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->n()LS/h;

    move-result-object v0

    iget-object v1, p0, LS/i;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, LS/h;->b(I)LS/f;

    move-result-object v0

    iput-object v0, p0, LS/i;->b:LS/f;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1c} :catch_7a

    .line 127
    :cond_1c
    iget-object v0, p0, LS/i;->b:LS/f;

    if-eqz v0, :cond_ae

    .line 129
    iget-object v0, p0, LS/i;->b:LS/f;

    invoke-interface {v0}, LS/f;->a()I

    move-result v0

    iget-object v1, p0, LS/i;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_a9

    .line 130
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image strip "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, LS/i;->c:Ljava/lang/Integer;

    if-nez v0, :cond_85

    const-string v0, ""

    :goto_42
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " width "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LS/i;->b:LS/f;

    invoke-interface {v2}, LS/f;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "divisible by number of icons "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LS/i;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": find it in R.java"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :catch_7a
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, LS/i;->c:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_42

    .line 138
    :cond_a9
    iget-object v0, p0, LS/i;->b:LS/f;

    invoke-direct {p0, v0}, LS/i;->a(LS/f;)V

    .line 140
    :cond_ae
    return-void
.end method

.method public c(C)I
    .registers 3
    .parameter

    .prologue
    .line 219
    invoke-virtual {p0, p1}, LS/i;->a(C)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, LS/i;->e(C)LS/f;

    move-result-object v0

    invoke-interface {v0}, LS/f;->a()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public d(C)I
    .registers 3
    .parameter

    .prologue
    .line 224
    const/4 v0, 0x2

    return v0
.end method

.method public e(C)LS/f;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0, p1}, LS/i;->a(C)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 270
    iget-object v1, p0, LS/i;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 271
    if-gez v1, :cond_10

    .line 276
    :cond_f
    :goto_f
    return-object v0

    .line 274
    :cond_10
    invoke-direct {p0}, LS/i;->c()[LS/f;

    move-result-object v0

    aget-object v0, v0, v1

    goto :goto_f
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 230
    iget-object v1, p0, LS/i;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 232
    iget-object v1, p0, LS/i;->b:LS/f;

    if-eqz v1, :cond_1f

    .line 233
    new-instance v1, Lcom/google/googlenav/common/util/l;

    const-string v4, "imageStrip"

    iget-object v5, p0, LS/i;->b:LS/f;

    invoke-interface {v5}, LS/f;->g()I

    move-result v5

    invoke-direct {v1, v4, v5}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_1f
    iget-object v1, p0, LS/i;->d:[LS/f;

    if-eqz v1, :cond_3f

    move v1, v0

    .line 237
    :goto_24
    iget-object v4, p0, LS/i;->d:[LS/f;

    array-length v4, v4

    if-ge v0, v4, :cond_35

    .line 238
    iget-object v4, p0, LS/i;->d:[LS/f;

    aget-object v4, v4, v0

    invoke-interface {v4}, LS/f;->g()I

    move-result v4

    add-int/2addr v1, v4

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 240
    :cond_35
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v4, "icons"

    invoke-direct {v0, v4, v1}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_3f
    iget-object v0, p0, LS/i;->c:Ljava/lang/Integer;

    if-nez v0, :cond_4b

    const-string v0, "ImageStripIconProvider"

    .line 246
    :goto_45
    new-instance v1, Lcom/google/googlenav/common/util/l;

    invoke-direct {v1, v0, v3, v2}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    .line 243
    :cond_4b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Image_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LS/i;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_45
.end method
