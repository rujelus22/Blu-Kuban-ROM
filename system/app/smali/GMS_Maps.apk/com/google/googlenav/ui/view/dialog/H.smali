.class Lcom/google/googlenav/ui/view/dialog/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/a;)V
    .registers 2
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/h;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/h;->a:Lcom/google/googlenav/ui/view/dialog/a;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/a;->d(Lcom/google/googlenav/ui/view/dialog/a;)V

    .line 363
    return-void
.end method
