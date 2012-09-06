.class Lcom/google/googlenav/ui/wizard/hF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hE;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hE;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hF;->a:Lcom/google/googlenav/ui/wizard/hE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hF;->a:Lcom/google/googlenav/ui/wizard/hE;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/hE;->a(Lcom/google/googlenav/ui/wizard/hE;)V

    .line 45
    return-void
.end method
