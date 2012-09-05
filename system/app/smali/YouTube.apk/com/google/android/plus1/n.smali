.class final Lcom/google/android/plus1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/plus1/n;->a:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/plus1/n;->a:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->d()V

    .line 117
    return-void
.end method
