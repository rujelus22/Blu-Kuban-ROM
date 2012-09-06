.class public final Ldbxyzptlk/m/h;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 5
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-eqz p1, :cond_21

    .line 51
    const-string v0, "error"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 53
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/m/h;->a:Ljava/lang/String;

    .line 62
    :cond_13
    const-string v0, "user_error"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_21

    .line 64
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/m/h;->b:Ljava/lang/String;

    .line 67
    :cond_21
    return-void

    .line 54
    :cond_22
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_13

    .line 55
    check-cast v0, Ljava/util/Map;

    .line 56
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_30
    :goto_30
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 57
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_30

    .line 58
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Ldbxyzptlk/m/h;->a:Ljava/lang/String;

    goto :goto_30
.end method
