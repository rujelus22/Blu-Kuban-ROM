.class final Lcom/google/android/youtube/app/honeycomb/tablet/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/tablet/ae;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/tablet/ae;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ae;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->a(Lcom/google/android/youtube/app/honeycomb/tablet/ae;)Lcom/google/android/youtube/app/honeycomb/ui/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/ui/m;->a()V

    .line 52
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/tablet/af;->a:Lcom/google/android/youtube/app/honeycomb/tablet/ae;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/tablet/ae;->b(Lcom/google/android/youtube/app/honeycomb/tablet/ae;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 53
    return-void
.end method
