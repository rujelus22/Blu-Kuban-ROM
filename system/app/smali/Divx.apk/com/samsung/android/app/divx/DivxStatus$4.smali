.class Lcom/samsung/android/app/divx/DivxStatus$4;
.super Ljava/lang/Object;
.source "DivxStatus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/divx/DivxStatus;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/divx/DivxStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/divx/DivxStatus;)V
    .registers 2
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/samsung/android/app/divx/DivxStatus$4;->this$0:Lcom/samsung/android/app/divx/DivxStatus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/divx/DivxStatus$4;->this$0:Lcom/samsung/android/app/divx/DivxStatus;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/app/divx/DivxStatus$4;->this$0:Lcom/samsung/android/app/divx/DivxStatus;

    const-class v3, Lcom/samsung/android/app/divx/DivxDeRegistration;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/divx/DivxStatus;->startActivity(Landroid/content/Intent;)V

    .line 116
    return-void
.end method
