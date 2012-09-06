.class final Lcom/anddoes/launcher/kn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/SwipeActionsActivity;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/SwipeActionsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/kn;->a:Lcom/anddoes/launcher/SwipeActionsActivity;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    check-cast p1, Landroid/widget/Spinner;

    .line 135
    iget-object v0, p0, Lcom/anddoes/launcher/kn;->a:Lcom/anddoes/launcher/SwipeActionsActivity;

    invoke-static {v0, p1, p3}, Lcom/anddoes/launcher/SwipeActionsActivity;->a(Lcom/anddoes/launcher/SwipeActionsActivity;Landroid/widget/Spinner;I)V

    .line 136
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    return-void
.end method
