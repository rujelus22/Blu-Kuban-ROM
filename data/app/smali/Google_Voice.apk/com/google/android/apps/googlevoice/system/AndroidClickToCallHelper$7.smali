.class Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$7;
.super Ljava/lang/Object;
.source "AndroidClickToCallHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;->createClickToCallSuccessDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper$7;->this$0:Lcom/google/android/apps/googlevoice/system/AndroidClickToCallHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 261
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 262
    return-void
.end method
