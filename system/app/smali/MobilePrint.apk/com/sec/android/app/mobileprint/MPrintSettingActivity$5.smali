.class Lcom/sec/android/app/mobileprint/MPrintSettingActivity$5;
.super Ljava/lang/Object;
.source "MPrintSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$5;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->finish()V

    .line 242
    return-void
.end method
