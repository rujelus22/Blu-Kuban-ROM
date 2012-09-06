.class Lcom/google/googlenav/ui/view/android/aP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/aL;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aL;Landroid/widget/CheckBox;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/aP;->b:Lcom/google/googlenav/ui/view/android/aL;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/aP;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/aP;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 170
    return-void
.end method
