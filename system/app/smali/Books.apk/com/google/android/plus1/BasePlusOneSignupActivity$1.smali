.class Lcom/google/android/plus1/BasePlusOneSignupActivity$1;
.super Ljava/lang/Object;
.source "BasePlusOneSignupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/BasePlusOneSignupActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/plus1/BasePlusOneSignupActivity;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/BasePlusOneSignupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneSignupActivity$1;->this$0:Lcom/google/android/plus1/BasePlusOneSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneSignupActivity$1;->this$0:Lcom/google/android/plus1/BasePlusOneSignupActivity;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->onCancelClicked()V

    .line 116
    return-void
.end method
