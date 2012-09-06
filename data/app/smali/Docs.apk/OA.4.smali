.class LOA;
.super Ljava/lang/Object;
.source "OnlineSearchProcessor.java"

# interfaces
.implements LTN;


# instance fields
.field private a:I

.field private final a:LOB;

.field private a:Z


# direct methods
.method public constructor <init>(LOB;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, LOA;->a:I

    .line 37
    iput-boolean v0, p0, LOA;->a:Z

    .line 40
    const-string v0, "null listener"

    invoke-static {p1, v0}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOB;

    iput-object v0, p0, LOA;->a:LOB;

    .line 41
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 54
    return-void
.end method

.method public a(LSr;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    return-void
.end method

.method public a(LSr;LSs;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 64
    iget v0, p0, LOA;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LOA;->a:I

    .line 65
    invoke-virtual {p2}, LSs;->a()Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "null resourceId"

    invoke-static {v0, v1}, LafQ;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, LOA;->a:LOB;

    invoke-interface {v0, p2}, LOB;->a(LSs;)V

    .line 70
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 58
    const-string v1, "OnlineSearchProcessor"

    const-string v2, "%d results for search %s%s"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v4, p0, LOA;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, LOA;->a:LOB;

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-boolean v0, p0, LOA;->a:Z

    if-eqz v0, :cond_26

    const-string v0, " (canceled)"

    :goto_1c
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 58
    :cond_26
    const-string v0, ""

    goto :goto_1c
.end method

.method public b(LSr;)V
    .registers 4
    .parameter

    .prologue
    .line 49
    iget-boolean v1, p0, LOA;->a:Z

    iget-object v0, p0, LOA;->a:LOB;

    invoke-interface {v0}, LOB;->a()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_b
    or-int/2addr v0, v1

    iput-boolean v0, p0, LOA;->a:Z

    .line 50
    return-void

    .line 49
    :cond_f
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 74
    const-string v1, "OnlineSearchProcessor[%s%s]"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v0, p0, LOA;->a:Z

    if-eqz v0, :cond_18

    const-string v0, "canceled, "

    :goto_c
    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, LOA;->a:LOB;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    const-string v0, ""

    goto :goto_c
.end method
