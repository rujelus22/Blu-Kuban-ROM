.class final Lcom/google/android/youtube/app/ui/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/aa;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/aa;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ad;->a:Lcom/google/android/youtube/app/ui/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ad;->a:Lcom/google/android/youtube/app/ui/aa;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/aa;->f(Lcom/google/android/youtube/app/ui/aa;)Lcom/google/android/youtube/app/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/i;->a()V

    .line 139
    return-void
.end method
