.class Lcom/google/googlenav/ui/wizard/fr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fp;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fp;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/fr;->a:Lcom/google/googlenav/ui/wizard/fp;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fp;->a:Lcom/google/googlenav/ui/wizard/fo;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/fo;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->g()V

    .line 118
    return-void
.end method
