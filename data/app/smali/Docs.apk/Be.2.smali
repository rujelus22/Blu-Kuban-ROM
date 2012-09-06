.class public LBe;
.super Ljava/lang/Object;
.source "LinkStyle.java"

# interfaces
.implements LBj;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, LBe;->a:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic a(LBe;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, LBe;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()LyD;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LyD",
            "<",
            "LBe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, LBf;

    invoke-direct {v0, p0}, LBf;-><init>(LBe;)V

    return-object v0
.end method

.method public a(LBj;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 51
    instance-of v1, p1, LBe;

    if-eqz v1, :cond_12

    .line 52
    check-cast p1, LBe;

    .line 53
    iget-object v1, p0, LBe;->a:Ljava/lang/String;

    if-nez v1, :cond_13

    .line 54
    iget-object v1, p0, LBe;->a:Ljava/lang/String;

    iget-object v2, p1, LBe;->a:Ljava/lang/String;

    if-ne v1, v2, :cond_12

    const/4 v0, 0x1

    .line 58
    :cond_12
    :goto_12
    return v0

    .line 56
    :cond_13
    iget-object v0, p0, LBe;->a:Ljava/lang/String;

    iget-object v1, p1, LBe;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_12
.end method
