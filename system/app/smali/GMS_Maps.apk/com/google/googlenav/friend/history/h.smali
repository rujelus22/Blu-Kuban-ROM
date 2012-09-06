.class Lcom/google/googlenav/friend/history/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/dialog/aN;


# instance fields
.field final synthetic a:LaL/l;

.field final synthetic b:Lcom/google/googlenav/friend/history/g;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/history/g;LaL/l;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/googlenav/friend/history/h;->b:Lcom/google/googlenav/friend/history/g;

    iput-object p2, p0, Lcom/google/googlenav/friend/history/h;->a:LaL/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 103
    return-void
.end method

.method public a(Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 3
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/googlenav/friend/history/h;->a:LaL/l;

    invoke-virtual {v0, p1}, LaL/l;->a(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 97
    iget-object v0, p0, Lcom/google/googlenav/friend/history/h;->b:Lcom/google/googlenav/friend/history/g;

    invoke-static {v0}, Lcom/google/googlenav/friend/history/g;->a(Lcom/google/googlenav/friend/history/g;)Lcom/google/googlenav/ui/view/android/L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/L;->notifyDataSetChanged()V

    .line 98
    return-void
.end method
