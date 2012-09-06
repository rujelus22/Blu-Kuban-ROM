.class public Lcom/google/googlenav/bb;
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
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/google/googlenav/bb;->a:I

    .line 22
    iput-object p2, p0, Lcom/google/googlenav/bb;->b:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/google/googlenav/bb;->c:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lcom/google/googlenav/bb;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/googlenav/bb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-ne p0, p1, :cond_5

    .line 61
    :cond_4
    :goto_4
    return v0

    .line 51
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 52
    goto :goto_4

    .line 54
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 55
    goto :goto_4

    .line 57
    :cond_15
    check-cast p1, Lcom/google/googlenav/bb;

    .line 58
    iget v2, p0, Lcom/google/googlenav/bb;->a:I

    iget v3, p1, Lcom/google/googlenav/bb;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 59
    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 40
    .line 42
    iget v0, p0, Lcom/google/googlenav/bb;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 43
    return v0
.end method
