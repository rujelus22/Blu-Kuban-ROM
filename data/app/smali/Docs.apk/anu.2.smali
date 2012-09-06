.class Lanu;
.super Ljava/lang/Object;
.source "Key.java"

# interfaces
.implements Lanv;


# instance fields
.field final a:Ljava/lang/annotation/Annotation;


# direct methods
.method constructor <init>(Ljava/lang/annotation/Annotation;)V
    .registers 3
    .parameter

    .prologue
    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const-string v0, "annotation"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    iput-object v0, p0, Lanu;->a:Ljava/lang/annotation/Annotation;

    .line 404
    return-void
.end method


# virtual methods
.method public a()Lanv;
    .registers 4

    .prologue
    .line 411
    new-instance v0, Lanw;

    invoke-virtual {p0}, Lanu;->a()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lanu;->a:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1, v2}, Lanw;-><init>(Ljava/lang/Class;Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    iget-object v0, p0, Lanu;->a:Ljava/lang/annotation/Annotation;

    invoke-interface {v0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/annotation/Annotation;
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lanu;->a:Ljava/lang/annotation/Annotation;

    return-object v0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 407
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 423
    instance-of v0, p1, Lanu;

    if-nez v0, :cond_6

    .line 424
    const/4 v0, 0x0

    .line 428
    :goto_5
    return v0

    .line 427
    :cond_6
    check-cast p1, Lanu;

    .line 428
    iget-object v0, p0, Lanu;->a:Ljava/lang/annotation/Annotation;

    iget-object v1, p1, Lanu;->a:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, Lanu;->a:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lanu;->a:Ljava/lang/annotation/Annotation;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
