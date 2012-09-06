.class final Lcom/google/android/youtube/core/async/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/FroyoSignInActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/FroyoSignInActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/youtube/core/async/ab;->a:Lcom/google/android/youtube/core/async/FroyoSignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/core/async/ab;->a:Lcom/google/android/youtube/core/async/FroyoSignInActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->finish()V

    .line 122
    return-void
.end method
