.class public LaQ/D;
.super LaQ/y;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/google/googlenav/J;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    new-instance v0, Lcom/google/googlenav/ar;

    invoke-direct {v0, p1, p2}, Lcom/google/googlenav/ar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, p4, v1}, LaQ/y;-><init>(Lcom/google/googlenav/ar;ILcom/google/googlenav/J;Z)V

    .line 28
    return-void
.end method


# virtual methods
.method protected a(LaQ/A;Lcom/google/googlenav/ui/g;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 33
    iget-object v0, p1, LaQ/A;->a:Landroid/view/ViewGroup;

    new-instance v1, LaQ/E;

    invoke-direct {v1, p0, p2}, LaQ/E;-><init>(LaQ/D;Lcom/google/googlenav/ui/g;)V

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/e;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
