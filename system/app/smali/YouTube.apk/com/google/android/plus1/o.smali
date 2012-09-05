.class final Lcom/google/android/plus1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/plus1/a/b;


# instance fields
.field final synthetic a:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/plus1/o;-><init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/plus1/o;->a:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public final a(Landroid/net/Uri;)V
    .registers 4
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/plus1/o;->a:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->a(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;Lcom/google/android/plus1/p;)Lcom/google/android/plus1/p;

    .line 166
    if-eqz p1, :cond_d

    .line 167
    iget-object v0, p0, Lcom/google/android/plus1/o;->a:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    invoke-virtual {v0}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->k()V

    .line 169
    :cond_d
    return-void
.end method
