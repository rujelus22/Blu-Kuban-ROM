.class final Lcom/google/android/youtube/app/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/j;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/ui/j;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/l;->a:Lcom/google/android/youtube/app/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/l;->a:Lcom/google/android/youtube/app/ui/j;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/j;->a(Lcom/google/android/youtube/app/ui/j;)Lcom/google/android/youtube/app/ui/p;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/youtube/app/ui/l;->a:Lcom/google/android/youtube/app/ui/j;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/j;->b(Lcom/google/android/youtube/app/ui/j;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 105
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/l;->a:Lcom/google/android/youtube/app/ui/j;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/j;->a(Lcom/google/android/youtube/app/ui/j;)Lcom/google/android/youtube/app/ui/p;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/ui/l;->a:Lcom/google/android/youtube/app/ui/j;

    invoke-static {v1}, Lcom/google/android/youtube/app/ui/j;->b(Lcom/google/android/youtube/app/ui/j;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/google/android/youtube/app/ui/p;->a(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 106
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/l;->a:Lcom/google/android/youtube/app/ui/j;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/ui/j;->a()V

    .line 109
    :cond_2b
    return-void
.end method
