.class Lcom/estrongs/android/pop/app/an;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/an;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 v1, 0x1

    if-nez p2, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/an;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    :goto_8
    return-void

    :cond_9
    if-ne p2, v1, :cond_12

    iget-object v0, p0, Lcom/estrongs/android/pop/app/an;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/pop/app/an;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;->e(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;I)V

    goto :goto_8
.end method
