.class final Lcom/google/android/youtube/app/honeycomb/phone/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/ui/ce;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bu;->a:Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bu;->a:Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->a(Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bu;->a:Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bu;->a:Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/util/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bu;->a:Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/bu;->a:Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/youtube/app/m;->S:Lcom/google/android/youtube/core/b/aj;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/youtube/app/a;->a(Ljava/lang/String;ZLcom/google/android/youtube/core/b/aj;)V

    .line 63
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bu;->a:Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->finish()V

    .line 64
    return-void

    .line 60
    :cond_34
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/bu;->a:Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/honeycomb/phone/ScreenPairingActivity;->t()Lcom/google/android/youtube/app/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/youtube/app/a;->a()V

    goto :goto_2e
.end method
