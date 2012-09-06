.class Lcom/google/googlenav/ui/wizard/jy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lad/b;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ju;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lad/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jy;->b:Lcom/google/googlenav/ui/wizard/ju;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/jy;->a:Lad/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jy;->b:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ju;->a:Lcom/google/googlenav/J;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/jy;->a:Lad/b;

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->b(Lad/b;)V

    .line 1361
    return-void
.end method
