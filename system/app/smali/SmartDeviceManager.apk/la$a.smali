.class abstract Lla$a;
.super Lkz;
.source "a"

# interfaces
.implements Lhp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lla;
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
        "<TT;>;",
        "Lhp;"
    }
.end annotation


# instance fields
.field protected final a:Z

.field protected final b:Lnd;

.field protected final c:Lhu;

.field protected d:Lhj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhj",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;Lnd;ZLhu;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lnd;",
            "Z",
            "Lhu;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lkz;-><init>(Ljava/lang/Class;)V

    .line 101
    iput-object p2, p0, Lla$a;->b:Lnd;

    .line 103
    if-nez p3, :cond_f

    if-eqz p2, :cond_15

    invoke-virtual {p2}, Lnd;->n()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_f
    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Lla$a;->a:Z

    .line 104
    iput-object p4, p0, Lla$a;->c:Lhu;

    .line 105
    return-void

    .line 103
    :cond_15
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public a(Lhs;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 173
    iget-boolean v0, p0, Lla$a;->a:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lla$a;->b:Lnd;

    if-eqz v0, :cond_10

    .line 174
    iget-object v0, p0, Lla$a;->b:Lnd;

    invoke-virtual {p1, v0}, Lhs;->a(Lnd;)Lhj;

    move-result-object v0

    iput-object v0, p0, Lla$a;->d:Lhj;

    .line 176
    :cond_10
    return-void
.end method

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
    .line 111
    invoke-virtual {p2}, Lez;->b()V

    .line 112
    invoke-virtual {p0, p1, p2, p3}, Lla$a;->b(Ljava/lang/Object;Lez;Lhs;)V

    .line 113
    invoke-virtual {p2}, Lez;->c()V

    .line 114
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
    .line 121
    invoke-virtual {p4, p1, p2}, Lhu;->c(Ljava/lang/Object;Lez;)V

    .line 122
    invoke-virtual {p0, p1, p2, p3}, Lla$a;->b(Ljava/lang/Object;Lez;Lhs;)V

    .line 123
    invoke-virtual {p4, p2}, Lhu;->c(Lez;)V

    .line 124
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
