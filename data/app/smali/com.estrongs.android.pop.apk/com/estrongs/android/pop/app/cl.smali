.class Lcom/estrongs/android/pop/app/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/ck;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/ck;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/cl;->a:Lcom/estrongs/android/pop/app/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cl;->a:Lcom/estrongs/android/pop/app/ck;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/estrongs/android/pop/app/ck;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/cl;->a:Lcom/estrongs/android/pop/app/ck;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/ck;->dismiss()V

    return-void
.end method
