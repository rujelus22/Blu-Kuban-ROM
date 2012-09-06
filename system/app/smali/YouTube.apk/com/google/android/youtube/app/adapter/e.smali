.class public final Lcom/google/android/youtube/app/adapter/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public final b:Landroid/widget/TextView;

.field final synthetic c:Lcom/google/android/youtube/app/adapter/c;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/adapter/c;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/youtube/app/adapter/e;->c:Lcom/google/android/youtube/app/adapter/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const v0, 0x7f080023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/e;->a:Landroid/widget/ImageView;

    .line 87
    const v0, 0x7f080024

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/adapter/e;->b:Landroid/widget/TextView;

    .line 88
    return-void
.end method
