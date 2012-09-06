.class final Lcom/twitter/android/client/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/client/b;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/b;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/client/c;->a:Lcom/twitter/android/client/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x1

    const-string v0, "sound_effects"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Lcom/twitter/android/client/b;

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/twitter/android/client/b;->e:Z

    :cond_11
    :goto_11
    return-void

    :cond_12
    const-string v0, "font_size"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Lcom/twitter/android/client/b;

    const-string v1, "font_size"

    const-string v2, "14"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/twitter/android/client/b;->f:F

    goto :goto_11

    :cond_2b
    const-string v0, "location"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/twitter/android/client/c;->a:Lcom/twitter/android/client/b;

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/twitter/android/client/b;->h:Z

    goto :goto_11
.end method
