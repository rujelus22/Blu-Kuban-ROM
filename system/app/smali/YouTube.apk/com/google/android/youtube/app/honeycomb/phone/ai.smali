.class final Lcom/google/android/youtube/app/honeycomb/phone/ai;
.super Lcom/google/android/youtube/app/remote/an;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/adapter/bl;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/t;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/ImageView;

.field private final d:Landroid/widget/TextView;

.field private e:Lcom/google/android/youtube/app/remote/ap;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;)V
    .registers 5
    .parameter

    .prologue
    .line 710
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-direct {p0}, Lcom/google/android/youtube/app/remote/an;-><init>()V

    .line 711
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->y(Lcom/google/android/youtube/app/honeycomb/phone/t;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->b:Landroid/view/View;

    .line 712
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->b:Landroid/view/View;

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->c:Landroid/widget/ImageView;

    .line 713
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->b:Landroid/view/View;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->d:Landroid/widget/TextView;

    .line 714
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 715
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->e:Lcom/google/android/youtube/app/remote/ap;

    if-nez v0, :cond_c

    .line 728
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 735
    :goto_b
    return-void

    .line 730
    :cond_c
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->e:Lcom/google/android/youtube/app/remote/ap;

    invoke-interface {v1}, Lcom/google/android/youtube/app/remote/ap;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 732
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->c:Landroid/widget/ImageView;

    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 733
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->d:Landroid/widget/TextView;

    const-string v3, "REMOTE"

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_b
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .registers 3
    .parameter

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ai;->b()V

    .line 739
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->b:Landroid/view/View;

    return-object v0
.end method

.method public final a(Lcom/google/android/youtube/app/remote/RemoteControl$State;)V
    .registers 3
    .parameter

    .prologue
    .line 718
    sget-object v0, Lcom/google/android/youtube/app/remote/RemoteControl$State;->CONNECTED:Lcom/google/android/youtube/app/remote/RemoteControl$State;

    if-ne p1, v0, :cond_14

    .line 719
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->B(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/app/remote/RemoteControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/remote/RemoteControl;->q()Lcom/google/android/youtube/app/remote/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->e:Lcom/google/android/youtube/app/remote/ap;

    .line 723
    :goto_10
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/ai;->b()V

    .line 724
    return-void

    .line 721
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ai;->e:Lcom/google/android/youtube/app/remote/ap;

    goto :goto_10
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 743
    const/4 v0, 0x1

    return v0
.end method
