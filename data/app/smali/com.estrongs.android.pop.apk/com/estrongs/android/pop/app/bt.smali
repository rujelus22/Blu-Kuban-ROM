.class Lcom/estrongs/android/pop/app/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bt;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bt;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->b(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bt;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)Lcom/estrongs/android/pop/app/MyListView;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Landroid/widget/ListView;)V

    return-void
.end method
