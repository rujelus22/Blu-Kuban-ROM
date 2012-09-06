.class public Lcom/estrongs/android/pop/app/r;
.super Landroid/os/Binder;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/AudioPlayerService;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/r;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method a()Lcom/estrongs/android/pop/app/AudioPlayerService;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/r;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    return-object v0
.end method
