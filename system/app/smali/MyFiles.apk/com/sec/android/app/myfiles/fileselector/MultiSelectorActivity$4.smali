.class Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$4;
.super Ljava/lang/Object;
.source "MultiSelectorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 546
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity$4;->this$0:Lcom/sec/android/app/myfiles/fileselector/MultiSelectorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 548
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 549
    return-void
.end method
