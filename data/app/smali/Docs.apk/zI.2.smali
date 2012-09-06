.class LzI;
.super Ljava/lang/Object;
.source "DocumentImageManager.java"

# interfaces
.implements Lxs;


# instance fields
.field final synthetic a:LzH;


# direct methods
.method constructor <init>(LzH;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, LzI;->a:LzH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, LzI;->a:LzH;

    invoke-static {v0}, LzH;->a(LzH;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, LzI;->a:LzH;

    invoke-static {v0}, LzH;->a(LzH;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, LzI;->a:LzH;

    invoke-static {v0}, LzH;->a(LzH;)LzW;

    move-result-object v0

    new-instance v1, LzJ;

    invoke-direct {v1, p0, p1}, LzJ;-><init>(LzI;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1}, LzW;->a(Ljava/lang/String;LAa;)V

    .line 71
    iget-object v0, p0, LzI;->a:LzH;

    invoke-static {v0}, LzH;->a(LzH;)LzW;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, LzW;->a(Ljava/lang/String;Z)V

    .line 73
    iget-object v0, p0, LzI;->a:LzH;

    invoke-static {v0}, LzH;->a(LzH;)LzW;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, LzW;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method
