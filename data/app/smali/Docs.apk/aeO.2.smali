.class public LaeO;
.super LaeT;
.source "Discussions.java"


# instance fields
.field final synthetic a:LaeL;

.field private a:Ljava/lang/String;
    .annotation runtime Laes;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Laes;
    .end annotation
.end field


# direct methods
.method constructor <init>(LaeL;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, LaeO;->a:LaeL;

    .line 511
    iget-object v0, p1, LaeL;->a:LaeJ;

    sget-object v1, Ladf;->a:Ladf;

    const-string v2, "targets/{targetId}/discussions/{discussionId}"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, LaeT;-><init>(LadE;Ladf;Ljava/lang/String;Ljava/lang/Object;)V

    .line 512
    const-string v0, "Required parameter targetId must be specified."

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LaeO;->a:Ljava/lang/String;

    .line 513
    const-string v0, "Required parameter discussionId must be specified."

    invoke-static {p3, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LaeO;->b:Ljava/lang/String;

    .line 514
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 524
    invoke-virtual {p0}, LaeO;->a()Ladl;

    move-result-object v0

    .line 525
    invoke-virtual {v0}, Ladl;->a()V

    .line 526
    return-void
.end method
