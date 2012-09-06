.class public LaeP;
.super Ljava/lang/Object;
.source "Discussions.java"


# instance fields
.field final synthetic a:LaeJ;


# direct methods
.method public constructor <init>(LaeJ;)V
    .registers 2
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, LaeP;->a:LaeJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1484
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lafe;)LaeQ;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 763
    new-instance v0, LaeQ;

    invoke-direct {v0, p0, p1, p2, p3}, LaeQ;-><init>(LaeP;Ljava/lang/String;Ljava/lang/String;Lafe;)V

    .line 764
    iget-object v1, p0, LaeP;->a:LaeJ;

    invoke-virtual {v1, v0}, LaeJ;->a(LadI;)V

    .line 765
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LaeR;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1339
    new-instance v0, LaeR;

    invoke-direct {v0, p0, p1, p2, p3}, LaeR;-><init>(LaeP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget-object v1, p0, LaeP;->a:LaeJ;

    invoke-virtual {v1, v0}, LaeJ;->a(LadI;)V

    .line 1341
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lafe;)LaeS;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1196
    new-instance v0, LaeS;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LaeS;-><init>(LaeP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lafe;)V

    .line 1197
    iget-object v1, p0, LaeP;->a:LaeJ;

    invoke-virtual {v1, v0}, LaeJ;->a(LadI;)V

    .line 1198
    return-object v0
.end method
