.class Lcom/estrongs/android/pop/app/imageviewer/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/estrongs/android/pop/app/imageviewer/am;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/aj;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/aj;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V
    .registers 5

    if-eqz p2, :cond_9

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/aj;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/aj;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1, p2}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/estrongs/android/pop/app/imageviewer/gallery/e;)V

    :cond_9
    return-void
.end method
