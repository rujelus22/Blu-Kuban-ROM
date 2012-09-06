.class LLX;
.super Ljava/lang/Object;
.source "DatabaseField.java"


# instance fields
.field private a:I

.field private a:LMl;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "LMl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, LLX;->a:LMl;

    .line 265
    const/4 v0, 0x0

    iput v0, p0, LLX;->a:I

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LLX;->a:Ljava/util/Map;

    .line 269
    return-void
.end method

.method public static a(LMa;)LLX;
    .registers 2
    .parameter

    .prologue
    .line 273
    new-instance v0, LLX;

    invoke-direct {v0}, LLX;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()LLV;
    .registers 4

    .prologue
    .line 329
    iget-object v0, p0, LLX;->a:LMl;

    if-eqz v0, :cond_11

    .line 331
    const/16 v0, 0x23

    iget v1, p0, LLX;->a:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, LLX;->a(I)LLX;

    .line 333
    :cond_11
    new-instance v0, LLV;

    iget-object v1, p0, LLX;->a:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LLV;-><init>(Ljava/util/Map;LLW;)V

    return-object v0
.end method

.method public a(I)LLX;
    .registers 6
    .parameter

    .prologue
    .line 308
    iget-object v0, p0, LLX;->a:LMl;

    if-nez v0, :cond_c

    .line 309
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No field definition to remove"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_c
    iget v0, p0, LLX;->a:I

    if-gt p1, v0, :cond_18

    .line 312
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Versions must be 0 or greater and specified in ascending order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_18
    iget v0, p0, LLX;->a:I

    :goto_1a
    if-ge v0, p1, :cond_2a

    .line 316
    iget-object v1, p0, LLX;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, LLX;->a:LMl;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 318
    :cond_2a
    const/4 v0, 0x0

    iput-object v0, p0, LLX;->a:LMl;

    .line 319
    iput p1, p0, LLX;->a:I

    .line 320
    return-object p0
.end method

.method public a(ILMl;)LLX;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 289
    iget-object v0, p0, LLX;->a:LMl;

    if-eqz v0, :cond_c

    .line 290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add a new field definition until the existing definition is removed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_c
    iget v0, p0, LLX;->a:I

    if-ge p1, v0, :cond_18

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Versions must be 0 or greater and specified in ascending order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_18
    iput-object p2, p0, LLX;->a:LMl;

    .line 298
    iput p1, p0, LLX;->a:I

    .line 299
    return-object p0
.end method

.method public a(ILMn;)LLX;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 281
    invoke-virtual {p2}, LMn;->a()LMl;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LLX;->a(ILMl;)LLX;

    move-result-object v0

    return-object v0
.end method
