.class Lcom/google/googlenav/ui/view/dialog/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/an;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/an;)V
    .registers 2
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/ap;->a:Lcom/google/googlenav/ui/view/dialog/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/ap;->a:Lcom/google/googlenav/ui/view/dialog/an;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/an;->b:Lcom/google/googlenav/ui/view/dialog/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/am;->a(Lcom/google/googlenav/ui/view/dialog/am;)Lcom/google/googlenav/ui/view/dialog/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/aq;->c()V

    .line 126
    return-void
.end method
