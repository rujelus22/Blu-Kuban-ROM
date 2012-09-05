.class Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;
.super Ljava/lang/Object;
.source "ManagedFileBrowserThumb.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;->showOverwriteDialog(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1278
    iput-object p1, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;

    iput-object p2, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;->val$name:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1280
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;->access$2800(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1281
    .local v0, b:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;->this$0:Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;

    #getter for: Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;->access$2800(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1282
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f030003

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1283
    .local v2, mCustomDialog:Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1285
    const v4, 0x7f0c000b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    invoke-static {v4}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2902(Landroid/widget/CheckBox;)Landroid/widget/CheckBox;

    .line 1286
    invoke-static {}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb;->access$2900()Landroid/widget/CheckBox;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1$1;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1292
    const v4, 0x7f0c0009

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1293
    .local v3, mFileName:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    const v4, 0x7f09003c

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1296
    const v4, 0x7f09000e

    new-instance v5, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1$2;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1304
    const v4, 0x7f09000f

    new-instance v5, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1$3;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1312
    new-instance v4, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1$4;-><init>(Lcom/sec/android/app/myfiles/ManagedFileBrowserThumb$FileOperationThread$1;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1321
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1322
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1323
    return-void
.end method
