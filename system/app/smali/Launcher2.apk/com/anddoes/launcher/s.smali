.class final Lcom/anddoes/launcher/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/RadioButton;

.field final synthetic e:Lcom/anddoes/launcher/q;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/q;Landroid/view/View;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 284
    iput-object p1, p0, Lcom/anddoes/launcher/s;->e:Lcom/anddoes/launcher/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object v0, p0, Lcom/anddoes/launcher/s;->b:Landroid/widget/ImageView;

    .line 281
    iput-object v0, p0, Lcom/anddoes/launcher/s;->c:Landroid/widget/TextView;

    .line 282
    iput-object v0, p0, Lcom/anddoes/launcher/s;->d:Landroid/widget/RadioButton;

    .line 285
    iput-object p2, p0, Lcom/anddoes/launcher/s;->a:Landroid/view/View;

    .line 286
    return-void
.end method


# virtual methods
.method final a()Landroid/widget/RadioButton;
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/anddoes/launcher/s;->d:Landroid/widget/RadioButton;

    if-nez v0, :cond_11

    .line 304
    iget-object v0, p0, Lcom/anddoes/launcher/s;->a:Landroid/view/View;

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/anddoes/launcher/s;->d:Landroid/widget/RadioButton;

    .line 306
    :cond_11
    iget-object v0, p0, Lcom/anddoes/launcher/s;->d:Landroid/widget/RadioButton;

    return-object v0
.end method
