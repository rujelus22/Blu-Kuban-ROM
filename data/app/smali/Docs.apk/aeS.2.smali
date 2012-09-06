.class public LaeS;
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
.method constructor <init>(LaeP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lafe;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1209
    iput-object p1, p0, LaeS;->a:LaeP;

    .line 1210
    iget-object v0, p1, LaeP;->a:LaeJ;

    sget-object v1, Ladf;->e:Ladf;

    const-string v2, "targets/{targetId}/discussions/{discussionId}/posts/{postId}"

    invoke-direct {p0, v0, v1, v2, p5}, LaeT;-><init>(LadE;Ladf;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1211
    const-string v0, "Required parameter targetId must be specified."

    invoke-static {p2, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LaeS;->a:Ljava/lang/String;

    .line 1212
    const-string v0, "Required parameter discussionId must be specified."

    invoke-static {p3, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LaeS;->b:Ljava/lang/String;

    .line 1213
    const-string v0, "Required parameter postId must be specified."

    invoke-static {p4, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LaeS;->c:Ljava/lang/String;

    .line 1214
    invoke-static {p5}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    return-void
.end method


# virtual methods
.method public a()Lafe;
    .registers 3

    .prologue
    .line 1226
    invoke-virtual {p0}, LaeS;->a()Ladl;

    move-result-object v1

    .line 1227
    const-class v0, Lafe;

    invoke-virtual {v1, v0}, Ladl;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafe;

    .line 1229
    invoke-virtual {v1}, Ladl;->a()Ladc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lafe;->a(Ladc;)V

    .line 1230
    return-object v0
.end method
