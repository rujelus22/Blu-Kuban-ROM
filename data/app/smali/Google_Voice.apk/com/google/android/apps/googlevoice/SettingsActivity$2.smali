.class Lcom/google/android/apps/googlevoice/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/SettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/SettingsActivity$2;->this$0:Lcom/google/android/apps/googlevoice/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 219
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 220
    return-void
.end method
