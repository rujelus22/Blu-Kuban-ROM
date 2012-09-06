.class final Lcom/google/android/plus1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/a/b;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/plus1/o;->a:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/google/android/plus1/o;-><init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/plus1/o;->a:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    return-object v0
.end method

.method public final a(Landroid/net/Uri;Ljava/lang/Exception;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/plus1/o;->a:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->a(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;Lcom/google/android/plus1/p;)Lcom/google/android/plus1/p;

    .line 165
    if-eqz p1, :cond_e

    .line 166
    iget-object v0, p0, Lcom/google/android/plus1/o;->a:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->k()V

    .line 171
    :cond_d
    :goto_d
    return-void

    .line 167
    :cond_e
    if-eqz p2, :cond_d

    .line 168
    iget-object v0, p0, Lcom/google/android/plus1/o;->a:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->j()V

    .line 169
    iget-object v0, p0, Lcom/google/android/plus1/o;->a:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->finish()V

    goto :goto_d
.end method
