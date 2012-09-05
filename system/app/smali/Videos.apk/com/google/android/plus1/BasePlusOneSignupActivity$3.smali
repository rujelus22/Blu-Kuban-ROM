.class Lcom/google/android/plus1/BasePlusOneSignupActivity$3;
.super Ljava/lang/Object;
.source "BasePlusOneSignupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 79
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneSignupActivity$3;->this$0:Lcom/google/android/plus1/BasePlusOneSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneSignupActivity$3;->this$0:Lcom/google/android/plus1/BasePlusOneSignupActivity;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->onSignupClicked()V

    .line 82
    return-void
.end method
