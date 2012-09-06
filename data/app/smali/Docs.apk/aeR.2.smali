.class public LaeR;
.super LaeT;
.source "Discussions.java"


# instance fields
.field final synthetic a:LaeP;

.field private a:Ljava/lang/String;
    .annotation runtime Laes;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Laes;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Laes;
    .end annotation
.end field


# direct methods
.method constructor <init>(LaeP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1352
    iput-object p1, p0, LaeR;->a:LaeP;

    .line 1353
    iget-object v0, p1, LaeP;->a:LaeJ;

    sget-object v1, Ladf;->a:Ladf;

    const-string v2, "targets/{targetId}/discussions/{discussionId}/posts/{postId}"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, LaeT;-><init>(LadE;Ladf;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1354
    const-string v0, "Required parameter targetId must be specified."

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LaeR;->a:Ljava/lang/String;

    .line 1355
    const-string v0, "Required parameter discussionId must be specified."

    invoke-static {p3, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LaeR;->b:Ljava/lang/String;

    .line 1356
    const-string v0, "Required parameter postId must be specified."

    invoke-static {p4, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LaeR;->c:Ljava/lang/String;

    .line 1357
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 1367
    invoke-virtual {p0}, LaeR;->a()Ladl;

    move-result-object v0

    .line 1368
    invoke-virtual {v0}, Ladl;->a()V

    .line 1369
    return-void
.end method
