.class public Li/s;
.super Li/l;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Li/l;-><init>(Li/m;)V

    .line 54
    iput p1, p0, Li/s;->a:I

    .line 55
    return-void
.end method


# virtual methods
.method public b()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Li/s;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 68
    instance-of v1, p1, Li/s;

    if-eqz v1, :cond_e

    .line 69
    check-cast p1, Li/s;

    iget v1, p1, Li/s;->a:I

    iget v2, p0, Li/s;->a:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    .line 71
    :cond_e
    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Li/s;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<maneuver_message id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Li/s;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
