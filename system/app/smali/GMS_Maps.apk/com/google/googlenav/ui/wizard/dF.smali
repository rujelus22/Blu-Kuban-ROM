.class Lcom/google/googlenav/ui/wizard/df;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/ah;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/dc;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dc;LY/c;Lcom/google/googlenav/friend/ah;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/df;->b:Lcom/google/googlenav/ui/wizard/dc;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/df;->a:Lcom/google/googlenav/friend/ah;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/df;->b:Lcom/google/googlenav/ui/wizard/dc;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/df;->a:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dc;->d(Lcom/google/googlenav/friend/ah;)V

    .line 163
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/df;->b:Lcom/google/googlenav/ui/wizard/dc;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/df;->a:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dc;->a(Lcom/google/googlenav/friend/ah;)V

    .line 164
    return-void
.end method
