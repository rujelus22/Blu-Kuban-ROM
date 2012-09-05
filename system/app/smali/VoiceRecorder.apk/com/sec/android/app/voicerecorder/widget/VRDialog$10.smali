.class final Lcom/sec/android/app/voicerecorder/widget/VRDialog$10;
.super Ljava/lang/Object;
.source "VRDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/widget/VRDialog;->createDefaultNameDialog(Landroid/app/Activity;Landroid/os/Handler;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 386
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialogInterface"
    .parameter "arg1"

    .prologue
    .line 390
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/voicerecorder/widget/VRDialog;->isShown:Z

    .line 392
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 393
    return-void
.end method
