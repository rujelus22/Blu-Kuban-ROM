.class final Lcom/google/android/plus1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/BasePlusOneSignupActivity;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/BasePlusOneSignupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/plus1/i;->a:Lcom/google/android/plus1/BasePlusOneSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/plus1/i;->a:Lcom/google/android/plus1/BasePlusOneSignupActivity;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->d()V

    .line 116
    return-void
.end method
