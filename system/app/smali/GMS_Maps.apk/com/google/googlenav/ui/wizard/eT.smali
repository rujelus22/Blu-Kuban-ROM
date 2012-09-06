.class Lcom/google/googlenav/ui/wizard/et;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Law/c;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/es;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/es;Law/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/et;->b:Lcom/google/googlenav/ui/wizard/es;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/et;->a:Law/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 230
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/et;->b:Lcom/google/googlenav/ui/wizard/es;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/es;->a:Lcom/google/googlenav/ui/wizard/eq;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/eq;->a()V

    .line 231
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/et;->b:Lcom/google/googlenav/ui/wizard/es;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/es;->a:Lcom/google/googlenav/ui/wizard/eq;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/et;->a:Law/c;

    invoke-virtual {v1}, Law/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/et;->a:Law/c;

    invoke-virtual {v2}, Law/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/wizard/eq;->a(Lcom/google/googlenav/ui/wizard/eq;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/et;->b:Lcom/google/googlenav/ui/wizard/es;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/es;->a:Lcom/google/googlenav/ui/wizard/eq;

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/googlenav/ui/wizard/eq;->g:I

    .line 233
    return-void
.end method
