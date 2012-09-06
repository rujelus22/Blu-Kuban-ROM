.class final Lcom/google/android/youtube/app/ui/ap;
.super Lcom/google/android/youtube/core/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/am;

.field private final b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/am;Landroid/content/Context;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ap;->a:Lcom/google/android/youtube/app/ui/am;

    invoke-direct {p0}, Lcom/google/android/youtube/core/a/a;-><init>()V

    .line 53
    const-string v0, "context may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->b:Landroid/view/LayoutInflater;

    .line 55
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    if-nez p2, :cond_c

    .line 59
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ap;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f04002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 61
    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/ap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/ao;

    .line 62
    const v1, 0x7f080024

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    const v2, 0x7f08006f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 64
    if-eqz v1, :cond_2b

    .line 65
    iget v3, v0, Lcom/google/android/youtube/app/ui/ao;->a:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 67
    :cond_2b
    if-eqz v2, :cond_32

    .line 68
    iget v0, v0, Lcom/google/android/youtube/app/ui/ao;->b:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 70
    :cond_32
    return-object p2
.end method
