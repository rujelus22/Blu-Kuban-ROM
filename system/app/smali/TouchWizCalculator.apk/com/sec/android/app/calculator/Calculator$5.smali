.class Lcom/sec/android/app/calculator/Calculator$5;
.super Ljava/lang/Object;
.source "Calculator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/calculator/Calculator;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/calculator/Calculator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/calculator/Calculator;)V
    .registers 2
    .parameter

    .prologue
    .line 1890
    iput-object p1, p0, Lcom/sec/android/app/calculator/Calculator$5;->this$0:Lcom/sec/android/app/calculator/Calculator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/sec/android/app/calculator/Calculator$5;->this$0:Lcom/sec/android/app/calculator/Calculator;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/calculator/Calculator;->isDialogShow:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/calculator/Calculator;->access$702(Lcom/sec/android/app/calculator/Calculator;Z)Z

    .line 1895
    return-void
.end method
