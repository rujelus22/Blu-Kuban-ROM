.class Lcom/google/googlenav/wallpaper/c;
.super Landroid/view/View;


# instance fields
.field final synthetic a:Lcom/google/googlenav/wallpaper/b;


# direct methods
.method constructor <init>(Lcom/google/googlenav/wallpaper/b;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/wallpaper/c;->a:Lcom/google/googlenav/wallpaper/b;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public postInvalidate()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/c;->a:Lcom/google/googlenav/wallpaper/b;

    invoke-virtual {v0}, Lcom/google/googlenav/wallpaper/b;->a()V

    return-void
.end method
