.class final Lcom/google/android/youtube/core/player/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/SharedPreferences;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/youtube/core/player/al;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/player/al;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/youtube/core/player/ao;->c:Lcom/google/android/youtube/core/player/al;

    iput-object p2, p0, Lcom/google/android/youtube/core/player/ao;->a:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/google/android/youtube/core/player/ao;->b:Ljava/lang/String;

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

    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ao;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/ao;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ao;->c:Lcom/google/android/youtube/core/player/al;

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/player/al;->a(Lcom/google/android/youtube/core/player/al;Z)Z

    .line 55
    iget-object v0, p0, Lcom/google/android/youtube/core/player/ao;->c:Lcom/google/android/youtube/core/player/al;

    invoke-static {v0}, Lcom/google/android/youtube/core/player/al;->a(Lcom/google/android/youtube/core/player/al;)Lcom/google/android/youtube/core/player/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/player/ao;->c:Lcom/google/android/youtube/core/player/al;

    invoke-interface {v0}, Lcom/google/android/youtube/core/player/ap;->t()V

    .line 56
    return-void
.end method
