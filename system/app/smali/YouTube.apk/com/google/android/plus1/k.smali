.class final Lcom/google/android/plus1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/BasePlusOneSignupActivity;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/BasePlusOneSignupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/plus1/k;->a:Lcom/google/android/plus1/BasePlusOneSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/plus1/k;->a:Lcom/google/android/plus1/BasePlusOneSignupActivity;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneSignupActivity;->c()V

    .line 106
    return-void
.end method
