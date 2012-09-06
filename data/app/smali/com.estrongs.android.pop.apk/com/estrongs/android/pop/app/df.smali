.class Lcom/estrongs/android/pop/app/df;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/df;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/df;->a:Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;->h(Lcom/estrongs/android/pop/app/PopRemoteImageBrowser;)V

    invoke-static {}, Lcom/estrongs/android/pop/app/dh;->a()V

    return-void
.end method
