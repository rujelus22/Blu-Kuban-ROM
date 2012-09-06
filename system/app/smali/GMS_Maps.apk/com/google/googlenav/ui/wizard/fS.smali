.class Lcom/google/googlenav/ui/wizard/fs;
.super Lag/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fp;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fs;->a:Lcom/google/googlenav/ui/wizard/fp;

    invoke-direct {p0}, Lag/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lag/c;)V
    .registers 3
    .parameter

    .prologue
    .line 141
    sget-object v0, Lag/b;->k:Lag/c;

    if-eq p1, v0, :cond_b

    .line 142
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fs;->a:Lcom/google/googlenav/ui/wizard/fp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fp;->a:Lcom/google/googlenav/ui/wizard/fo;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/fo;->a()V

    .line 144
    :cond_b
    return-void
.end method
