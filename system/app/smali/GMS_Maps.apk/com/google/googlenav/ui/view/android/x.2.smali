.class final Lcom/google/googlenav/ui/view/android/x;
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
    .line 174
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/x;->a:Lcom/google/googlenav/ui/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/x;->a:Lcom/google/googlenav/ui/g;

    const/16 v1, 0x261

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 178
    const/4 v0, 0x4

    const-string v1, "mb"

    const-string v2, "cn"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/google/googlenav/ui/view/android/v;->a()V

    .line 183
    return-void
.end method
