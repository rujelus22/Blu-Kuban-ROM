.class Lcom/estrongs/android/pop/app/dr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/PopVideoPlayer;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/dr;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/dr;->a:Lcom/estrongs/android/pop/app/PopVideoPlayer;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->showDialog(I)V

    return v1
.end method
