.class final Lcom/google/android/youtube/app/honeycomb/phone/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/utils/l;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/q;->a:Lcom/google/android/youtube/app/honeycomb/phone/LiveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 59
    check-cast p1, Lcom/google/android/youtube/core/model/LiveEvent;

    invoke-virtual {p1}, Lcom/google/android/youtube/core/model/LiveEvent;->isLiveNow()Z

    move-result v0

    return v0
.end method
