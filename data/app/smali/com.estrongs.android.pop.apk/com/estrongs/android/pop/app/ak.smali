.class Lcom/estrongs/android/pop/app/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/ak;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/ak;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/ak;)Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/ak;->a:Lcom/estrongs/android/pop/app/AudioPlaylistPlayer;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    new-instance v0, Lcom/estrongs/android/pop/app/al;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/ak;->b:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/al;-><init>(Lcom/estrongs/android/pop/app/ak;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/al;->start()V

    return-void
.end method
