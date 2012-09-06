.class Lcom/estrongs/android/pop/view/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/aj;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/aj;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ak;->a:Lcom/estrongs/android/pop/view/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
