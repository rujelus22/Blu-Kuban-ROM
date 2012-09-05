.class Lcom/android/providers/downloads/ui/SecDownloadList$8;
.super Ljava/lang/Object;
.source "SecDownloadList.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/SecDownloadList;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/SecDownloadList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/SecDownloadList;)V
    .registers 2
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$8;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    .line 604
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$8;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    const-class v2, Lcom/android/providers/downloads/ui/saveas/SecDownloadSaveasPreferences;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 605
    iget-object v1, p0, Lcom/android/providers/downloads/ui/SecDownloadList$8;->this$0:Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v1, v0}, Lcom/android/providers/downloads/ui/SecDownloadList;->startActivity(Landroid/content/Intent;)V

    .line 607
    const/4 v0, 0x1

    return v0
.end method
