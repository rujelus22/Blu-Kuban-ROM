.class Lcom/sec/android/app/myfiles/AllFileBrowserDetail$6;
.super Ljava/lang/Object;
.source "AllFileBrowserDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/AllFileBrowserDetail;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/AllFileBrowserDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/sec/android/app/myfiles/AllFileBrowserDetail$6;->this$0:Lcom/sec/android/app/myfiles/AllFileBrowserDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 297
    sget-object v0, Lcom/sec/android/app/myfiles/MainActivity;->sMyThis:Lcom/sec/android/app/myfiles/MainActivity;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/myfiles/MainActivity;->changeViewMode(I)V

    .line 298
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 299
    return-void
.end method
