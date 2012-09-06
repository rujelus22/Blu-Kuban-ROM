.class Lcom/google/googlenav/clientparam/h;
.super LY/d;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/clientparam/g;


# direct methods
.method constructor <init>(Lcom/google/googlenav/clientparam/g;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 609
    iput-object p1, p0, Lcom/google/googlenav/clientparam/h;->a:Lcom/google/googlenav/clientparam/g;

    invoke-direct {p0, p2}, LY/d;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 4

    .prologue
    .line 612
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    .line 613
    iget-object v1, p0, Lcom/google/googlenav/clientparam/h;->a:Lcom/google/googlenav/clientparam/g;

    invoke-static {v1}, Lcom/google/googlenav/clientparam/g;->a(Lcom/google/googlenav/clientparam/g;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/clientparam/f;->a(Lac/h;Ljava/lang/String;Z)V

    .line 614
    return-void
.end method
