.class Lcom/estrongs/android/pop/popupwindowwitharrow/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/b;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/popupwindowwitharrow/b;->a:Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/popupwindowwitharrow/PopupWindow;->d()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
