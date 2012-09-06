.class Lcom/google/googlenav/ui/wizard/gl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lan/s;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/gj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gj;Lan/s;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1267
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gl;->b:Lcom/google/googlenav/ui/wizard/gj;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/gl;->a:Lan/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1270
    const/4 v0, 0x1

    .line 1271
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/gl;->b:Lcom/google/googlenav/ui/wizard/gj;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/gj;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->A()Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/ui/wizard/gm;

    invoke-direct {v2, p0}, Lcom/google/googlenav/ui/wizard/gm;-><init>(Lcom/google/googlenav/ui/wizard/gl;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 1279
    return-void
.end method
