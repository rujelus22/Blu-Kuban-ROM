.class final Lcom/google/android/youtube/app/ui/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/bt;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/bt;)V
    .registers 2
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/bv;->a:Lcom/google/android/youtube/app/ui/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/bv;->a:Lcom/google/android/youtube/app/ui/bt;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/bt;->c(Lcom/google/android/youtube/app/ui/bt;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 140
    return-void
.end method
