.class Lcom/google/googlenav/ui/wizard/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/e;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/e;)V
    .registers 2
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/h;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/h;->a:Lcom/google/googlenav/ui/wizard/e;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/e;->a(Lcom/google/googlenav/ui/wizard/e;)Lcom/google/googlenav/ui/wizard/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/q;->f()V

    .line 179
    return-void
.end method
