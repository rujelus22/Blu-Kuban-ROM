.class Lcom/google/android/plus1/BasePlusOneWebSignupActivity$1;
.super Ljava/lang/Object;
.source "BasePlusOneWebSignupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$1;->this$0:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter "dialog"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$1;->this$0:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->onCancelClicked()V

    .line 117
    return-void
.end method
