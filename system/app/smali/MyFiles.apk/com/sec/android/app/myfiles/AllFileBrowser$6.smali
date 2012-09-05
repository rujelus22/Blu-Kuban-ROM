.class Lcom/sec/android/app/myfiles/AllFileBrowser$6;
.super Ljava/lang/Object;
.source "AllFileBrowser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/AllFileBrowser;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/AllFileBrowser;)V
    .registers 2
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowser$6;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 304
    sget-object v0, Lcom/sec/android/app/myfiles/MainActivity;->sMyThis:Lcom/sec/android/app/myfiles/MainActivity;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/myfiles/MainActivity;->changeViewMode(I)V

    .line 305
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 306
    return-void
.end method
