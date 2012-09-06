.class LaC/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaC/g;


# direct methods
.method constructor <init>(LaC/g;)V
    .registers 2
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, LaC/h;->a:LaC/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, LaC/h;->a:LaC/g;

    invoke-static {v0}, LaC/g;->a(LaC/g;)Lcom/google/googlenav/ui/wizard/gi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/gi;->i()V

    .line 274
    return-void
.end method
