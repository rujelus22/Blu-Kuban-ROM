.class Lcom/google/googlenav/ui/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/v;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/v;)V
    .registers 2
    .parameter

    .prologue
    .line 4737
    iput-object p1, p0, Lcom/google/googlenav/ui/H;->a:Lcom/google/googlenav/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 4740
    iget-object v0, p0, Lcom/google/googlenav/ui/H;->a:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/ui/v;->e(Lcom/google/googlenav/ui/v;)LaM/am;

    move-result-object v0

    invoke-virtual {v0}, LaM/am;->Z()V

    .line 4741
    return-void
.end method
