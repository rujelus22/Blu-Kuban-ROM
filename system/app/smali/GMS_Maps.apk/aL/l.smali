.class public LaL/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/H;


# instance fields
.field private a:Landroid/graphics/drawable/BitmapDrawable;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, LaL/l;->c:Ljava/lang/String;

    .line 48
    iput-object p2, p0, LaL/l;->d:Ljava/lang/String;

    .line 49
    iput p3, p0, LaL/l;->b:I

    .line 50
    iput p4, p0, LaL/l;->e:I

    .line 51
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)LaQ/bE;
    .registers 4
    .parameter

    .prologue
    .line 83
    new-instance v1, LaL/n;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, LaL/n;-><init>(LaL/m;)V

    .line 84
    const v0, 0x7f1001e9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, LaL/n;->a(LaL/n;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 85
    const v0, 0x7f100292

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v1, v0}, LaL/n;->a(LaL/n;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f100294

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaL/n;->a(LaL/n;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 87
    const v0, 0x7f100295

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, LaL/n;->b(LaL/n;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 88
    const v0, 0x7f100291

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-static {v1, v0}, LaL/n;->a(LaL/n;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 89
    return-object v1
.end method

.method public a(Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, LaL/l;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 79
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/g;LaQ/bE;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 55
    check-cast p2, LaL/n;

    .line 57
    iget-object v0, p0, LaL/l;->a:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v0, :cond_37

    .line 59
    invoke-static {p2}, LaL/n;->a(LaL/n;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 60
    invoke-static {p2}, LaL/n;->b(LaL/n;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    invoke-static {p2}, LaL/n;->b(LaL/n;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, LaL/l;->e:I

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    :goto_24
    invoke-static {p2}, LaL/n;->d(LaL/n;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaL/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-static {p2}, LaL/n;->e(LaL/n;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, LaL/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void

    .line 65
    :cond_37
    invoke-static {p2}, LaL/n;->a(LaL/n;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 66
    invoke-static {p2}, LaL/n;->b(LaL/n;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    invoke-static {p2}, LaL/n;->c(LaL/n;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, LaL/l;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_24
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, LaL/l;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 99
    const v0, 0x7f0400e1

    return v0
.end method
