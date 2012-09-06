.class public LaeL;
.super Ljava/lang/Object;
.source "Discussions.java"


# instance fields
.field final synthetic a:LaeJ;


# direct methods
.method public constructor <init>(LaeJ;)V
    .registers 2
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, LaeL;->a:LaeJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;LaeW;)LaeM;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 243
    new-instance v0, LaeM;

    invoke-direct {v0, p0, p1, p2}, LaeM;-><init>(LaeL;Ljava/lang/String;LaeW;)V

    .line 244
    iget-object v1, p0, LaeL;->a:LaeJ;

    invoke-virtual {v1, v0}, LaeJ;->a(LadI;)V

    .line 245
    return-object v0
.end method

.method public a(Ljava/lang/String;)LaeN;
    .registers 4
    .parameter

    .prologue
    .line 350
    new-instance v0, LaeN;

    invoke-direct {v0, p0, p1}, LaeN;-><init>(LaeL;Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, LaeL;->a:LaeJ;

    invoke-virtual {v1, v0}, LaeJ;->a(LadI;)V

    .line 352
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)LaeO;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 497
    new-instance v0, LaeO;

    invoke-direct {v0, p0, p1, p2}, LaeO;-><init>(LaeL;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v1, p0, LaeL;->a:LaeJ;

    invoke-virtual {v1, v0}, LaeJ;->a(LadI;)V

    .line 499
    return-object v0
.end method
