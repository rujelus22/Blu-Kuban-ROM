.class public LAZ;
.super Ljava/lang/Object;
.source "FootnoteNumberStyle.java"

# interfaces
.implements LBj;


# instance fields
.field private final a:LBm;


# direct methods
.method public constructor <init>(Lwk;LwH;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, LBm;

    invoke-direct {v0, p1, p2}, LBm;-><init>(Lwk;LwH;)V

    iput-object v0, p0, LAZ;->a:LBm;

    .line 28
    return-void
.end method

.method static synthetic a(LAZ;)LBm;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, LAZ;->a:LBm;

    return-object v0
.end method


# virtual methods
.method public a()LyB;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LyB",
            "<",
            "LAZ;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, LBa;

    invoke-direct {v0, p0}, LBa;-><init>(LAZ;)V

    return-object v0
.end method

.method public bridge synthetic a()LyD;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, LAZ;->a()LyB;

    move-result-object v0

    return-object v0
.end method

.method public a(LBj;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 32
    instance-of v1, p1, LAZ;

    if-eqz v1, :cond_13

    .line 33
    check-cast p1, LAZ;

    .line 34
    iget-object v1, p0, LAZ;->a:LBm;

    if-eqz v1, :cond_14

    iget-object v0, p0, LAZ;->a:LBm;

    iget-object v1, p1, LAZ;->a:LBm;

    invoke-virtual {v0, v1}, LBm;->a(LBj;)Z

    move-result v0

    .line 38
    :cond_13
    :goto_13
    return v0

    .line 34
    :cond_14
    iget-object v1, p1, LAZ;->a:LBm;

    if-nez v1, :cond_13

    const/4 v0, 0x1

    goto :goto_13
.end method
