.class Lcom/google/android/plus1/BasePlusOneWebSignupActivity$AuthHelperClient;
.super Ljava/lang/Object;
.source "BasePlusOneWebSignupActivity.java"

# interfaces
.implements Lcom/google/android/plus1/util/BrowserAuthenticationHelper$Client;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/plus1/BasePlusOneWebSignupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuthHelperClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$AuthHelperClient;->this$0:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;Lcom/google/android/plus1/BasePlusOneWebSignupActivity$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$AuthHelperClient;-><init>(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;)V

    return-void
.end method


# virtual methods
.method public finished(Landroid/net/Uri;Ljava/lang/Exception;)V
    .registers 5
    .parameter "uri"
    .parameter "exception"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$AuthHelperClient;->this$0:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->mNonConfigurationState:Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;
    invoke-static {v0, v1}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->access$202(Lcom/google/android/plus1/BasePlusOneWebSignupActivity;Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;)Lcom/google/android/plus1/BasePlusOneWebSignupActivity$NonConfigurationState;

    .line 166
    if-eqz p1, :cond_d

    .line 167
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$AuthHelperClient;->this$0:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/plus1/BasePlusOneWebSignupActivity;->startSignup(Landroid/net/Uri;)V

    .line 169
    :cond_d
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/plus1/BasePlusOneWebSignupActivity$AuthHelperClient;->this$0:Lcom/google/android/plus1/BasePlusOneWebSignupActivity;

    return-object v0
.end method
