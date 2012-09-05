.class Lcom/sec/android/app/kieswifi/ui/KiesLauncher$1;
.super Ljava/lang/Object;
.source "KiesLauncher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;


# direct methods
.method constructor <init>(Lcom/sec/android/app/kieswifi/ui/KiesLauncher;)V
    .registers 2
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$1;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 101
    const/4 v0, 0x4

    if-ne p2, v0, :cond_10

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$1;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    const/16 v1, 0x44d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->dismissDialog(I)V

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/KiesLauncher$1;->this$0:Lcom/sec/android/app/kieswifi/ui/KiesLauncher;

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/ui/KiesLauncher;->finish()V

    .line 107
    :cond_10
    return v2
.end method
