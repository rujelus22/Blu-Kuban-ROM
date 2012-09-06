.class Lcom/estrongs/android/pop/app/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/app/bs;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bs;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)[Z

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/bs;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->a(Lcom/estrongs/android/pop/app/OneKeyBackupActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, p3

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    :goto_11
    aput-boolean v0, v1, p3

    return-void

    :cond_14
    const/4 v0, 0x1

    goto :goto_11
.end method
