.class Lcom/google/googlenav/ui/wizard/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/e;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/e;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/f;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lag/c;)V
    .registers 3
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/f;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/e;->a(Lcom/google/googlenav/ui/wizard/e;)Lcom/google/googlenav/ui/wizard/q;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_b

    .line 77
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/q;->g()V

    .line 79
    :cond_b
    return-void
.end method
