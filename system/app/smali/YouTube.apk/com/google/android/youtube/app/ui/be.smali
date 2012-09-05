.class final Lcom/google/android/youtube/app/ui/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bc;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bc;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/be;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/be;->a:Lcom/google/android/youtube/app/ui/bc;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bc;->b(Lcom/google/android/youtube/app/ui/bc;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 111
    return-void
.end method
