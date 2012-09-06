.class Lcom/google/googlenav/ui/wizard/eF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lag/f;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/eE;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/eE;)V
    .registers 2
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/eF;->a:Lcom/google/googlenav/ui/wizard/eE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lag/c;)V
    .registers 3
    .parameter

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/eF;->a:Lcom/google/googlenav/ui/wizard/eE;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/eE;->c(Lcom/google/googlenav/ui/wizard/eE;)Lcom/google/googlenav/ui/wizard/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/B;->a()V

    .line 305
    return-void
.end method
