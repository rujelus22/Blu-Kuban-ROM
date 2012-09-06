.class LC/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:LC/T;


# direct methods
.method constructor <init>(Ljava/lang/String;LC/T;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p1, p0, LC/o;->a:Ljava/lang/String;

    .line 296
    iput-object p2, p0, LC/o;->b:LC/T;

    .line 297
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 300
    iget-object v0, p0, LC/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()LC/T;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, LC/o;->b:LC/T;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 309
    if-ne p1, p0, :cond_5

    .line 316
    :cond_4
    :goto_4
    return v0

    .line 312
    :cond_5
    instance-of v2, p1, LC/o;

    if-nez v2, :cond_b

    move v0, v1

    .line 313
    goto :goto_4

    .line 315
    :cond_b
    check-cast p1, LC/o;

    .line 316
    iget-object v2, p1, LC/o;->a:Ljava/lang/String;

    iget-object v3, p0, LC/o;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p1, LC/o;->b:LC/T;

    iget-object v3, p0, LC/o;->b:LC/T;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 321
    .line 322
    iget-object v0, p0, LC/o;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 323
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LC/o;->b:LC/T;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    return v0
.end method
