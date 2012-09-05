.class Lcom/samsung/android/app/divx/DivxStatus$3;
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
    .line 118
    iput-object p1, p0, Lcom/samsung/android/app/divx/DivxStatus$3;->this$0:Lcom/samsung/android/app/divx/DivxStatus;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/divx/DivxStatus$3;->this$0:Lcom/samsung/android/app/divx/DivxStatus;

    invoke-virtual {v0}, Lcom/samsung/android/app/divx/DivxStatus;->finish()V

    .line 122
    return-void
.end method
