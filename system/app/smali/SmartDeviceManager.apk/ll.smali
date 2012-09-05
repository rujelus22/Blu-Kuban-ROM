.class public abstract Lll;
.super Llm;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llm",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llm;-><init>(Ljava/lang/Class;B)V

    .line 24
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;B)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;B)V"
        }
    .end annotation

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Llm;-><init>(Ljava/lang/Class;B)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lez;",
            "Lhs;",
            "Lhu;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p4, p1, p2}, Lhu;->a(Ljava/lang/Object;Lez;)V

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lll;->a(Ljava/lang/Object;Lez;Lhs;)V

    .line 40
    invoke-virtual {p4, p2}, Lhu;->a(Lez;)V

    .line 41
    return-void
.end method
