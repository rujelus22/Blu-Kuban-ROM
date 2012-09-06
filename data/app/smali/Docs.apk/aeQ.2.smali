.class public LaeQ;
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


# direct methods
.method constructor <init>(LaeP;Ljava/lang/String;Ljava/lang/String;Lafe;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, LaeQ;->a:LaeP;

    .line 777
    iget-object v0, p1, LaeP;->a:LaeJ;

    sget-object v1, Ladf;->f:Ladf;

    const-string v2, "targets/{targetId}/discussions/{discussionId}"

    invoke-direct {p0, v0, v1, v2, p4}, LaeT;-><init>(LadE;Ladf;Ljava/lang/String;Ljava/lang/Object;)V

    .line 778
    const-string v0, "Required parameter targetId must be specified."

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LaeQ;->a:Ljava/lang/String;

    .line 779
    const-string v0, "Required parameter discussionId must be specified."

    invoke-static {p3, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LaeQ;->b:Ljava/lang/String;

    .line 780
    invoke-static {p4}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    return-void
.end method


# virtual methods
.method public a()Lafe;
    .registers 3

    .prologue
    .line 792
    invoke-virtual {p0}, LaeQ;->a()Ladl;

    move-result-object v1

    .line 793
    const-class v0, Lafe;

    invoke-virtual {v1, v0}, Ladl;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafe;

    .line 795
    invoke-virtual {v1}, Ladl;->a()Ladc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafe;->a(Ladc;)V

    .line 796
    return-object v0
.end method
