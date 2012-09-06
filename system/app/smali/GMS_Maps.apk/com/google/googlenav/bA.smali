.class public Lcom/google/googlenav/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput p1, p0, Lcom/google/googlenav/ba;->a:I

    .line 288
    iput-object p2, p0, Lcom/google/googlenav/ba;->b:Ljava/lang/String;

    .line 289
    iput-object p3, p0, Lcom/google/googlenav/ba;->c:Ljava/lang/String;

    .line 290
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 293
    iget v0, p0, Lcom/google/googlenav/ba;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/googlenav/ba;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/google/googlenav/ba;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 306
    instance-of v1, p1, Lcom/google/googlenav/ba;

    if-nez v1, :cond_6

    .line 309
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget v1, p0, Lcom/google/googlenav/ba;->a:I

    check-cast p1, Lcom/google/googlenav/ba;

    invoke-virtual {p1}, Lcom/google/googlenav/ba;->a()I

    move-result v2

    if-ne v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Lcom/google/googlenav/ba;->a:I

    return v0
.end method
