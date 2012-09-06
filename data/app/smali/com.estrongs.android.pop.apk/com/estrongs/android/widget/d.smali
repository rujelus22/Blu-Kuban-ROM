.class Lcom/estrongs/android/widget/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/a;


# direct methods
.method constructor <init>(Lcom/estrongs/android/widget/a;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/widget/d;->a:Lcom/estrongs/android/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/widget/d;->a:Lcom/estrongs/android/widget/a;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/a;->dismiss()V

    return-void
.end method
