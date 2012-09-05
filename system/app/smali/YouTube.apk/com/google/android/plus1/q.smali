.class final Lcom/google/android/plus1/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;


# direct methods
.method constructor <init>(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/plus1/q;->a:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/plus1/q;->a:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    invoke-static {v0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->a(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 83
    iget-object v0, p0, Lcom/google/android/plus1/q;->a:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->a(Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;Z)Z

    .line 84
    iget-object v0, p0, Lcom/google/android/plus1/q;->a:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->j()V

    .line 85
    iget-object v0, p0, Lcom/google/android/plus1/q;->a:Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneWebViewSignupActivity;->m()V

    .line 87
    :cond_18
    return-void
.end method
