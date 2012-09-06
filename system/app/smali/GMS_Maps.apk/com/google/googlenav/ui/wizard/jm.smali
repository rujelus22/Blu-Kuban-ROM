.class Lcom/google/googlenav/ui/wizard/jm;
.super Lcom/google/googlenav/ui/android/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/jj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/jj;)V
    .registers 2
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jm;->a:Lcom/google/googlenav/ui/wizard/jj;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jm;->a:Lcom/google/googlenav/ui/wizard/jj;

    const/16 v1, 0x1f6

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/googlenav/ui/wizard/jj;->a(IILjava/lang/Object;)Z

    .line 214
    return-void
.end method
