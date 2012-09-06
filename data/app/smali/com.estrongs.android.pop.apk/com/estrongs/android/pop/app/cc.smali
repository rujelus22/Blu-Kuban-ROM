.class Lcom/estrongs/android/pop/app/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/cb;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/cb;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cc;->a:Lcom/estrongs/android/pop/app/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cc;->a:Lcom/estrongs/android/pop/app/cb;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/cb;->a(Lcom/estrongs/android/pop/app/cb;)Lcom/estrongs/android/pop/app/ca;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/ca;->f:Z

    return-void
.end method
