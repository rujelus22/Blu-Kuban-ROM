.class public Lcom/estrongs/android/pop/esclasses/ESImageView;
.super Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .registers 3

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1, v0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_10
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
