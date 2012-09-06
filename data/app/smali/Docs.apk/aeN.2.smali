.class public LaeN;
.super LaeT;
.source "Discussions.java"


# instance fields
.field final synthetic a:LaeL;

.field private a:Ljava/lang/String;
    .annotation runtime Laes;
    .end annotation
.end field


# direct methods
.method constructor <init>(LaeL;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, LaeN;->a:LaeL;

    .line 364
    iget-object v0, p1, LaeL;->a:LaeJ;

    sget-object v1, Ladf;->b:Ladf;

    const-string v2, "targets/{targetId}/discussions"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, LaeT;-><init>(LadE;Ladf;Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    const-string v0, "Required parameter targetId must be specified."

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LaeN;->a:Ljava/lang/String;

    .line 366
    return-void
.end method


# virtual methods
.method public a()Lafc;
    .registers 3

    .prologue
    .line 377
    invoke-virtual {p0}, LaeN;->a()Ladl;

    move-result-object v1

    .line 378
    const-class v0, Lafc;

    invoke-virtual {v1, v0}, Ladl;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafc;

    .line 380
    invoke-virtual {v1}, Ladl;->a()Ladc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafc;->a(Ladc;)V

    .line 381
    return-object v0
.end method
