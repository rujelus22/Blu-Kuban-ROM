.class Lcom/estrongs/android/pop/view/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/view/CreateNetDiskActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/ae;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/view/ae;->a:Lcom/estrongs/android/pop/view/CreateNetDiskActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/CreateNetDiskActivity;->finish()V

    return-void
.end method
