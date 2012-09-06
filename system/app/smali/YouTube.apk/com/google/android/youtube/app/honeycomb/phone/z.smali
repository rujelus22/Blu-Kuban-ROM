.class final Lcom/google/android/youtube/app/honeycomb/phone/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/adapter/bl;
.implements Lcom/google/android/youtube/core/async/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/t;

.field private final b:Landroid/view/View;

.field private final c:Landroid/widget/TextView;

.field private final d:Lcom/google/android/youtube/app/adapter/i;

.field private e:Lcom/google/android/youtube/core/model/UserProfile;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/content/Context;Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 591
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 592
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->y(Lcom/google/android/youtube/app/honeycomb/phone/t;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040032

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->b:Landroid/view/View;

    .line 593
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->b:Landroid/view/View;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->c:Landroid/widget/TextView;

    .line 594
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->b:Landroid/view/View;

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 595
    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 596
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/aa;

    iget-object v3, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->b:Landroid/view/View;

    const v4, 0x7f080023

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/app/honeycomb/phone/aa;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/z;Landroid/content/Context;Landroid/view/View;ILcom/google/android/youtube/app/honeycomb/phone/t;)V

    iput-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->d:Lcom/google/android/youtube/app/adapter/i;

    .line 602
    if-eqz p3, :cond_4f

    .line 603
    invoke-static {p1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->u(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/core/b/ae;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/app/honeycomb/phone/t;->a:Lcom/google/android/youtube/app/honeycomb/phone/YouTubeActivity;

    invoke-static {v1, p0}, Lcom/google/android/youtube/core/async/c;->a(Landroid/app/Activity;Lcom/google/android/youtube/core/async/l;)Lcom/google/android/youtube/core/async/c;

    move-result-object v1

    invoke-interface {v0, p3, v1}, Lcom/google/android/youtube/core/b/ae;->a(Lcom/google/android/youtube/core/model/UserAuth;Lcom/google/android/youtube/core/async/l;)V

    .line 605
    :cond_4f
    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/app/honeycomb/phone/z;)Lcom/google/android/youtube/core/model/UserProfile;
    .registers 2
    .parameter

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->e:Lcom/google/android/youtube/core/model/UserProfile;

    return-object v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->b:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->c:Landroid/widget/TextView;

    const-string v3, "ACCOUNT"

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/view/View;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->e:Lcom/google/android/youtube/core/model/UserProfile;

    if-eqz v0, :cond_20

    .line 630
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->e:Lcom/google/android/youtube/core/model/UserProfile;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserProfile;->displayUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->d:Lcom/google/android/youtube/app/adapter/i;

    iget v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/adapter/i;->a(ILjava/lang/Object;)Landroid/view/View;

    .line 633
    :cond_20
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .registers 4
    .parameter

    .prologue
    .line 608
    iput p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->f:I

    .line 609
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->z(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/core/model/UserAuth;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 610
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/z;->b()V

    .line 615
    :goto_13
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->b:Landroid/view/View;

    return-object v0

    .line 613
    :cond_16
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->c:Landroid/widget/TextView;

    const v1, 0x7f0b00d8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_13
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 582
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 582
    check-cast p2, Lcom/google/android/youtube/core/model/UserProfile;

    iput-object p2, p0, Lcom/google/android/youtube/app/honeycomb/phone/z;->e:Lcom/google/android/youtube/core/model/UserProfile;

    invoke-direct {p0}, Lcom/google/android/youtube/app/honeycomb/phone/z;->b()V

    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 636
    const/4 v0, 0x1

    return v0
.end method
