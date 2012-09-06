.class final LakO;
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


# instance fields
.field final a:LakN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LakN",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;LakN;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "LakN",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Laiz;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    iput-object p3, p0, LakO;->a:LakN;

    .line 118
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
    .line 121
    iget-object v0, p0, LakO;->a:LakN;

    return-object v0
.end method
