.class Lcom/google/googlenav/ui/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lac/g;

.field final synthetic b:Lcom/google/googlenav/ui/X;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/X;Lac/g;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 5737
    iput-object p1, p0, Lcom/google/googlenav/ui/Z;->b:Lcom/google/googlenav/ui/X;

    iput-object p2, p0, Lcom/google/googlenav/ui/Z;->a:Lac/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 5740
    iget-object v0, p0, Lcom/google/googlenav/ui/Z;->b:Lcom/google/googlenav/ui/X;

    iget-object v0, v0, Lcom/google/googlenav/ui/X;->a:Lcom/google/googlenav/ui/v;

    iget-object v1, p0, Lcom/google/googlenav/ui/Z;->a:Lac/g;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->b(Lac/g;)V

    .line 5741
    return-void
.end method
