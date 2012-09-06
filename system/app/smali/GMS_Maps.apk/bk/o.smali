.class Lbk/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbk/e;


# instance fields
.field final synthetic a:Lbk/m;

.field private b:I

.field private final c:I


# direct methods
.method private constructor <init>(Lbk/m;)V
    .registers 3
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lbk/o;->a:Lbk/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lbk/o;->b:I

    .line 274
    invoke-virtual {p1}, Lbk/m;->b()I

    move-result v0

    iput v0, p0, Lbk/o;->c:I

    .line 275
    return-void
.end method

.method synthetic constructor <init>(Lbk/m;Lbk/n;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-direct {p0, p1}, Lbk/o;-><init>(Lbk/m;)V

    return-void
.end method


# virtual methods
.method public a()B
    .registers 4

    .prologue
    .line 288
    :try_start_0
    iget-object v0, p0, Lbk/o;->a:Lbk/m;

    iget-object v0, v0, Lbk/m;->c:[B

    iget v1, p0, Lbk/o;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbk/o;->b:I

    aget-byte v0, v0, v1
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return v0

    .line 289
    :catch_d
    move-exception v0

    .line 290
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b()Ljava/lang/Byte;
    .registers 2

    .prologue
    .line 283
    invoke-virtual {p0}, Lbk/o;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 278
    iget v0, p0, Lbk/o;->b:I

    iget v1, p0, Lbk/o;->c:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lbk/o;->b()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
