.class Lcom/google/googlenav/B;
.super Lac/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/A;


# direct methods
.method constructor <init>(Lcom/google/googlenav/A;)V
    .registers 2
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/google/googlenav/B;->a:Lcom/google/googlenav/A;

    invoke-direct {p0}, Lac/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/googlenav/B;->a:Lcom/google/googlenav/A;

    invoke-static {v0}, Lcom/google/googlenav/A;->a(Lcom/google/googlenav/A;)Lcom/google/googlenav/J;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/J;->a()V

    .line 309
    iget-object v0, p0, Lcom/google/googlenav/B;->a:Lcom/google/googlenav/A;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/googlenav/A;->a(Lcom/google/googlenav/A;Ljava/lang/String;)Ljava/lang/String;

    .line 310
    return-void
.end method
