.class final Lcom/google/android/youtube/app/honeycomb/phone/aj;
.super Lcom/google/android/youtube/app/honeycomb/phone/ab;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/google/android/youtube/app/honeycomb/phone/t;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Ljava/lang/String;II)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/aj;->e:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ab;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;)V

    .line 668
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/aj;->f:Ljava/lang/String;

    .line 669
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aj;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 670
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aj;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 671
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .registers 6
    .parameter

    .prologue
    .line 674
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aj;->e:Lcom/google/android/youtube/app/honeycomb/phone/t;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/aj;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/aj;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/aj;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/aj;->a:Landroid/view/View;

    return-object v0
.end method
