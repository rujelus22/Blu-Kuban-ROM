.class final Lcom/google/android/youtube/app/ui/bk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bd;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bd;)V
    .registers 2
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bk;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bk;->a:Lcom/google/android/youtube/app/ui/bd;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bd;->j(Lcom/google/android/youtube/app/ui/bd;)Lcom/google/android/youtube/core/player/DefaultControllerOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/player/DefaultControllerOverlay;->b()V

    .line 690
    return-void
.end method
