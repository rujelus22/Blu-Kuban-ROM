.class Lcom/google/googlenav/friend/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/bk;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/bk;)V
    .registers 2
    .parameter

    .prologue
    .line 367
    iput-object p1, p0, Lcom/google/googlenav/friend/bq;->a:Lcom/google/googlenav/friend/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/googlenav/friend/bq;->a:Lcom/google/googlenav/friend/bk;

    iget-object v0, v0, Lcom/google/googlenav/friend/bk;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 371
    return-void
.end method
