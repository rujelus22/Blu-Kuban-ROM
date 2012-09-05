.class final Lcom/google/android/youtube/app/ui/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/u;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/u;)V
    .registers 2
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/y;->a:Lcom/google/android/youtube/app/ui/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/y;->a:Lcom/google/android/youtube/app/ui/u;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/u;->g(Lcom/google/android/youtube/app/ui/u;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 147
    return-void
.end method
