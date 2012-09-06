.class Lcom/google/googlenav/ui/wizard/aU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aV;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/aO;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aO;Lcom/google/googlenav/ui/wizard/aV;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/aU;->b:Lcom/google/googlenav/ui/wizard/aO;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/aU;->a:Lcom/google/googlenav/ui/wizard/aV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/aU;->a:Lcom/google/googlenav/ui/wizard/aV;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aV;->a()V

    .line 155
    return-void
.end method
