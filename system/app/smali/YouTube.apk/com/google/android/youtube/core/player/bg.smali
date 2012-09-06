.class final Lcom/google/android/youtube/core/player/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/youtube/core/player/bd;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/bd;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/google/android/youtube/core/player/bg;->c:Lcom/google/android/youtube/core/player/bd;

    iput-object p2, p0, Lcom/google/android/youtube/core/player/bg;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/google/android/youtube/core/player/bg;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bg;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/bg;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bg;->c:Lcom/google/android/youtube/core/player/bd;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/bd;->a(Lcom/google/android/youtube/core/player/bd;Z)Z

    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/core/player/bg;->c:Lcom/google/android/youtube/core/player/bd;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/bd;->a(Lcom/google/android/youtube/core/player/bd;)Lcom/google/android/youtube/core/player/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/bg;->c:Lcom/google/android/youtube/core/player/bd;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/bh;->v()V

    .line 57
    return-void
.end method
