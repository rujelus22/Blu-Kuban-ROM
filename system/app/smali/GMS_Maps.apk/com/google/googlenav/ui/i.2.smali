.class Lcom/google/googlenav/ui/I;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 923
    iput-object p1, p0, Lcom/google/googlenav/ui/I;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 926
    iget-object v0, p0, Lcom/google/googlenav/ui/I;->a:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->w()V

    .line 927
    return-void
.end method
