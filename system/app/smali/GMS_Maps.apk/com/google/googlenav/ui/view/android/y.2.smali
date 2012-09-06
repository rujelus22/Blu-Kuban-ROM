.class final Lcom/google/googlenav/ui/view/android/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/g;)V
    .registers 2
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/y;->a:Lcom/google/googlenav/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/y;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0xf2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 202
    const/4 v0, 0x4

    const-string v1, "mb"

    const-string v2, "ct"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/google/googlenav/ui/view/android/v;->a()V

    .line 207
    return-void
.end method
