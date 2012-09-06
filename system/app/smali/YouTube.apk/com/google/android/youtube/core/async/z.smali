.class final Lcom/google/android/youtube/core/async/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/async/FroyoSignInActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/async/FroyoSignInActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/youtube/core/async/z;->a:Lcom/google/android/youtube/core/async/FroyoSignInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 90
    invoke-static {}, Lcom/google/android/youtube/core/L;->b()V

    .line 91
    iget-object v0, p0, Lcom/google/android/youtube/core/async/z;->a:Lcom/google/android/youtube/core/async/FroyoSignInActivity;

    invoke-static {v0}, Lcom/google/android/youtube/core/async/FroyoSignInActivity;->a(Lcom/google/android/youtube/core/async/FroyoSignInActivity;)V

    .line 92
    return-void
.end method
