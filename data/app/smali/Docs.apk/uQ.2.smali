.class LuQ;
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
    .line 106
    iput-object p1, p0, LuQ;->a:LuP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 110
    if-eqz p1, :cond_d

    .line 111
    iget-object v1, p0, LuQ;->a:LuP;

    invoke-virtual {v1, v0}, LuP;->c(Ljava/lang/String;)V

    .line 113
    :cond_d
    return-void
.end method
