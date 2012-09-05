.class Lcom/sec/android/app/kieswifi/ui/ConnectActivity$7;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$7;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    iput p2, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$7;->val$id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$7;->this$0:Lcom/sec/android/app/kieswifi/ui/ConnectActivity;

    iget v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$7;->val$id:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->dismissDialog(I)V

    .line 477
    return-void
.end method
