.class Lcom/google/googlenav/wallpaper/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/wallpaper/b;


# direct methods
.method constructor <init>(Lcom/google/googlenav/wallpaper/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/wallpaper/d;->a:Lcom/google/googlenav/wallpaper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/d;->a:Lcom/google/googlenav/wallpaper/b;

    invoke-virtual {v0}, Lcom/google/googlenav/wallpaper/b;->a()V

    return-void
.end method
