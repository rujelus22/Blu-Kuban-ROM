.class public LTe;
.super Ljava/lang/Object;
.source "PerFeed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, LTe;->a:Ljava/lang/Object;

    .line 18
    iput-object p2, p0, LTe;->b:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 27
    if-ne p1, p0, :cond_5

    .line 36
    :cond_4
    :goto_4
    return v0

    .line 30
    :cond_5
    instance-of v2, p1, LTe;

    if-nez v2, :cond_b

    move v0, v1

    .line 31
    goto :goto_4

    .line 33
    :cond_b
    check-cast p1, LTe;

    .line 34
    iget-object v2, p0, LTe;->a:Ljava/lang/Object;

    iget-object v3, p1, LTe;->a:Ljava/lang/Object;

    invoke-static {v2, v3}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, LTe;->b:Ljava/lang/Object;

    iget-object v3, p1, LTe;->b:Ljava/lang/Object;

    invoke-static {v2, v3}, LafL;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, LTe;->a:Ljava/lang/Object;

    aput-object v1, v0, v3

    invoke-static {v0}, LafL;->a([Ljava/lang/Object;)I

    move-result v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, LTe;->b:Ljava/lang/Object;

    aput-object v2, v1, v3

    invoke-static {v1}, LafL;->a([Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 46
    const-string v0, "PerFeed[%s, %s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LTe;->a:Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, LTe;->b:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
