.class final LakP;
.super Laiz;
.source "RegularImmutableMap.java"

# interfaces
.implements LakN;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Laiz",
        "<TK;TV;>;",
        "LakN",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Laiz;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    return-void
.end method


# virtual methods
.method public a()LakN;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LakN",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method
