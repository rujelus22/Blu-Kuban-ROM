.class Lcom/estrongs/android/pop/view/hs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/GuideActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/GuideActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/hs;->a:Lcom/estrongs/android/pop/view/GuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/hs;->a:Lcom/estrongs/android/pop/view/GuideActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/GuideActivity;->finish()V

    return-void
.end method
