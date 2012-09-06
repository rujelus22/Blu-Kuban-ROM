.class final Lcom/google/android/youtube/app/ui/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/remote/ak;

.field final synthetic b:Lcom/google/android/youtube/app/ui/bd;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bd;Lcom/google/android/youtube/app/remote/ak;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 755
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bn;->b:Lcom/google/android/youtube/app/ui/bd;

    iput-object p2, p0, Lcom/google/android/youtube/app/ui/bn;->a:Lcom/google/android/youtube/app/remote/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bn;->b:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->g()Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;->ADVERTISEMENT:Lcom/google/android/youtube/app/remote/RemoteControl$RemotePlayerState;

    if-ne v0, v1, :cond_24

    .line 758
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bn;->b:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->i(Lcom/google/android/youtube/app/ui/bd;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/bn;->a:Lcom/google/android/youtube/app/remote/ak;

    iget-object v1, v1, Lcom/google/android/youtube/app/remote/ak;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/i;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 759
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bn;->b:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->g(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->n()V

    .line 761
    :cond_24
    return-void
.end method
