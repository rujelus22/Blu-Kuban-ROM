.class LaQ/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaQ/bE;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/util/List;

.field private final c:Landroid/view/View;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/util/List;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-object p1, p0, LaQ/bh;->a:Landroid/view/View;

    .line 208
    iput-object p2, p0, LaQ/bh;->b:Ljava/util/List;

    .line 209
    iput-object p3, p0, LaQ/bh;->c:Landroid/view/View;

    .line 210
    iput-object p4, p0, LaQ/bh;->d:Landroid/widget/TextView;

    .line 211
    iput-object p5, p0, LaQ/bh;->e:Landroid/widget/ImageView;

    .line 212
    iput-object p6, p0, LaQ/bh;->f:Landroid/widget/ImageView;

    .line 213
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, LaQ/bh;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Landroid/view/View;
    .registers 2

    .prologue
    .line 224
    iget-object v0, p0, LaQ/bh;->c:Landroid/view/View;

    return-object v0
.end method

.method public c()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 228
    iget-object v0, p0, LaQ/bh;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public d()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, LaQ/bh;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public e()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, LaQ/bh;->f:Landroid/widget/ImageView;

    return-object v0
.end method
