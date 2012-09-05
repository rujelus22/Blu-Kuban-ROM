.class final Lcom/google/android/youtube/app/honeycomb/tablet/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/af;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/af;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a:Lcom/google/android/youtube/app/honeycomb/tablet/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a:Lcom/google/android/youtube/app/honeycomb/tablet/af;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/af;->a(Lcom/google/android/youtube/app/honeycomb/tablet/af;)Lcom/google/android/youtube/app/honeycomb/ui/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/q;->a()V

    .line 67
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/ag;->a:Lcom/google/android/youtube/app/honeycomb/tablet/af;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/af;->b(Lcom/google/android/youtube/app/honeycomb/tablet/af;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 68
    return-void
.end method
