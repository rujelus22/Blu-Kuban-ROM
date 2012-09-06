.class final Lcom/google/android/youtube/app/honeycomb/phone/ac;
.super Lcom/google/android/youtube/app/honeycomb/phone/ab;
.source "SourceFile"


# instance fields
.field final synthetic e:Lcom/google/android/youtube/app/honeycomb/phone/t;

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Ljava/lang/String;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 686
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ac;->e:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ab;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;)V

    .line 687
    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ac;->h:Ljava/lang/String;

    .line 688
    iput p3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ac;->f:I

    .line 689
    iput p4, p0, Lcom/google/android/youtube/app/honeycomb/phone/ac;->g:I

    .line 690
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .registers 6
    .parameter

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ac;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ac;->f:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 694
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ac;->b:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ac;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 695
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ac;->a:Landroid/view/View;

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 696
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ac;->e:Lcom/google/android/youtube/app/honeycomb/phone/t;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ac;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ac;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/ac;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ac;->a:Landroid/view/View;

    return-object v0
.end method
