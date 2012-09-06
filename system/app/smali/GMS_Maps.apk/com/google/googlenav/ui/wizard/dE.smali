.class Lcom/google/googlenav/ui/wizard/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/dd;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/dd;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/de;->a:Lcom/google/googlenav/ui/wizard/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/de;->a:Lcom/google/googlenav/ui/wizard/dd;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/dd;->b:Lcom/google/googlenav/ui/wizard/dc;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/dc;->a(Lcom/google/googlenav/ui/wizard/dc;)Lcom/google/googlenav/ui/wizard/dh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/de;->a:Lcom/google/googlenav/ui/wizard/dd;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/dd;->a:Lcom/google/googlenav/friend/ah;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/dh;->a(Lcom/google/googlenav/friend/ah;)V

    .line 105
    return-void
.end method
