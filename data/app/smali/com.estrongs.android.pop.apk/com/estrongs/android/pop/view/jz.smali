.class Lcom/estrongs/android/pop/view/jz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

.field private final synthetic b:Lcom/estrongs/android/pop/c;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;Lcom/estrongs/android/pop/c;)V
    .registers 3

    iput-object p1, p0, Lcom/estrongs/android/pop/view/jz;->a:Lcom/estrongs/android/pop/view/PopPreferenceActivity;

    iput-object p2, p0, Lcom/estrongs/android/pop/view/jz;->b:Lcom/estrongs/android/pop/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/jz;->b:Lcom/estrongs/android/pop/c;

    invoke-virtual {v0, p2}, Lcom/estrongs/android/pop/c;->b(I)V

    return-void
.end method
