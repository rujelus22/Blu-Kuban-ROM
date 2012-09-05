.class Lcom/sec/android/app/clockpackage/worldclock/WCMain$10;
.super Ljava/lang/Object;
.source "WCMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/worldclock/WCMain;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)V
    .registers 2
    .parameter

    .prologue
    .line 753
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$10;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 755
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$10;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    add-int/lit8 v1, p2, -0x1

    #calls: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->updateDBDST(I)Z
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$1000(Lcom/sec/android/app/clockpackage/worldclock/WCMain;I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$10;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    iget-object v1, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$10;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    const v2, 0x7f0b0098

    invoke-virtual {v1, v2}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 763
    :goto_1d
    return-void

    .line 761
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$10;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    #getter for: Lcom/sec/android/app/clockpackage/worldclock/WCMain;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->access$100(Lcom/sec/android/app/clockpackage/worldclock/WCMain;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 762
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/worldclock/WCMain$10;->this$0:Lcom/sec/android/app/clockpackage/worldclock/WCMain;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/clockpackage/worldclock/WCMain;->removeDialog(I)V

    goto :goto_1d
.end method
