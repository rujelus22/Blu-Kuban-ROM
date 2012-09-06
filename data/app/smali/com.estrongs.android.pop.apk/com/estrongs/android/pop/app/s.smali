.class Lcom/estrongs/android/pop/app/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/s;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/estrongs/android/pop/app/s;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_23

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/estrongs/android/pop/app/s;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_24

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v1, p0, Lcom/estrongs/android/pop/app/s;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/s;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v2}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v2, v0

    invoke-static {v1, v0}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->a(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Ljava/lang/String;)V

    goto :goto_23
.end method
