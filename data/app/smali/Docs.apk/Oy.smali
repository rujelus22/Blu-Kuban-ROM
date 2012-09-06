.class LOy;
.super Ljava/lang/Object;
.source "OnlineSearch.java"

# interfaces
.implements LOB;


# instance fields
.field final synthetic a:LOx;


# direct methods
.method constructor <init>(LOx;)V
    .registers 2
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, LOy;->a:LOx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LSs;)V
    .registers 3
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, LOy;->a:LOx;

    iget-object v0, v0, LOx;->a:LOj;

    invoke-interface {v0, p1}, LOj;->a(LSs;)V

    .line 95
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, LOy;->a:LOx;

    iget-object v0, v0, LOx;->a:LOj;

    invoke-interface {v0}, LOj;->a()Z

    move-result v0

    .line 86
    if-nez v0, :cond_f

    .line 87
    iget-object v1, p0, LOy;->a:LOx;

    invoke-virtual {v1}, LOx;->a()V

    .line 89
    :cond_f
    return v0
.end method
