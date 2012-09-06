.class Lyy;
.super Ljava/lang/Object;
.source "SpanList.java"

# interfaces
.implements LFs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LFs",
        "<",
        "LyD",
        "<TT;>;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Lyu;

.field final synthetic a:Lyz;


# direct methods
.method constructor <init>(Lyu;ILyz;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lyy;->a:Lyu;

    iput p2, p0, Lyy;->a:I

    iput-object p3, p0, Lyy;->a:Lyz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LFr;I)Ljava/lang/Boolean;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFr",
            "<",
            "LyD",
            "<TT;>;>;I)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 213
    if-nez p2, :cond_16

    invoke-interface {p1}, LFr;->b()LFr;

    move-result-object v0

    iget-object v1, p0, Lyy;->a:Lyu;

    invoke-static {v1}, Lyu;->a(Lyu;)LEY;

    move-result-object v1

    invoke-virtual {v1}, LEY;->b()LFb;

    move-result-object v1

    if-eq v0, v1, :cond_16

    .line 214
    invoke-interface {p1}, LFr;->b()LFr;

    move-result-object p1

    .line 216
    :cond_16
    :goto_16
    invoke-interface {p1}, LFr;->a()I

    move-result v0

    iget v1, p0, Lyy;->a:I

    if-gt v0, v1, :cond_3d

    iget-object v0, p0, Lyy;->a:Lyu;

    invoke-static {v0}, Lyu;->a(Lyu;)LEY;

    move-result-object v0

    invoke-virtual {v0}, LEY;->b()LFb;

    move-result-object v0

    if-eq p1, v0, :cond_3d

    .line 217
    iget-object v0, p0, Lyy;->a:Lyz;

    invoke-interface {v0, p1}, Lyz;->a(LFr;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 218
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 222
    :goto_37
    return-object v0

    .line 220
    :cond_38
    invoke-interface {p1}, LFr;->a()LFr;

    move-result-object p1

    goto :goto_16

    .line 222
    :cond_3d
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_37
.end method

.method public bridge synthetic a(LFr;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-virtual {p0, p1, p2}, Lyy;->a(LFr;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
