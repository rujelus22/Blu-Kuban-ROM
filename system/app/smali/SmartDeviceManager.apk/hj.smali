.class public abstract Lhj;
.super Ljava/lang/Object;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Lez;Lhs;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lez;",
            "Lhs;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation
.end method

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
            Lfe;
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2, p3}, Lhj;->a(Ljava/lang/Object;Lez;Lhs;)V

    .line 55
    return-void
.end method
