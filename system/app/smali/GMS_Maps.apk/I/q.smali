.class public Li/q;
.super Li/l;
.source "SourceFile"


# instance fields
.field private final a:Li/l;


# direct methods
.method public constructor <init>(Li/l;)V
    .registers 3
    .parameter

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Li/l;-><init>(Li/m;)V

    .line 218
    iput-object p1, p0, Li/q;->a:Li/l;

    .line 219
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public b()Li/l;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Li/q;->a:Li/l;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 237
    instance-of v0, p1, Li/q;

    if-eqz v0, :cond_f

    .line 238
    check-cast p1, Li/q;

    iget-object v0, p1, Li/q;->a:Li/l;

    iget-object v1, p0, Li/q;->a:Li/l;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 240
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Li/q;->a:Li/l;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<optional>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Li/q;->a:Li/l;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</optional>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
