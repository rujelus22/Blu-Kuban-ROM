.class LaM/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:LaM/I;


# direct methods
.method constructor <init>(LaM/I;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, LaM/J;->c:LaM/I;

    iput p2, p0, LaM/J;->a:I

    iput p3, p0, LaM/J;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, LaM/J;->c:LaM/I;

    invoke-static {v0}, LaM/I;->a(LaM/I;)LaM/O;

    move-result-object v0

    iget v1, p0, LaM/J;->a:I

    iget v2, p0, LaM/J;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, LaM/O;->a(IILjava/lang/Object;)Z

    .line 154
    return-void
.end method
