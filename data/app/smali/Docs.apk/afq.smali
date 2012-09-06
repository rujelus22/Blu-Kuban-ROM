.class Lafq;
.super Lafl;
.source "CharMatcher.java"


# instance fields
.field final synthetic o:Lafl;

.field final synthetic p:Lafl;


# direct methods
.method constructor <init>(Lafl;Lafl;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 558
    iput-object p1, p0, Lafq;->p:Lafl;

    iput-object p2, p0, Lafq;->o:Lafl;

    invoke-direct {p0}, Lafl;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lafl;
    .registers 2

    .prologue
    .line 576
    iget-object v0, p0, Lafq;->o:Lafl;

    return-object v0
.end method

.method public a(C)Z
    .registers 3
    .parameter

    .prologue
    .line 560
    iget-object v0, p0, Lafq;->o:Lafl;

    invoke-virtual {v0, p1}, Lafl;->a(C)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public a(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter

    .prologue
    .line 564
    iget-object v0, p0, Lafq;->o:Lafl;

    invoke-virtual {v0, p1}, Lafl;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter

    .prologue
    .line 568
    iget-object v0, p0, Lafq;->o:Lafl;

    invoke-virtual {v0, p1}, Lafl;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
