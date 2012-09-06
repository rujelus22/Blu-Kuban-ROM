.class public final Lcom/google/android/youtube/app/adapter/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/youtube/app/ui/StackButton;

.field public final b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const v0, 0x7f0800fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/StackButton;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bk;->a:Lcom/google/android/youtube/app/ui/StackButton;

    .line 109
    const v0, 0x7f0800b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/bk;->b:Landroid/widget/ImageView;

    .line 110
    return-void
.end method
