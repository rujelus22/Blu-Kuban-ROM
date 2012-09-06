.class Lcom/google/googlenav/friend/bn;
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
    .line 180
    iput-object p1, p0, Lcom/google/googlenav/friend/bn;->a:Lcom/google/googlenav/friend/bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/googlenav/friend/bn;->a:Lcom/google/googlenav/friend/bk;

    iget-object v0, v0, Lcom/google/googlenav/friend/bk;->c:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->f()V

    .line 184
    const/16 v0, 0x2ac

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bn;->b(Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 185
    return-void
.end method
