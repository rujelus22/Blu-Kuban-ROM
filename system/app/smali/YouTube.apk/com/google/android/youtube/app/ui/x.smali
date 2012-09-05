.class final Lcom/google/android/youtube/app/ui/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/u;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/u;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/x;->a:Lcom/google/android/youtube/app/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/x;->a:Lcom/google/android/youtube/app/ui/u;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/u;->f(Lcom/google/android/youtube/app/ui/u;)Lcom/google/android/youtube/app/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/ac;->a()V

    .line 139
    return-void
.end method
