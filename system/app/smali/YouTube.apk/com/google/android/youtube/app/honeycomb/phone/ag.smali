.class final Lcom/google/android/youtube/app/honeycomb/phone/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/adapter/bl;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/t;

.field private final b:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ag;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->y(Lcom/google/android/youtube/app/honeycomb/phone/t;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ag;->b:Landroid/view/View;

    .line 754
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ag;->b:Landroid/view/View;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 755
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 756
    new-instance v1, Lcom/google/android/youtube/app/ui/dl;

    iget-object v2, p1, Lcom/google/android/youtube/app/honeycomb/phone/t;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-direct {v1, v2}, Lcom/google/android/youtube/app/ui/dl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 757
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ag;->b:Landroid/view/View;

    return-object v0
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 764
    const/4 v0, 0x0

    return v0
.end method
