.class public final Llc;
.super Lll;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lll",
        "<",
        "Ljava/lang/Enum",
        "<*>;>;"
    }
.end annotation


# instance fields
.field protected final a:Lmf;


# direct methods
.method public constructor <init>(Lmf;)V
    .registers 3
    .parameter

    .prologue
    .line 36
    const-class v0, Ljava/lang/Enum;

    invoke-direct {p0, v0}, Lll;-><init>(Ljava/lang/Class;)V

    .line 37
    iput-object p1, p0, Llc;->a:Lmf;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Lmf;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Llc;->a:Lmf;

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Lez;Lhs;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ley;
        }
    .end annotation

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Enum;

    iget-object v0, p0, Llc;->a:Lmf;

    invoke-virtual {v0, p1}, Lmf;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lez;->b(Ljava/lang/String;)V

    return-void
.end method
