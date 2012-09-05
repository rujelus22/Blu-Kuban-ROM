.class final Lcom/google/android/youtube/app/ui/aq;
.super Lcom/google/android/youtube/core/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/ui/PrivacySpinner;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/PrivacySpinner;)V
    .registers 3
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/aq;->a:Lcom/google/android/youtube/app/ui/PrivacySpinner;

    invoke-direct {p0}, Lcom/google/android/youtube/core/a/a;-><init>()V

    .line 56
    invoke-static {}, Lcom/google/android/youtube/core/model/Video$Privacy;->values()[Lcom/google/android/youtube/core/model/Video$Privacy;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/ui/aq;->a(Ljava/lang/Iterable;)V

    .line 57
    return-void
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    if-nez p2, :cond_23

    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->a:Lcom/google/android/youtube/app/ui/PrivacySpinner;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/PrivacySpinner;->a(Lcom/google/android/youtube/app/ui/PrivacySpinner;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 77
    new-instance v0, Lcom/google/android/youtube/app/ui/ar;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/app/ui/ar;-><init>(Lcom/google/android/youtube/app/ui/aq;Landroid/view/View;)V

    .line 78
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 82
    :goto_19
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/aq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/ar;->a(Lcom/google/android/youtube/core/model/Video$Privacy;)V

    .line 83
    return-object p2

    .line 80
    :cond_23
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/ar;

    move-object v1, v0

    goto :goto_19
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    if-nez p2, :cond_23

    .line 62
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/aq;->a:Lcom/google/android/youtube/app/ui/PrivacySpinner;

    invoke-static {v0}, Lcom/google/android/youtube/app/ui/PrivacySpinner;->a(Lcom/google/android/youtube/app/ui/PrivacySpinner;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance v0, Lcom/google/android/youtube/app/ui/as;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/app/ui/as;-><init>(Lcom/google/android/youtube/app/ui/aq;Landroid/view/View;)V

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v0

    .line 68
    :goto_19
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/app/ui/aq;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Privacy;

    invoke-virtual {v1, v0}, Lcom/google/android/youtube/app/ui/as;->a(Lcom/google/android/youtube/core/model/Video$Privacy;)V

    .line 69
    return-object p2

    .line 66
    :cond_23
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/ui/as;

    move-object v1, v0

    goto :goto_19
.end method
