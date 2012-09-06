.class LzJ;
.super Ljava/lang/Object;
.source "DocumentImageManager.java"

# interfaces
.implements LAa;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic a:LzI;


# direct methods
.method constructor <init>(LzI;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, LzJ;->a:LzI;

    iput-object p2, p0, LzJ;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, LzJ;->a:LzI;

    iget-object v0, v0, LzI;->a:LzH;

    invoke-static {v0}, LzH;->b(LzH;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, LzJ;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 60
    if-eqz v0, :cond_28

    .line 61
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAa;

    .line 62
    if-eqz v0, :cond_16

    .line 63
    invoke-interface {v0, p1}, LAa;->a(Ljava/lang/String;)V

    goto :goto_16

    .line 67
    :cond_28
    iget-object v0, p0, LzJ;->a:LzI;

    iget-object v0, v0, LzI;->a:LzH;

    invoke-static {v0}, LzH;->b(LzH;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, LzJ;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method
