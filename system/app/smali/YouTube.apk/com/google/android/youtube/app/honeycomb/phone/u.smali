.class final Lcom/google/android/youtube/app/honeycomb/phone/u;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/t;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/u;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter

    .prologue
    .line 145
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/u;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v1}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/app/honeycomb/phone/ah;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/android/youtube/app/honeycomb/phone/ah;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 147
    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/u;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v1, v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->a(Lcom/google/android/youtube/app/honeycomb/phone/t;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/google/android/youtube/app/honeycomb/phone/u;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-static {v0}, Lcom/google/android/youtube/app/honeycomb/phone/t;->b(Lcom/google/android/youtube/app/honeycomb/phone/t;)Lcom/google/android/youtube/app/adapter/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/app/adapter/ba;->notifyDataSetChanged()V

    .line 150
    :cond_1f
    return-void
.end method
