.class public LadI;
.super Laeo;
.source "JsonHttpRequest.java"


# instance fields
.field private final a:LadE;

.field private a:Ladc;

.field private final a:Ladf;

.field private final a:Ljava/lang/Object;

.field private final a:Ljava/lang/String;

.field private a:Z

.field private b:Ladc;


# direct methods
.method public constructor <init>(LadE;Ladf;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Laeo;-><init>()V

    .line 49
    new-instance v0, Ladc;

    invoke-direct {v0}, Ladc;-><init>()V

    iput-object v0, p0, LadI;->a:Ladc;

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, LadI;->a:Z

    .line 70
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LadE;

    iput-object v0, p0, LadI;->a:LadE;

    .line 71
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladf;

    iput-object v0, p0, LadI;->a:Ladf;

    .line 72
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LadI;->a:Ljava/lang/String;

    .line 73
    iput-object p4, p0, LadI;->a:Ljava/lang/Object;

    .line 74
    return-void
.end method


# virtual methods
.method public final a()LacZ;
    .registers 5

    .prologue
    .line 162
    invoke-virtual {p0}, LadI;->a()LadE;

    move-result-object v0

    invoke-virtual {v0}, LadE;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 163
    invoke-virtual {p0}, LadI;->a()LadE;

    move-result-object v0

    invoke-virtual {v0}, LadE;->a()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_12
    new-instance v1, LacZ;

    iget-object v2, p0, LadI;->a:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v2, p0, v3}, Ladt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, LacZ;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 165
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LadI;->a()LadE;

    move-result-object v1

    invoke-virtual {v1}, LadE;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LadI;->a()LadE;

    move-result-object v1

    invoke-virtual {v1}, LadE;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public final a()LadE;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, LadI;->a:LadE;

    return-object v0
.end method

.method public final a()Ladc;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, LadI;->a:Ladc;

    return-object v0
.end method

.method public a()Ladh;
    .registers 5

    .prologue
    .line 177
    iget-object v0, p0, LadI;->a:LadE;

    iget-object v1, p0, LadI;->a:Ladf;

    invoke-virtual {p0}, LadI;->a()LacZ;

    move-result-object v2

    iget-object v3, p0, LadI;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, LadE;->a(Ladf;LacZ;Ljava/lang/Object;)Ladh;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ladh;->a()Ladc;

    move-result-object v1

    invoke-virtual {p0}, LadI;->a()Ladc;

    move-result-object v2

    invoke-virtual {v1, v2}, Ladc;->putAll(Ljava/util/Map;)V

    .line 180
    return-object v0
.end method

.method public a()Ladl;
    .registers 3

    .prologue
    .line 205
    invoke-virtual {p0}, LadI;->a()Ladh;

    move-result-object v0

    .line 206
    iget-boolean v1, p0, LadI;->a:Z

    invoke-virtual {v0, v1}, Ladh;->a(Z)Ladh;

    .line 207
    iget-object v1, p0, LadI;->a:LadE;

    invoke-virtual {v1, v0}, LadE;->a(Ladh;)Ladl;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Ladl;->a()Ladc;

    move-result-object v1

    iput-object v1, p0, LadI;->b:Ladc;

    .line 209
    return-object v0
.end method
