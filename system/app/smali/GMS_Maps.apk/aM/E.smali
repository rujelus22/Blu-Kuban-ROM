.class LaM/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:LaM/f;

.field final synthetic b:Lcom/google/googlenav/F;

.field final synthetic c:LaM/a;


# direct methods
.method constructor <init>(LaM/a;LaM/f;Lcom/google/googlenav/F;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, LaM/e;->c:LaM/a;

    iput-object p2, p0, LaM/e;->a:LaM/f;

    iput-object p3, p0, LaM/e;->b:Lcom/google/googlenav/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, LaM/e;->a:LaM/f;

    iget-object v1, p0, LaM/e;->b:Lcom/google/googlenav/F;

    invoke-interface {v0, v1}, LaM/f;->a(Lcom/google/googlenav/F;)V

    .line 268
    return-void
.end method
