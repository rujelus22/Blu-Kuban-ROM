.class public Lcom/google/googlenav/ui/android/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private final b:Landroid/text/SpannableStringBuilder;

.field private final c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/aj;->a:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/aj;->b:Landroid/text/SpannableStringBuilder;

    .line 54
    iput-object p1, p0, Lcom/google/googlenav/ui/android/aj;->c:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aj;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 89
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/aj;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 90
    iget-object v1, p0, Lcom/google/googlenav/ui/android/aj;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v1, p0, Lcom/google/googlenav/ui/android/aj;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aj;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 94
    :cond_1e
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Lcom/google/googlenav/ui/android/aj;
    .registers 3
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/aj;->c()V

    .line 78
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/google/googlenav/ui/android/aj;
    .registers 3
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aj;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 65
    return-object p0
.end method

.method public a()Ljava/util/List;
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/aj;->c()V

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aj;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(Ljava/lang/Object;III)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aj;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 102
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/googlenav/ui/android/aj;->b:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    return v0
.end method
