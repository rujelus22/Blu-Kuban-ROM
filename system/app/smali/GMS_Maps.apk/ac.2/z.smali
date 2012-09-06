.class LaC/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaC/y;


# direct methods
.method constructor <init>(LaC/y;)V
    .registers 2
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, LaC/z;->a:LaC/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 88
    const v0, 0x5245464d

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaC/N;

    .line 91
    invoke-virtual {v0}, LaC/N;->d()Ljava/lang/String;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_16

    .line 93
    const/16 v2, 0x70

    const-string v3, "p"

    invoke-static {v2, v3, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_16
    iget-object v1, p0, LaC/z;->a:LaC/y;

    invoke-static {v1}, LaC/y;->a(LaC/y;)Lcom/google/googlenav/ui/wizard/gi;

    move-result-object v1

    invoke-virtual {v0}, LaC/N;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lcom/google/googlenav/ui/wizard/gi;->a(Ljava/lang/String;Ljava/lang/String;LaC/N;)V

    .line 99
    return-void
.end method
