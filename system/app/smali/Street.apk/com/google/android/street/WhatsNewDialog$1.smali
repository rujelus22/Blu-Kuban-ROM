.class Lcom/google/android/street/WhatsNewDialog$1;
.super Ljava/lang/Object;
.source "WhatsNewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/street/WhatsNewDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/street/WhatsNewDialog;


# direct methods
.method constructor <init>(Lcom/google/android/street/WhatsNewDialog;)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/street/WhatsNewDialog$1;->this$0:Lcom/google/android/street/WhatsNewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/street/WhatsNewDialog$1;->this$0:Lcom/google/android/street/WhatsNewDialog;

    #calls: Lcom/google/android/street/WhatsNewDialog;->onOkClick()V
    invoke-static {v0}, Lcom/google/android/street/WhatsNewDialog;->access$000(Lcom/google/android/street/WhatsNewDialog;)V

    .line 110
    return-void
.end method
