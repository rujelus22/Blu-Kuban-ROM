.class Lcom/google/googlenav/ui/wizard/jh;
.super Lac/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ja;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 2
    .parameter

    .prologue
    .line 620
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jh;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-direct {p0}, Lac/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jh;->a:Lcom/google/googlenav/ui/wizard/ja;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/ui/wizard/ja;Z)V

    .line 631
    return-void
.end method
