.class LaQ/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 248
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f100023

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f10001a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0, v1, v2}, LaQ/bg;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 252
    return-void
.end method

.method private constructor <init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p1, p0, LaQ/bg;->a:Landroid/view/View;

    .line 257
    iput-object p2, p0, LaQ/bg;->b:Landroid/widget/TextView;

    .line 258
    iput-object p3, p0, LaQ/bg;->c:Landroid/widget/TextView;

    .line 259
    iput-object p4, p0, LaQ/bg;->d:Landroid/widget/ImageView;

    .line 260
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, LaQ/bg;->a:Landroid/view/View;

    return-object v0
.end method

.method public b()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, LaQ/bg;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public c()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, LaQ/bg;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public d()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, LaQ/bg;->d:Landroid/widget/ImageView;

    return-object v0
.end method
