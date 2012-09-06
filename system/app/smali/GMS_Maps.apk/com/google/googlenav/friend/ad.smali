.class Lcom/google/googlenav/friend/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/ac;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/ac;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/googlenav/friend/ad;->a:Lcom/google/googlenav/friend/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 244
    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x3d9

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/googlenav/friend/ad;->a:Lcom/google/googlenav/friend/ac;

    iget-object v4, v4, Lcom/google/googlenav/friend/ac;->a:Lcom/google/googlenav/friend/ab;

    iget-object v4, v4, Lcom/google/googlenav/friend/ab;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 250
    return-void
.end method
