.class Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$2;
.super Ljava/lang/Object;
.source "MPrintSettingSplitActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$2;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$2;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->finish()V

    .line 127
    return-void
.end method
