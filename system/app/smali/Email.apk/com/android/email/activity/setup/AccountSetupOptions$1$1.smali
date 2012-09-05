.class Lcom/android/email/activity/setup/AccountSetupOptions$1$1;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions$1;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSetupOptions$1;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions$1;)V
    .registers 2
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$1$1;->this$1:Lcom/android/email/activity/setup/AccountSetupOptions$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 471
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 472
    return-void
.end method
