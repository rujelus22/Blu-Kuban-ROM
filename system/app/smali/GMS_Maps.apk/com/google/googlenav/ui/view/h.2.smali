.class Lcom/google/googlenav/ui/view/h;
.super Lcom/google/googlenav/ui/view/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;

.field final synthetic b:Lcom/google/googlenav/ui/view/e;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/e;Lcom/google/googlenav/ui/v;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/google/googlenav/ui/view/h;->b:Lcom/google/googlenav/ui/view/e;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/h;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 4
    .parameter

    .prologue
    .line 222
    const/4 v0, 0x2

    .line 225
    iget-object v1, p0, Lcom/google/googlenav/ui/view/h;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/v;->b(I)V

    .line 226
    const/4 v0, 0x1

    return v0
.end method
