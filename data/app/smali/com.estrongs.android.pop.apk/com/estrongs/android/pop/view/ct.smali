.class Lcom/estrongs/android/pop/view/ct;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/cr;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/cr;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ct;->a:Lcom/estrongs/android/pop/view/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
