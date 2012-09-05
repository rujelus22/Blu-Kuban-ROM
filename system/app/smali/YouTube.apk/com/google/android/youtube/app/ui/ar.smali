.class final Lcom/google/android/youtube/app/ui/ar;
.super Lcom/google/android/youtube/app/ui/as;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/TextView;

.field final synthetic b:Lcom/google/android/youtube/app/ui/aq;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/app/ui/aq;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/youtube/app/ui/ar;->b:Lcom/google/android/youtube/app/ui/aq;

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/google/android/youtube/app/ui/as;-><init>(Lcom/google/android/youtube/app/ui/aq;Landroid/view/View;)V

    .line 115
    const v0, 0x7f090044

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/ar;->a:Landroid/widget/TextView;

    .line 116
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/Video$Privacy;)V
    .registers 4
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/google/android/youtube/app/ui/as;->a(Lcom/google/android/youtube/core/model/Video$Privacy;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/app/ui/ar;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 122
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/ar;->a:Landroid/widget/TextView;

    invoke-static {}, Lcom/google/android/youtube/app/ui/PrivacySpinner;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 124
    :cond_1a
    return-void
.end method
