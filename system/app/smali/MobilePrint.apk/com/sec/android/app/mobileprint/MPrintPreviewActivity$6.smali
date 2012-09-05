.class Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$6;
.super Ljava/lang/Object;
.source "MPrintPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$6;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$6;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->finish()V

    .line 529
    return-void
.end method
