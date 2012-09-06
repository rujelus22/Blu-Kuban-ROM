.class Lcom/estrongs/android/pop/clipboardview/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/clipboardview/e;->a:Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;Lcom/estrongs/android/pop/clipboardview/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/clipboardview/e;-><init>(Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/e;->a:Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;

    invoke-static {v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->a(Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/e;->a:Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;

    invoke-static {v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->b(Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/e;->a:Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->b()V

    goto :goto_8

    :cond_17
    iget-object v0, p0, Lcom/estrongs/android/pop/clipboardview/e;->a:Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/clipboardview/SlidingDrawer;->a()V

    goto :goto_8
.end method
