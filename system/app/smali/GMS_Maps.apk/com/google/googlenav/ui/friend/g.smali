.class Lcom/google/googlenav/ui/friend/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/friend/a;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/friend/a;)V
    .registers 2
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/google/googlenav/ui/friend/g;->a:Lcom/google/googlenav/ui/friend/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/googlenav/ui/friend/g;->a:Lcom/google/googlenav/ui/friend/a;

    invoke-static {v0}, Lcom/google/googlenav/ui/friend/a;->b(Lcom/google/googlenav/ui/friend/a;)Landroid/widget/QuickContactBadge;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/QuickContactBadge;->performClick()Z

    .line 286
    return-void
.end method
