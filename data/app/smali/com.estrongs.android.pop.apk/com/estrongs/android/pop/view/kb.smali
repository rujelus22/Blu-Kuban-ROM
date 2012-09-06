.class Lcom/estrongs/android/pop/view/kb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

.field private final synthetic b:Lcom/estrongs/android/pop/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;Lcom/estrongs/android/pop/c;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/kb;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/kb;->b:Lcom/estrongs/android/pop/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/kb;->b:Lcom/estrongs/android/pop/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->c(I)V

    return-void
.end method
