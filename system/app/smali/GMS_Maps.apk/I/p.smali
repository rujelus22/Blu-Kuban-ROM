.class public Li/p;
.super Li/l;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Li/l;-><init>(Li/m;)V

    .line 89
    iput p1, p0, Li/p;->a:I

    .line 90
    iput p2, p0, Li/p;->b:I

    .line 91
    return-void
.end method


# virtual methods
.method public b()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Li/p;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Li/p;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 109
    instance-of v1, p1, Li/p;

    if-eqz v1, :cond_e

    .line 110
    check-cast p1, Li/p;

    iget v1, p1, Li/p;->a:I

    iget v2, p0, Li/p;->a:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    .line 112
    :cond_e
    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Li/p;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<distance_message distance=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Li/p;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" units=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Li/p;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
