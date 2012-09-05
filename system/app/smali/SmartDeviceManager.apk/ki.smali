.class public final Lki;
.super Lkg;
.source "a"


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lkd;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lkg;-><init>(Lkd;)V

    .line 28
    iput-object p2, p0, Lki;->a:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public final b(Lez;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p1}, Lez;->e()V

    .line 53
    return-void
.end method

.method public final b(Ljava/lang/Object;Lez;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfe;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p2}, Lez;->d()V

    .line 42
    iget-object v0, p0, Lki;->a:Ljava/lang/String;

    iget-object v1, p0, Lki;->b:Lkd;

    invoke-interface {v1, p1}, Lkd;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0}, Lez;->a(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lez;->b(Ljava/lang/String;)V

    .line 43
    return-void
.end method
