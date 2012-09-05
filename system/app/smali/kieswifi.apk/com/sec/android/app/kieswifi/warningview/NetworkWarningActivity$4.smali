.class Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$4;
.super Ljava/lang/Object;
.source "NetworkWarningActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity$4;->this$0:Lcom/sec/android/app/kieswifi/warningview/NetworkWarningActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 162
    const/16 v0, 0x54

    if-eq p2, v0, :cond_8

    const/16 v0, 0x52

    if-ne p2, v0, :cond_a

    .line 163
    :cond_8
    const/4 v0, 0x1

    .line 165
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
