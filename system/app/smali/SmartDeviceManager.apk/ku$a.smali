.class abstract Lku$a;
.super Lkz;
.source "a"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x420
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkz",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Lhu;


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lhu;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lhu;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkz;-><init>(Ljava/lang/Class;B)V

    .line 59
    iput-object p2, p0, Lku$a;->a:Lhu;

    .line 60
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 4
    .parameter
    .parameter
    .parameter
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
            Ley;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p2}, Lez;->b()V

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lku$a;->b(Ljava/lang/Object;Lez;Lhs;)V

    .line 68
    invoke-virtual {p2}, Lez;->c()V

    .line 69
    return-void
.end method

.method public final a(Ljava/lang/Object;Lez;Lhs;Lhu;)V
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
    .line 76
    invoke-virtual {p4, p1, p2}, Lhu;->c(Ljava/lang/Object;Lez;)V

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lku$a;->b(Ljava/lang/Object;Lez;Lhs;)V

    .line 78
    invoke-virtual {p4, p2}, Lhu;->c(Lez;)V

    .line 79
    return-void
.end method

.method protected abstract b(Ljava/lang/Object;Lez;Lhs;)V
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
            Ley;
        }
    .end annotation
.end method
