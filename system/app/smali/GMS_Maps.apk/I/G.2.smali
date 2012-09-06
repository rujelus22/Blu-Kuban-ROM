.class Li/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p1, p0, Li/G;->a:Ljava/lang/String;

    .line 194
    iput p2, p0, Li/G;->b:I

    .line 195
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 208
    if-ne p0, p1, :cond_5

    .line 224
    :cond_4
    :goto_4
    return v0

    .line 211
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 212
    goto :goto_4

    .line 214
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 215
    goto :goto_4

    .line 217
    :cond_15
    check-cast p1, Li/G;

    .line 218
    iget-object v2, p0, Li/G;->a:Ljava/lang/String;

    iget-object v3, p1, Li/G;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    .line 219
    goto :goto_4

    .line 221
    :cond_23
    iget v2, p0, Li/G;->b:I

    iget v3, p1, Li/G;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 222
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 199
    .line 201
    iget-object v0, p0, Li/G;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 202
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Li/G;->b:I

    add-int/2addr v0, v1

    .line 203
    return v0
.end method
