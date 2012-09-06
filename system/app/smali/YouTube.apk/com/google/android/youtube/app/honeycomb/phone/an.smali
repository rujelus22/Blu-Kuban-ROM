.class final Lcom/google/android/youtube/app/honeycomb/phone/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/bc;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/an;->a:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/youtube/core/model/UserAuth;)V
    .registers 2
    .parameter

    .prologue
    .line 344
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 3
    .parameter

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/an;->a:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(Ljava/lang/Exception;)V

    .line 353
    return-void
.end method

.method public final e_()V
    .registers 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/an;->a:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_signed_out"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 349
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/an;->a:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->e_()V

    .line 350
    return-void
.end method
