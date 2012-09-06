.class LaM/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aW;

.field final synthetic b:LaM/bj;


# direct methods
.method constructor <init>(LaM/bj;Lcom/google/googlenav/aW;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1033
    iput-object p1, p0, LaM/bo;->b:LaM/bj;

    iput-object p2, p0, LaM/bo;->a:Lcom/google/googlenav/aW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1037
    iget-object v0, p0, LaM/bo;->b:LaM/bj;

    iget-object v1, p0, LaM/bo;->a:Lcom/google/googlenav/aW;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LaM/bj;->b(Lcom/google/googlenav/aW;Z)V

    .line 1038
    return-void
.end method
