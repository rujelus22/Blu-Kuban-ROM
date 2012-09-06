.class public LaeM;
.super LaeT;
.source "Discussions.java"


# instance fields
.field final synthetic a:LaeL;

.field private a:Ljava/lang/String;
    .annotation runtime Laes;
    .end annotation
.end field


# direct methods
.method constructor <init>(LaeL;Ljava/lang/String;LaeW;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, LaeM;->a:LaeL;

    .line 257
    iget-object v0, p1, LaeL;->a:LaeJ;

    sget-object v1, Ladf;->f:Ladf;

    const-string v2, "targets/{targetId}/discussions"

    invoke-direct {p0, v0, v1, v2, p3}, LaeT;-><init>(LadE;Ladf;Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    const-string v0, "Required parameter targetId must be specified."

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LaeM;->a:Ljava/lang/String;

    .line 259
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    return-void
.end method


# virtual methods
.method public a()LaeW;
    .registers 3

    .prologue
    .line 271
    invoke-virtual {p0}, LaeM;->a()Ladl;

    move-result-object v1

    .line 272
    const-class v0, LaeW;

    invoke-virtual {v1, v0}, Ladl;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaeW;

    .line 274
    invoke-virtual {v1}, Ladl;->a()Ladc;

    move-result-object v1

    invoke-virtual {v0, v1}, LaeW;->a(Ladc;)V

    .line 275
    return-object v0
.end method
