.class final Lcom/anddoes/launcher/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/GroupConfigActivity;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/GroupConfigActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/dh;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    .line 143
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
    .line 147
    iget-object v0, p0, Lcom/anddoes/launcher/dh;->a:Lcom/anddoes/launcher/GroupConfigActivity;

    invoke-static {v0, p3}, Lcom/anddoes/launcher/GroupConfigActivity;->a(Lcom/anddoes/launcher/GroupConfigActivity;I)V

    .line 149
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .parameter

    .prologue
    .line 153
    return-void
.end method
