.class public Li/r;
.super Li/l;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Li/l;-><init>(Li/m;)V

    .line 128
    iput p1, p0, Li/r;->a:I

    .line 129
    return-void
.end method


# virtual methods
.method public b()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, Li/r;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 142
    instance-of v1, p1, Li/r;

    if-eqz v1, :cond_e

    .line 143
    check-cast p1, Li/r;

    iget v1, p1, Li/r;->a:I

    iget v2, p0, Li/r;->a:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    .line 145
    :cond_e
    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Li/r;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<predefined_message type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Li/r;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
