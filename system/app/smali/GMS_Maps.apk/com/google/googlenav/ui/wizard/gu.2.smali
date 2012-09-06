.class Lcom/google/googlenav/ui/wizard/gU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/gT;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/gT;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/gU;->a:Lcom/google/googlenav/ui/wizard/gT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/gU;->a:Lcom/google/googlenav/ui/wizard/gT;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/gT;->a(Lcom/google/googlenav/ui/wizard/gT;)Lcom/google/googlenav/ui/wizard/gL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/gL;->a()V

    .line 102
    return-void
.end method
