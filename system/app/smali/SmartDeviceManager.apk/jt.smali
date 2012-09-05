.class public final Ljt;
.super Ljava/lang/Object;
.source "a"


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Ljt;->a:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 22
    const/4 v0, 0x0

    .line 24
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljt;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    move-object v0, p0

    goto :goto_5
.end method

.method public final a(Ljava/lang/annotation/Annotation;)V
    .registers 4
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Ljt;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljt;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 38
    :cond_10
    invoke-virtual {p0, p1}, Ljt;->b(Ljava/lang/annotation/Annotation;)V

    .line 40
    :cond_13
    return-void
.end method

.method final b(Ljava/lang/annotation/Annotation;)V
    .registers 4
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Ljt;->a:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljt;->a:Ljava/util/HashMap;

    .line 70
    :cond_b
    iget-object v0, p0, Ljt;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Ljt;->a:Ljava/util/HashMap;

    if-nez v0, :cond_7

    .line 54
    const-string v0, "[null]"

    .line 56
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Ljt;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method
