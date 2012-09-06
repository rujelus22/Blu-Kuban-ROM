.class LaQ/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LaQ/ae;

.field final synthetic b:LaQ/ab;


# direct methods
.method constructor <init>(LaQ/ab;LaQ/ae;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, LaQ/ac;->b:LaQ/ab;

    iput-object p2, p0, LaQ/ac;->a:LaQ/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, LaQ/ac;->a:LaQ/ae;

    invoke-static {v0}, LaQ/ae;->a(LaQ/ae;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    .line 84
    iget-object v0, p0, LaQ/ac;->b:LaQ/ab;

    iget-object v1, p0, LaQ/ac;->a:LaQ/ae;

    invoke-static {v0, v1}, LaQ/ab;->a(LaQ/ab;LaQ/ae;)V

    .line 88
    :goto_13
    return-void

    .line 86
    :cond_14
    iget-object v0, p0, LaQ/ac;->b:LaQ/ab;

    iget-object v1, p0, LaQ/ac;->a:LaQ/ae;

    invoke-static {v0, v1}, LaQ/ab;->b(LaQ/ab;LaQ/ae;)V

    goto :goto_13
.end method
