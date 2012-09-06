.class Lm/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lm/c;


# direct methods
.method constructor <init>(Ljava/lang/String;Lm/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lm/B;->a:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lm/B;->b:Lm/c;

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 62
    instance-of v1, p1, Lm/B;

    if-eqz v1, :cond_1c

    .line 63
    check-cast p1, Lm/B;

    .line 64
    iget-object v1, p1, Lm/B;->a:Ljava/lang/String;

    iget-object v2, p0, Lm/B;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p1, Lm/B;->b:Lm/c;

    iget-object v2, p0, Lm/B;->b:Lm/c;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x1

    .line 67
    :cond_1c
    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lm/B;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lm/B;->b:Lm/c;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
