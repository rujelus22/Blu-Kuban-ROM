.class final Lcom/google/android/youtube/app/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field final synthetic c:Lcom/google/android/youtube/app/a/a;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/a/a;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/youtube/app/a/c;->c:Lcom/google/android/youtube/app/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const v0, 0x7f09001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/a/c;->a:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f09001c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/a/c;->b:Landroid/widget/TextView;

    .line 83
    return-void
.end method
