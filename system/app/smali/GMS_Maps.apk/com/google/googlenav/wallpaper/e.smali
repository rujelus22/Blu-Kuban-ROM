.class Lcom/google/googlenav/wallpaper/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/wallpaper/b;


# direct methods
.method constructor <init>(Lcom/google/googlenav/wallpaper/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/wallpaper/e;->a:Lcom/google/googlenav/wallpaper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/wallpaper/e;->a:Lcom/google/googlenav/wallpaper/b;

    iget-object v0, v0, Lcom/google/googlenav/wallpaper/b;->a:Lcom/google/googlenav/wallpaper/MapWallpaper;

    const-string v1, "wallpaper_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/wallpaper/MapWallpaper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "zoom_level"

    iget-object v2, p0, Lcom/google/googlenav/wallpaper/e;->a:Lcom/google/googlenav/wallpaper/b;

    invoke-static {v2}, Lcom/google/googlenav/wallpaper/b;->a(Lcom/google/googlenav/wallpaper/b;)LaJ/p;

    move-result-object v2

    invoke-virtual {v2}, LaJ/p;->c()LaJ/Y;

    move-result-object v2

    invoke-virtual {v2}, LaJ/Y;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lag/b;->a(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method
