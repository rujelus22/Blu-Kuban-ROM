.class Lm/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lm/k;


# direct methods
.method constructor <init>(Lm/k;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lm/m;->a:Lm/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 281
    iget-object v0, p0, Lm/m;->a:Lm/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lm/k;->a(Lm/k;I)I

    .line 283
    iget-object v0, p0, Lm/m;->a:Lm/k;

    iget-object v1, p0, Lm/m;->a:Lm/k;

    invoke-static {v1}, Lm/k;->a(Lm/k;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lm/k;->a(ILandroid/os/Bundle;)V

    .line 284
    return-void
.end method
