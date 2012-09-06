.class Lcom/google/googlenav/ui/wizard/dd;
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
    .line 93
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/dd;->b:Lcom/google/googlenav/ui/wizard/dc;

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/dd;->a:Lcom/google/googlenav/friend/ah;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dd;->b:Lcom/google/googlenav/ui/wizard/dc;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dd;->a:Lcom/google/googlenav/friend/ah;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/dc;->b(Lcom/google/googlenav/friend/ah;)V

    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/dd;->b:Lcom/google/googlenav/ui/wizard/dc;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dd;->a:Lcom/google/googlenav/friend/ah;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/dc;->a(Lcom/google/googlenav/ui/wizard/dc;Lcom/google/googlenav/friend/ah;)V

    .line 100
    const/4 v0, 0x1

    .line 101
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/dd;->b:Lcom/google/googlenav/ui/wizard/dc;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/dc;->b(Lcom/google/googlenav/ui/wizard/dc;)Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/de;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/de;-><init>(Lcom/google/googlenav/ui/wizard/dd;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 107
    return-void
.end method
