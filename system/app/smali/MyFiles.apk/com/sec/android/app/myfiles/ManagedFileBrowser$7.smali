.class Lcom/sec/android/app/myfiles/ManagedFileBrowser$7;
.super Ljava/lang/Object;
.source "ManagedFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowser;->showUnableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 681
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$7;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowser$7;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowser;

    invoke-virtual {v0}, Lcom/sec/android/app/myfiles/ManagedFileBrowser;->finish()V

    .line 684
    return-void
.end method
