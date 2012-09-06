.class abstract Lcom/google/android/youtube/app/honeycomb/phone/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/adapter/bl;


# instance fields
.field protected final a:Landroid/view/View;

.field protected final b:Landroid/widget/ImageView;

.field protected final c:Landroid/widget/TextView;

.field final synthetic d:Lcom/google/android/youtube/app/honeycomb/phone/t;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;)V
    .registers 5
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ab;->d:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 648
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->y(Lcom/google/android/youtube/app/honeycomb/phone/t;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ab;->a:Landroid/view/View;

    .line 649
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ab;->a:Landroid/view/View;

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ab;->b:Landroid/widget/ImageView;

    .line 650
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ab;->a:Landroid/view/View;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ab;->c:Landroid/widget/TextView;

    .line 651
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ab;->c:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->A(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/core/j;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/youtube/core/j;->a()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 652
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 655
    const/4 v0, 0x1

    return v0
.end method
