.class Lcom/google/googlenav/ui/wizard/en;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/dW;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/em;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/em;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/en;->a:Lcom/google/googlenav/ui/wizard/em;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/en;->a:Lcom/google/googlenav/ui/wizard/em;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/em;->o()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 90
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/en;->a:Lcom/google/googlenav/ui/wizard/em;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/em;->a()V

    .line 92
    :cond_d
    return-void
.end method
