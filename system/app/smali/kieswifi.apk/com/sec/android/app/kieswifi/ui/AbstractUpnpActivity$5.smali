.class Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$5;
.super Ljava/lang/Object;
.source "AbstractUpnpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$5;->this$0:Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;

    iput p2, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$5;->val$id:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$5;->this$0:Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;

    iget v1, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity$5;->val$id:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->dismissDialog(I)V

    .line 147
    return-void
.end method
