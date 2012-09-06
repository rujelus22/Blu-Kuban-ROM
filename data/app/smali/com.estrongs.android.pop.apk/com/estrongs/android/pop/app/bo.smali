.class Lcom/estrongs/android/pop/app/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ImageBrowser;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ImageBrowser;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bo;->a:Lcom/estrongs/android/pop/app/ImageBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x3e8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_9

    :goto_5
    invoke-static {}, Lcom/estrongs/android/pop/view/mh;->a()V

    return-void

    :catch_9
    move-exception v0

    goto :goto_5
.end method
