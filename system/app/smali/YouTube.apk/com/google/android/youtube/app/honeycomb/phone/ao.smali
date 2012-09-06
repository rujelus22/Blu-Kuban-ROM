.class final Lcom/google/android/youtube/app/honeycomb/phone/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/app/honeycomb/phone/by;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/ao;->a:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/ao;->a:Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;->b(Lcom/google/android/youtube/app/honeycomb/phone/HomeActivity;)Lcom/google/android/youtube/app/honeycomb/phone/t;

    move-result-object v0

    const-string v1, "CHANNEL_STORE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Ljava/lang/String;Z)V

    .line 438
    return-void
.end method
