.class final Lcom/google/android/youtube/app/honeycomb/phone/af;
.super Lcom/google/android/youtube/app/adapter/h;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/youtube/app/honeycomb/phone/t;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;)V
    .registers 2
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/google/android/youtube/app/honeycomb/phone/af;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-direct {p0}, Lcom/google/android/youtube/app/adapter/h;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/youtube/app/honeycomb/phone/t;B)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 500
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/honeycomb/phone/af;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/google/android/youtube/app/adapter/az;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 503
    new-instance v0, Lcom/google/android/youtube/app/honeycomb/phone/ad;

    iget-object v1, p0, Lcom/google/android/youtube/app/honeycomb/phone/af;->a:Lcom/google/android/youtube/app/honeycomb/phone/t;

    invoke-direct {v0, v1, p1}, Lcom/google/android/youtube/app/honeycomb/phone/ad;-><init>(Lcom/google/android/youtube/app/honeycomb/phone/t;Landroid/view/View;)V

    return-object v0
.end method
