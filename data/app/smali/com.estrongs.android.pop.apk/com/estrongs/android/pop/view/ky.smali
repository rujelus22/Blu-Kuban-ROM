.class Lcom/estrongs/android/pop/view/ky;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/Property;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/Property;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ky;->a:Lcom/estrongs/android/pop/view/Property;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ky;->a:Lcom/estrongs/android/pop/view/Property;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/Property;->a()V

    return-void
.end method
