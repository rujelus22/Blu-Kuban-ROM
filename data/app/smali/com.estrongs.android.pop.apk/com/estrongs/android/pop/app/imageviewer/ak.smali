.class Lcom/estrongs/android/pop/app/imageviewer/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final synthetic a:Lcom/estrongs/android/pop/app/imageviewer/an;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/app/imageviewer/ak;->a:Lcom/estrongs/android/pop/app/imageviewer/an;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/imageviewer/ak;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/app/imageviewer/ak;->a:Lcom/estrongs/android/pop/app/imageviewer/an;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/imageviewer/ak;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/estrongs/android/pop/app/imageviewer/x;->a(Lcom/estrongs/android/pop/app/imageviewer/an;Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method
