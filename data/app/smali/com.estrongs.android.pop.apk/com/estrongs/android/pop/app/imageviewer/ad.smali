.class Lcom/estrongs/android/pop/app/imageviewer/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/an;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ad;->a:Lcom/estrongs/android/pop/app/imageviewer/an;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/ad;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/imageviewer/ad;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ad;->a:Lcom/estrongs/android/pop/app/imageviewer/an;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ad;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/imageviewer/ad;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
