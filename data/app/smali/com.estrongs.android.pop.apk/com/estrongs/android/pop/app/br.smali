.class Lcom/estrongs/android/pop/app/br;
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

    iput-object p1, p0, Lcom/estrongs/android/pop/app/br;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/estrongs/android/pop/app/br;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    iget-object v6, v0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    monitor-enter v6

    :try_start_5
    iget-object v0, p0, Lcom/estrongs/android/pop/app/br;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->c:[Ljava/lang/String;

    array-length v0, v0

    if-ge p3, v0, :cond_19

    iget-object v0, p0, Lcom/estrongs/android/pop/app/br;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->b:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :goto_17
    monitor-exit v6

    return-void

    :cond_19
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v1

    const-class v2, Lcom/estrongs/android/pop/view/CreateOAuthNetDisk;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "nettype"

    const-string v2, "baidu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "editServer"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/br;->a:Lcom/estrongs/android/pop/app/OneKeyBackupActivity;

    const v2, 0x12d687

    invoke-virtual {v1, v0, v2}, Lcom/estrongs/android/pop/app/OneKeyBackupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_17

    :catchall_3a
    move-exception v0

    monitor-exit v6
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_3a

    throw v0
.end method
