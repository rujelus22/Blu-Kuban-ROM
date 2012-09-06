.class Lcom/google/android/apps/googlevoice/LoginActivity$15;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/googlevoice/LoginActivity;->onPrepareDialog(ILandroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/googlevoice/LoginActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/googlevoice/LoginActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/LoginActivity$15;->this$0:Lcom/google/android/apps/googlevoice/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 499
    if-eqz p2, :cond_7

    .line 500
    check-cast p1, Landroid/widget/EditText;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    .line 502
    :cond_7
    return-void
.end method
