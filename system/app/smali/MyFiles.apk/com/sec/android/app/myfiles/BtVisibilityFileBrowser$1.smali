.class Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$1;
.super Ljava/lang/Object;
.source "BtVisibilityFileBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser$1;->this$0:Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/BtVisibilityFileBrowser;->finish()V

    .line 101
    return-void
.end method
