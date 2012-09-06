.class LuR;
.super Ljava/lang/Object;
.source "ColorPallete.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:LuP;


# direct methods
.method constructor <init>(LuP;)V
    .registers 2
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, LuR;->a:LuP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, LuR;->a:LuP;

    invoke-static {v0}, LuP;->a(LuP;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 186
    iget-object v0, p0, LuR;->a:LuP;

    invoke-static {v0}, LuP;->a(LuP;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 188
    :cond_11
    return-void
.end method
