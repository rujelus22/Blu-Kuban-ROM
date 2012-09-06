.class Lcom/estrongs/android/pop/view/gw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/gv;

.field private final synthetic b:Landroid/widget/ImageView;

.field private final synthetic c:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/gv;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iput-object p1, p0, Lcom/estrongs/android/pop/view/gw;->a:Lcom/estrongs/android/pop/view/gv;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/gw;->b:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/estrongs/android/pop/view/gw;->c:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/gw;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/gw;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
