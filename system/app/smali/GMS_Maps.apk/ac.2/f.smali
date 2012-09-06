.class LaC/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaC/e;


# direct methods
.method constructor <init>(LaC/e;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, LaC/f;->a:LaC/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, LaC/f;->a:LaC/e;

    invoke-static {v0}, LaC/e;->a(LaC/e;)Lcom/google/googlenav/ui/wizard/gi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gi;->aa_()V

    .line 47
    return-void
.end method
