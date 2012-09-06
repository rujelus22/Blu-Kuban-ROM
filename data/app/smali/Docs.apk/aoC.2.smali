.class final LaoC;
.super LaoD;
.source "Errors.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LaoD",
        "<",
        "Lant;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .parameter

    .prologue
    .line 683
    invoke-direct {p0, p1}, LaoD;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lant;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 685
    invoke-virtual {p1}, Lant;->a()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lant;->a()LanP;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " annotated with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lant;->a()Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, Lant;->a()Ljava/lang/annotation/Annotation;

    move-result-object v0

    :goto_23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 689
    :goto_2b
    return-object v0

    .line 686
    :cond_2c
    invoke-virtual {p1}, Lant;->a()Ljava/lang/Class;

    move-result-object v0

    goto :goto_23

    .line 689
    :cond_31
    invoke-virtual {p1}, Lant;->a()LanP;

    move-result-object v0

    invoke-virtual {v0}, LanP;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 683
    check-cast p1, Lant;

    invoke-virtual {p0, p1}, LaoC;->a(Lant;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
