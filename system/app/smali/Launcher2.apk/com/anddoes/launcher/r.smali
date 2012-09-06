.class final Lcom/anddoes/launcher/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/q;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/q;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/r;->a:Lcom/anddoes/launcher/q;

    iput p2, p0, Lcom/anddoes/launcher/r;->b:I

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/anddoes/launcher/r;->a:Lcom/anddoes/launcher/q;

    invoke-static {v0}, Lcom/anddoes/launcher/q;->a(Lcom/anddoes/launcher/q;)Lcom/anddoes/launcher/AppPickerActivity;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/r;->b:I

    invoke-static {v0, v1}, Lcom/anddoes/launcher/AppPickerActivity;->a(Lcom/anddoes/launcher/AppPickerActivity;I)V

    .line 271
    const v0, 0x7f080006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 272
    return-void
.end method
